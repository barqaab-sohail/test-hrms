<?php

namespace App\Http\Controllers\Submission;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\submission\sub_type;
use App\models\submission\sub_contract_type;


class AddController extends Controller 
{
    public function create(){
		session()->put('submission_id', '');
		$types = sub_type::all();
		$contractType = sub_contract_type::all();
		

		return view ('submission.submission',compact('types','contractType'));
	}



}
