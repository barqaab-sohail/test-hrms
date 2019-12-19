<?php

namespace App\Http\Controllers\Cv;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\gender;
class UploadCvController extends Controller
{
    
public function create(){

	$genders = gender::all();

	return view ('bio-data.test',compact('genders'));
	//return view ('bio-data.uploadCv',compact('genders'));
}


}
