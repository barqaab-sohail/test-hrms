<?php

namespace App\Http\Controllers\Cv;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\gender;
use App\models\cv\cv_detail;
use App\models\cv\cv_skill;
use App\models\cv\cv_phone;
use App\models\cv\cv_contact;
use App\models\cv\cv_attachment;
use App\models\cv\cv_specialization;
use App\models\cv\cv_experience;
use App\models\cv\cv_discipline;
use App\models\cv\cv_stage;
use App\country;
use App\models\common\hr_education;
use App\models\common\state;
use App\models\common\city;
use App\models\cv\cv_membership;
use App\Helper\DocxConversion;
use Spatie\PdfToText\Pdf;
use App\Http\Requests\cv\cvStore;
use App\Http\Requests\cv\cvEditStore;
use DB;
use Storage;
use App\sessions;

class UploadCvController extends Controller
{
    
	public function create(){
		session()->put('cv_id', '');
		$genders = gender::all();
		$specializations = cv_specialization::all();
		$degrees = hr_education::all();
		$countries = country::all();
		$disciplines = cv_discipline::all();
		$stages = cv_stage::all();
		$memberships = cv_membership::all();
		$today = \Carbon\Carbon::today();

		//return view ('bio-data.test',compact('genders'));
		return view ('cv.uploadCv',compact('genders','specializations','degrees','disciplines','stages','memberships','countries','today'));
	}
	public function getStates($id)
	{
    
    $states = DB::table("states")
                ->where("country_id",$id)
                ->pluck("name","id");
    
    return response()->json($states);
	}

	public function getCities($id)
	{
    
    $cities = DB::table("cities")
                ->where("state_id",$id)
                ->pluck("name","id");
    
    return response()->json($cities);
	}


	public function store(cvStore $request){
		
		$input = $request->only('full_name','father_name','cnic','foreign_experience','donor_experience','barqaab_employment','comments');
		 if($request->filled('date_of_birth')){
            $input ['date_of_birth']= \Carbon\Carbon::parse($request->date_of_birth)->format('Y-m-d');
            }
         if($request->filled('job_starting_date')){
            $input ['job_starting_date']= \Carbon\Carbon::parse($request->job_starting_date)->format('Y-m-d');
            }
         if($request->filled('cv_submission_date')){
            $input ['cv_submission_date']= \Carbon\Carbon::parse($request->cv_submission_date)->format('Y-m-d');
            }


        //start transaction
		DB::transaction(function () use ($request, $input) {   
		
		//add cv detail
		$cv_id=cv_detail::create($input);


		//add skill
		foreach ($request->input('skill')as $skill){
			cv_skill::create([
				'cv_detail_id'=> $cv_id->id,
				'skill_name'=> $skill
				]);
		}
		//add education
			for ($i=0;$i<count($request->input('degree_name'));$i++){
			$educationId = $request->input("degree_name.$i");
			$instituteId = $request->input("institute.$i");
			$passingYear = $request->input("passing_year.$i");
			
			$cv_id->hr_education()->attach($educationId, ['institute'=>$instituteId, 'passing_year'=>$passingYear]);
			}

			
		//add specialization
			for ($i=0;$i<count($request->input('speciality_name'));$i++){
			$speciality['cv_specialization_id'] = $request->input("speciality_name.$i");
			$speciality['cv_discipline_id'] = $request->input("discipline_name.$i");
			$speciality['cv_stage_id'] = $request->input("stage_name.$i");
			$speciality['cv_detail_id']=$cv_id->id;
			$speciality['year'] = $request->input("year.$i");
			cv_experience::create($speciality);
			}

		//add membership
			for ($i=0;$i<count($request->input('membership_name'));$i++){
			$membershipId = $request->input("membership_name.$i");
			$numberId = $request->input("membership_number.$i");
			$cv_id->cv_membership()->attach($membershipId, ['membership_number'=>$numberId]);			
			}

		//add contact
			$contact = $request->only('address','city_id','state_id','country_id','email');
			$contact['cv_detail_id'] = $cv_id->id;
			$contact = cv_contact::create($contact);
		
		//add phone	
			for ($i=0;$i<count($request->input('phone'));$i++){
			$phone['phone']= $request->input("phone.$i");
			$phone['cv_contact_id'] = $contact->id;
			cv_phone::create($phone);		
			}


		//add attachment
				$extension = request()->cv->getClientOriginalExtension();
				$fileName =request()->full_name.'-'. time().'.'.$extension;
				$folderName = "cv/".$cv_id->id.'-'.request()->full_name."/";
				//store file
				$request->file('cv')->storeAs('public/'.$folderName,$fileName);
				
				$file_path = storage_path('app/public/'.$folderName.$fileName);
			
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
				$attachment['size']=$request->file('cv')->getSize();
				$attachment['path']=$folderName;
				$attachment['extension']=$extension;
				$attachment['cv_detail_id']=$cv_id->id;

			cv_attachment::create($attachment);


		});  //end transaction

		return 'OK';

		//back()->with('success', 'Data successfully saved');
				
	}

