<?php

namespace App\Http\Controllers\Cv;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\gender;
use App\cv_expertize;
use App\Helper\DocxConversion;
use Spatie\PdfToText\Pdf;

class UploadCvController extends Controller
{


    
	public function create(){

		$genders = gender::all();
		$expertizes = cv_expertize::all();

		//return view ('bio-data.test',compact('genders'));
		return view ('bio-data.uploadCv',compact('genders','expertizes'));
	}

	public function store(request $request){

	include ('PdfToText.phpclass');
	
		$extension = request()->cv->getClientOriginalExtension();
		
			if (($extension == 'doc')||($extension == 'docx')){
			$fileName = time().'.'.request()->cv->getClientOriginalExtension();
			$request->file('cv')->storeAs('public/cv',$fileName);
			$file_path = storage_path('app/public/cv/'.$fileName);
			$testing = new DocxConversion($file_path);
			return $testing->convertToText();
			}
			else if ($extension == 'pdf'){
			$fileName = time().'.'.request()->cv->getClientOriginalExtension();
			$request->file('cv')->storeAs('public/cv',$fileName);
			$file_path = storage_path('app/public/cv/'.$fileName);
			//echo Pdf::getText($file_path);
			


			}
		
		echo "File is Not Document";
		
		
		
	}


}
