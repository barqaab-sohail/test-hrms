<?php

namespace App\Http\Controllers\Cv;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\gender;
use App\models\cv\cv_detail;
use App\models\cv\cv_skill;
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
		//dd($request);

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
		//dd($request);
		$cv_id=cv_detail::create($input);

		//dd($cv_id->id);
		foreach ($request->input('skill')as $skill){
			cv_skill::create([
				'cv_detail_id'=> $cv_id->id,
				'skill_name'=> $skill
				]);
		}
		//add education
		//dd(count($request->input('degree_name')));
			for ($i=0;$i<count($request->input('degree_name'));$i++){
			$educationId = $request->input("degree_name.$i");
			$instituteId = $request->input("institute.$i");
			$passingYear = $request->input("passing_year.$i");

			//dd($educationId);
			$cv_id->cv_education()->attach($educationId, ['institute'=>$instituteId, 'passing_year'=>$passingYear]);
			}

		
		});  //end transaction

		dd();



		//upload file
		$extension = request()->cv->getClientOriginalExtension();

		$fileName =request()->full_name.'-'. time().'.'.$extension;
		$request->file('cv')->storeAs('public/cv',$fileName);
		$file_path = storage_path('app/public/cv/'.$fileName);	
		$input['content']='';
		
		//$extension = request()->cv->getClientOriginalExtension();
		
			if (($extension == 'doc')||($extension == 'docx')){
				$text = new DocxConversion($file_path);
				$input['content']=$text->convertToText();
			}else if ($extension =='pdf'){
				$reader = new \Asika\Pdf2text;
				$input['content'] = $reader->decode($file_path);
			}

		$input['name']=$fileName;
		$input['path']=$file_path;
		$input['extension']=$extension;

		return back()->with('success', 'Data successfully saved.');
				
	}


}
