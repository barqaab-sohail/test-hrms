<?php

namespace App\Http\Controllers\Submission;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ParticipantController extends Controller
{
    //
    public function create(){
		

		return view ('submission.participant.index',compact('types','contractTypes'));
	}
}
