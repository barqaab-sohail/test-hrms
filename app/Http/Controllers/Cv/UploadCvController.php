<?php

namespace App\Http\Controllers\Cv;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\gender;
use App\models\cv\cv_specialization;
use App\models\cv\cv_education;
use App\Helper\DocxConversion;
use Spatie\PdfToText\Pdf;
use App\Http\Requests\cv\cvStore;

class UploadCvController extends Controller
{
    
	public function create(){

		$genders = gender::all();
		$specializations = cv_specialization::all();
		$degrees = cv_education::all();

		//return view ('bio-data.test',compact('genders'));
		return view ('cv.uploadCv',compact('genders','specializations','degrees'));
	}

	public function store(cvStore $request){
		//dd($request);

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
