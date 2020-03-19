<?php

namespace App\Http\Controllers\Submission;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\submission\submission;
use App\models\submission\sub_client;
use App\models\submission\sub_attachment;
use App\models\submission\sub_client_address;
use App\models\submission\sub_type;
use App\models\submission\sub_contract_type;
use DB;
use App\sessions;
use App\Helper\DocxConversion;
use Spatie\PdfToText\Pdf;
use Illuminate\Support\Facades\Storage;



class AddController extends Controller 
{
    public function create(){
		session()->put('submission_id', '');
		$types = sub_type::all();
		$contractTypes = sub_contract_type::all();
		
		return view ('submission.submission',compact('types','contractTypes'));
	}

	public function store(Request $request){

		$input = $request->only('project_name','submission_time','submission_address','scope_of_services','scope_of_work','comments','total_marks','evaluation_ratio','sub_type_id','sub_contract_type_id');
		 if($request->filled('submission_date')){
            $input ['submission_date']= \Carbon\Carbon::parse($request->submission_date)->format('Y-m-d');
            }

        //start transaction
		DB::transaction(function () use ($request, $input) {   
			
			//Store Submission
			$submission=submission::create($input);
			

			//add Client
			$client = $request->only('client_name','authorize_person','designation');
			$client['submission_id'] = $submission->id;
			$subClient=sub_client::create($client);
			
			//add Client Contact
			$clientAddress = $request->only('address','phone','fax','mobile','email');
			$clientAddress['sub_client_id'] = $subClient->id;
			sub_client_address::create($clientAddress);

			//add attachment
				$extension = request()->attachment->getClientOriginalExtension();
				$fileName =request()->project_name.'-'. time().'.'.$extension;
				$folderName = "submission/".$submission->id.'-'.request()->project_name."/";
				//store file
				$request->file('attachment')->storeAs('public/'.$folderName,$fileName);
				
				$file_path = storage_path('app/public/'.$folderName.$fileName);
			
				$attachment['content']='';
											
					if (($extension == 'doc')||($extension == 'docx')){
						$text = new DocxConversion($file_path);
						$attachment['content']=mb_strtolower($text->convertToText());
					}else if ($extension =='pdf'){
						$reader = new \Asika\Pdf2text;
						$attachment['content'] = mb_strtolower($reader->decode($file_path));
					}

				$attachment['document_name']='Client Document';
				$attachment['file_name']=$fileName;
				$attachment['size']=$request->file('attachment')->getSize();
				$attachment['path']=$folderName;
				$attachment['extension']=$extension;
				$attachment['submission_id']=$submission->id;

			sub_attachment::create($attachment);


		});  //end transaction

		return back()->with('success', 'Data successfully saved');

	}

	public function index (){

       $submissions = submission::with('sub_client','sub_type')->get();
       
        return view('submission.listOfSubmissions', compact('submissions'));

    }


    public function edit ($id){	
    	session()->put('submission_id', $id);
    	$types = sub_type::all();
		$contractTypes = sub_contract_type::all();
		$submission = submission::find($id);
		
		return view ('submission.editSubmission',compact('types','contractTypes','submission'));
    }

    public function update(Request $request, $id){

    	$input = $request->only('project_name','submission_time','submission_address','scope_of_services','scope_of_work','comments','total_marks','evaluation_ratio','sub_type_id','sub_contract_type_id');
		 if($request->filled('submission_date')){
            $input ['submission_date']= \Carbon\Carbon::parse($request->submission_date)->format('Y-m-d');
            }

        //start transaction
		DB::transaction(function () use ($request, $input, $id) {   
			$submission = submission::find($id);
			submission::findOrFail($id)->update($input);

			//update Client Detail
			$client = $request->only('client_name','authorize_person','designation');
			$client['submission_id'] = $id;
			$clientId = sub_client::where('submission_id', $id)->first()->id;
			sub_client::findOrFail($clientId)->update($client);

			//Update Client Contact
			$clientAddress = $request->only('address','phone','fax','mobile','email');
			$clientAddress['sub_client_id'] = $id;
			sub_client_address::findOrFail($submission->sub_client_address->id)->update($clientAddress);

			if ($request->hasFile('attachment')){
				
				
				$extension = request()->attachment->getClientOriginalExtension();
				$fileName =request()->project_name.'-'. time().'.'.$extension;
				
				$path= $submission->sub_attachment->first()->path;
				
				//store file
				$request->file('attachment')->storeAs('public/'.$path,$fileName);
				
				$file_path = storage_path('app/public/'.$path.$fileName);



				$attachment['content']='';
											
					if (($extension == 'doc')||($extension == 'docx')){
						$text = new DocxConversion($file_path);
						$attachment['content']=mb_strtolower($text->convertToText());
						
					}else if ($extension =='pdf'){
						$reader = new \Asika\Pdf2text;
						$attachment['content'] = mb_strtolower($reader->decode($file_path));

					}

				$attachment['document_name']='Original CV';
				$attachment['file_name']=$fileName;
				$attachment['size']=$request->file('attachment')->getSize();
				$attachment['extension']=$extension;
				$attachment['submission_id']=$id;

				
				$oldFileName= $submission->sub_attachment->first()->file_name;
				
				$attachment_id = $submission->sub_attachment->first()->id;
				
				sub_attachment::findOrFail($attachment_id)->update($attachment);
				
				if(Storage::exists('public/'.$path.$oldFileName)){
				unlink(storage_path('app/public/'.$path.$oldFileName));
				}
			}

		});  //end transaction

		return back()->with('success', 'Data successfully updated');

    }

     public function destroy($id)
    {
    
    submission::findOrFail($id)->delete(); 
    return back()->with('success', 'Data successfully deleted');
   
    }


}
