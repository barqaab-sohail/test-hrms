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
use App\models\cv\cv_field;
use App\models\cv\cv_education;
use App\models\cv\cv_membership;
use App\Helper\DocxConversion;
use Spatie\PdfToText\Pdf;
use App\Http\Requests\cv\cvStore;
use DB;

class UploadCvController extends Controller
{
    
	public function create(){

		$genders = gender::all();
		$specializations = cv_specialization::all();
		$degrees = cv_education::all();
		$fields = cv_field::all();
		$memberships = cv_membership::all();

		//return view ('bio-data.test',compact('genders'));
		return view ('cv.uploadCv',compact('genders','specializations','degrees','fields','memberships'));
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
			
			$cv_id->cv_education()->attach($educationId, ['institute'=>$instituteId, 'passing_year'=>$passingYear]);
			}

			
		//add specialization
			for ($i=0;$i<count($request->input('speciality_name'));$i++){
			$specialityId = $request->input("speciality_name.$i");
			$fieldId = $request->input("field_name.$i");
			$year = $request->input("year.$i");
			$specialization_id = cv_specialization::find($specialityId);

			$cv_id->cv_specialization()->attach($specialityId, ['year'=>$year]);
			
			$specialization_id->cv_field()->attach($fieldId, ['year'=>$year]);
			}

		//add membership
			for ($i=0;$i<count($request->input('membership_name'));$i++){
			$membershipId = $request->input("membership_name.$i");
			$numberId = $request->input("number.$i");
			$cv_id->cv_membership()->attach($membershipId, ['membership_number'=>$numberId]);			
			}

		//add address
			$address = $request->only('address','city','province','country','email');
			$address['cv_detail_id'] = $cv_id->id;
			cv_contact::create($address);
		
		//add phone	
			for ($i=0;$i<count($request->input('phone'));$i++){
			$phone['phone']= $request->input("phone.$i");
			$phone['cv_detail_id'] = $cv_id->id;
			cv_phone::create($phone);		
			}


		//add attachment
				$extension = request()->cv->getClientOriginalExtension();
				$fileName =request()->full_name.'-'.request()->cnic.'-'. time().'.'.$extension;
				$request->file('cv')->storeAs('public/cv',$fileName);
				$file_path = storage_path('app/public/cv/'.$fileName);	
				$attachment['content']='';
											
					if (($extension == 'doc')||($extension == 'docx')){
						$text = new DocxConversion($file_path);
						$attachment['content']=mb_strtolower($text->convertToText());
					}else if ($extension =='pdf'){
						$reader = new \Asika\Pdf2text;
						$attachment['content'] = $reader->decode($file_path);
					}

				$attachment['document_name']='Original CV';
				$attachment['file_name']=$fileName;
				$attachment['size']=$request->file('cv')->getSize();
				$attachment['path']=$file_path;
				$attachment['extension']=$extension;
				$attachment['cv_detail_id']=$cv_id->id;

			cv_attachment::create($attachment);


		});  //end transaction

		return back()->with('success', 'Data successfully saved');
				
	}

	public function index (){
       $cvs = cv_detail::with('cv_phone','cv_contact')->get();
       
        return view('cv.listOfCvs', compact('cvs'));

    }

    public function edit($id){
        $genders = gender::all();
		$specializations = cv_specialization::all();
		$degrees = cv_education::all();
		$fields = cv_field::all();
		$memberships = cv_membership::all();
		$cvId = cv_detail::find($id);

		// // // //dd($cvId->cv_phone->first()->phone);dd
		// foreach($cvId->cv_specialization as $key => $speciality){
		// // 	//echo $speciality->specialization_name;
		// // 	//dd($speciality);
		// 	foreach($speciality->cv_field as $key1 => $cv_field){
				
		// 		dd($cv_field->getOriginal('pivot_year'));
		// 		// if($key==$key1){
		// 		// echo $cv_field->field_name.'<br>';
		// 		// }
		// 	}

			
		// }
		// dd();
        return view ('cv.editUploadCv',compact('genders','specializations','degrees','fields','memberships','cvId'));
    }

    public function update(cvStore $request, $id){

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

	    	//update address
			$address = $request->only('address','city','province','country','email');
			$address['cv_detail_id'] = $id;
			$addressId = cv_contact::where('cv_detail_id',$id)->first();
			
			cv_contact::findOrFail($addressId->id)->update($address);


	    	//update phone	
	    	if(count($request->input('phone'))==cv_phone::where('cv_detail_id',$id)->count())
	    	{
		    	foreach($request->input('phone') as $num){
		    		foreach ($num as $key =>$phone){
		    		
		    		$data ['phone'] = $phone;
		    		$data ['cv_detail_id'] = $id;
		    		$key=trim($key,"'");
					cv_phone::findOrFail($key)->update($data);
					
					}
		    	}
		    }else{
		    	cv_phone::where('cv_detail_id',$id)->delete();
			    	foreach($request->input('phone') as $num){
			    		foreach ($num as $key =>$phone){
			    		$key=trim($key,"'");
			    		$data ['phone'] = $phone;
			    		$data ['cv_detail_id'] = $id;
						cv_phone::create($data);
						}
			    	}

			}

			//add membership
			$cv_id= cv_detail::find($id);
			$cv_id->cv_membership()->detach( $request->input("membership_name"));	
			for ($i=0;$i<count($request->input('membership_name'));$i++){
			$membershipId = $request->input("membership_name.$i");
			$numberId = $request->input("number.$i");
			$cv_id->cv_membership()->attach($membershipId, ['membership_number'=>$numberId]);			
			}

			//edit specialization
			// $cv_id->cv_specialization()->detach($request->input("speciality_name"));
			// for ($i=0;$i<count($request->input('speciality_name'));$i++){
			// $specialityId = $request->input("speciality_name.$i");
			// $fieldId = $request->input("field_name.$i");
			// $year = $request->input("year.$i");
			// $specialization_id = cv_specialization::find($specialityId);

			// $cv_id->cv_specialization()->attach($specialityId, ['year'=>$year]);
			
			// $specialization_id->cv_field()->attach($fieldId, ['year'=>$year]);
			// }
			
		 





		});	//end transaction

    	return back()->with('success', 'Data successfully updated');


    }





}