	public function index (){
       $cvs = cv_detail::with('cv_contact')->get();
       
        return view('cv.listOfCvs', compact('cvs'));

    }

    public function edit($id){
        session()->put('cv_id', $id);
        $genders = gender::all();
		$specializations = cv_specialization::all();
		$degrees = hr_education::all();
		$disciplines = cv_discipline::all();
		$stages = cv_stage::all();
		$memberships = cv_membership::all();

		$countries = country::all();
		$today = \Carbon\Carbon::today();
		$cvId = cv_detail::find($id);
		$states = state::where('country_id', $cvId->cv_contact->country_id)->get();
		$cities = city::where('state_id', $cvId->cv_contact->state_id)->get();

        return view ('cv.editUploadCv',compact('genders','specializations','degrees','disciplines','stages','memberships','countries','states','cities','today','cvId'));
    }

    public function update(cvEditStore $request, $id){

	    	$input = $request->only('full_name','father_name','cnic','foreign_experience','donor_experience','barqaab_employment','comments');
			 if($request->filled('date_of_birth')){
	            $input ['date_of_birth']= \Carbon\Carbon::parse($request->date_of_birth)->format('Y-m-d');
	            }
	         if($request->filled('job_starting_date')){
	            $input ['job_starting_date']= \Carbon\Carbon::parse($request->job_starting_date)->format('Y-m-d');
	            }
	         if($request->filled('cv_submission_date')){
	            $input ['cv_submission_date']= \Carbon\Carbon::parse($request->cv_submission_date)->format('Y-m-d');
	            }
	     //start transaction
	    DB::transaction(function () use ($request, $input, $id) {  

	    	//update cv Detail
	    	cv_detail::findOrFail($id)->update($input);

	    	//update Contact
			$contact = $request->only('address','city_id','state_id','country_id','email');
			$contact['cv_detail_id'] = $id;
			$contactId = cv_contact::where('cv_detail_id',$id)->first();
			
			cv_contact::findOrFail($contactId->id)->update($contact);


	    	//update phone	
	    	if(count($request->input('phone'))==cv_phone::where('cv_contact_id',$id)->count())
	    	{
		    	foreach($request->input('phone') as $num){
		    		
		    		foreach ($num as $key =>$phone){
		    		
		    		$data ['phone'] = $phone;
		    		$data['cv_contact_id'] = $contactId->id;
		    		$key=trim($key,"'");

					cv_phone::findOrFail($key)->update($data);
					
					}
		    	}
		    }else{
		    	cv_phone::where('cv_contact_id',$id)->delete();
			    	foreach($request->input('phone') as $num){
			    		foreach ($num as $key =>$phone){
			    		$key=trim($key,"'");
			    		$data ['phone'] = $phone;
			    		$data['cv_contact_id'] = $contactId->id;
						cv_phone::create($data);
						}
			    	}

			}

			//Update membership
			$cv_id= cv_detail::find($id);
			$cv_id->cv_membership()->detach();	
			if ($request->filled('membership_name')){
				for ($i=0;$i<count($request->input('membership_name'));$i++){
				$membershipId = $request->input("membership_name.$i");
				$numberId = $request->input("membership_number.$i");
				$cv_id->cv_membership()->attach($membershipId, ['membership_number'=>$numberId]);			
				}
			}

			//Update specialization
			if(count($request->input('speciality_name'))==cv_experience::where('cv_detail_id',$id)->count())
	    	{
		    	for ($i=0;$i<count($request->input('speciality_name'));$i++){
				$speciality['cv_specialization_id'] = $request->input("speciality_name.$i");
				$speciality['cv_discipline_id'] = $request->input("discipline_name.$i");
				$speciality['cv_stage_id'] = $request->input("stage_name.$i");
				$speciality['cv_detail_id']=$id;
				$speciality['year'] = $request->input("year.$i");
				$specialityId = cv_experience::where('cv_detail_id',$id)->get();
					foreach($specialityId as $key => $s){
						
						if($i == $key){
							
							cv_experience::findOrFail($s->id)->update($speciality);
						}
					}
				}	
		    }else{
		    	cv_experience::where('cv_detail_id',$id)->delete();
			    	for ($i=0;$i<count($request->input('speciality_name'));$i++){
					$speciality['cv_specialization_id'] = $request->input("speciality_name.$i");
					$speciality['cv_discipline_id'] = $request->input("discipline_name.$i");
					$speciality['cv_stage_id'] = $request->input("stage_name.$i");
					$speciality['cv_detail_id']=$id;
					$speciality['year'] = $request->input("year.$i");
					cv_experience::create($speciality);
					}

			}

			//update education
			$cv_id->hr_education()->detach();
			
			for ($i=0;$i<count($request->input('degree_name'));$i++){
			$educationId = $request->input("degree_name.$i");
			$instituteId = $request->input("institute.$i");
			$passingYear = $request->input("passing_year.$i");
			
			$cv_id->hr_education()->attach($educationId, ['institute'=>$instituteId, 'passing_year'=>$passingYear]);
			}
			
			//update skill	
	    	if(count($request->input('skill_name'))==cv_skill::where('cv_detail_id',$id)->count())
	    	{
		    	foreach($request->input('skill_name') as $num){
		    		foreach ($num as $key =>$skill){
		    		$data ['skill_name'] = $skill;
		    		$data ['cv_detail_id'] = $id;
		    		$key=trim($key,"'");
					cv_skill::findOrFail($key)->update($data);
					
					}
		    	}
		    }else{
		    	cv_skill::where('cv_detail_id',$id)->delete();
			    	foreach($request->input('skill_name') as $num){
			    		foreach ($num as $key =>$skill){
			    		$data ['skill_name'] = $skill;
			    		$data ['cv_detail_id'] = $id;
						cv_skill::create($data);
						}
			    	}
			}

			//add attachment

			if ($request->hasFile('cv')){
				
				$extension = request()->cv->getClientOriginalExtension();
				$fileName =request()->full_name.'-'. time().'.'.$extension;
				
				$path= $cv_id->cv_attachment->first()->path;
				
				//store file
				$request->file('cv')->storeAs('public/'.$path,$fileName);
				
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
				$attachment['size']=$request->file('cv')->getSize();
				//$attachment['path']=$file_path;
				$attachment['extension']=$extension;
				$attachment['cv_detail_id']=$cv_id->id;

				
				$oldFileName= $cv_id->cv_attachment->first()->file_name;
				
				$attachment_id = $cv_id->cv_attachment->first()->id;
				
				cv_attachment::findOrFail($attachment_id)->update($attachment);

				if(Storage::exists('public/'.$path.$oldFileName)){
				unlink(storage_path('app/public/'.$path.$oldFileName));
				}
			}



		});	//end transaction
		$ccc = count($request->input('phone'));
    	return 'OK';
    	//back()->with('success', 'Data successfully updated');

    }

     public function destroy($id)
    {
    
    cv_detail::findOrFail($id)->delete(); 
    return back()->with('success', 'Data successfully deleted');
   
    }





}
