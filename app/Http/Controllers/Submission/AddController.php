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



class AddController extends Controller 
{
    public function create(){
		session()->put('submission_id', '');
		$types = sub_type::all();
		$contractTypes = sub_contract_type::all();
		

		return view ('submission.submission',compact('types','contractTypes'));
	}

	public function store(Request $request){

		$input = $request->only('project_name','submission_time','submission_address','scope_of_services','scope_of_work','comments','sub_type_id','sub_contract_type_id');
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
    	
    	$types = sub_type::all();
		$contractTypes = sub_contract_type::all();
		$data = submission::find($id);
		
		return view ('submission.editSubmission',compact('types','contractTypes','data'));


    }


}
