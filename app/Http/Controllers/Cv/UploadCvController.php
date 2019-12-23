<?php

namespace App\Http\Controllers\Cv;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\gender;
use App\cv_expertize;
class UploadCvController extends Controller
{
    
	public function create(){

		$genders = gender::all();
		$expertizes = cv_expertize::all();

		//return view ('bio-data.test',compact('genders'));
		return view ('bio-data.uploadCv',compact('genders','expertizes'));
	}

	public function store(request $request){

		dd($request->expertize);
		
	}


}
