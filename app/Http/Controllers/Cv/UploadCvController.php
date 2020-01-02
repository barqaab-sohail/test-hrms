<?php

namespace App\Http\Controllers\Cv;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\gender;
use App\cv_expertize;
use App\Helper\DocxConversion;

class UploadCvController extends Controller
{


    
	public function create(){

		$genders = gender::all();
		$expertizes = cv_expertize::all();

		//return view ('bio-data.test',compact('genders'));
		return view ('bio-data.uploadCv',compact('genders','expertizes'));
	}

	public function store(request $request){

		$filename= public_path('test.xlsx');

		$testing = DocxConversion::xlsx_to_text($filename);
		return $testing;
		
		/*$striped_content = '';
        $content = '';

        $zip = zip_open($filename);

        if (!$zip || is_numeric($zip)) return false;

        while ($zip_entry = zip_read($zip)) {

            if (zip_entry_open($zip, $zip_entry) == FALSE) continue;

            if (zip_entry_name($zip_entry) != "word/document.xml") continue;

            $content .= zip_entry_read($zip_entry, zip_entry_filesize($zip_entry));

            zip_entry_close($zip_entry);
        }// end while

        zip_close($zip);

        $content = str_replace('</w:r></w:p></w:tc><w:tc>', " ", $content);
        $content = str_replace('</w:r></w:p>', "\r\n", $content);
        $striped_content = strip_tags($content);

        return $striped_content;*/

/*
		//$path = $request->file('cv')->store('cvs');
		//dd($path);
		$file= public_path('testt.doc');
		//$content = file_get_contents($file);

		$content = DocxConversion($file)->read_docx();
		//$docObj = new Filetotext("test1.doc");
 		//$return = $docObj -> convertToText();

		dd($content);*/
		
	}


}
