<?php

namespace App\Http\Controllers\Submission;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\submission\submission;


class ParticipantController extends Controller
{
    //
    public function create(){
		
    	$submission= submission::find(session('submission_id'));
    	
		return view ('submission.participant.index', compact('submission'));
	}
}
