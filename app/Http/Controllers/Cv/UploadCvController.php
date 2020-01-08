<?php

namespace App\Http\Controllers\Cv;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\gender;
use App\cv_expertize;
use App\Helper\DocxConversion;
use Spatie\PdfToText\Pdf;
include ('PdfToText.phpclass');

class UploadCvController extends Controller
{


    
	public function create(){

		$genders = gender::all();
		$expertizes = cv_expertize::all();

		//return view ('bio-data.test',compact('genders'));
		return view ('cv.uploadCv',compact('genders','expertizes'));
	}

	public function store(request $request){
<<<<<<< HEAD

	include ('PdfToText.phpclass');
	
		$extension = request()->cv->getClientOriginalExtension();
=======
		$fileName =request()->full_name.'-'. time().'.'.request()->cv->getClientOriginalExtension();
		$request->file('cv')->storeAs('public/cv',$fileName);
		$file_path = storage_path('app/public/cv/'.$fileName);	
		$input['content']='';
>>>>>>> ae5782b23ad74dbdad999359e607c923ec5c8625
		
		$extension = request()->cv->getClientOriginalExtension();
			if (($extension == 'doc')||($extension == 'docx')){
			$text = new DocxConversion($file_path);
			$input['content']=$text->convertToText();
			}else if ($extension =='pdf'){

				$var = shell_exec("/usr/local/bin/pdftotext $file_path test.txt 2>&1");
				echo $var;
				//$mypdf = file_get_contents("test.txt");
				//echo $mypdf;

					//echo Pdf::getText($file_path);
	
	//$pdf	=  new \PdfToText ( $file_path ) ;
	//return $pdf -> Text;

			}
<<<<<<< HEAD
			else if ($extension == 'pdf'){
			$fileName = time().'.'.request()->cv->getClientOriginalExtension();
			$request->file('cv')->storeAs('public/cv',$fileName);
			$file_path = storage_path('app/public/cv/'.$fileName);
			//echo Pdf::getText($file_path);
			


			}
=======

		$input['name']=$fileName;
		$input['path']=$file_path;
		$input['extension']=$extension;

		//return back()->with('success', 'Data successfully saved.');
			
>>>>>>> ae5782b23ad74dbdad999359e607c923ec5c8625
		
		
		
		
		
	}


}
