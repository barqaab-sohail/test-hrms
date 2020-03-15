<?php

namespace App\Http\Controllers\Submission;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\submission\submission;


class ParticipantController extends Controller
{
    //
    public function edit($id){
		
    	$submission= submission::find($id);
    	
		return view ('submission.participant.participants', compact('submission'));
	}

	public function update (Request $request, $id){
		$input = $request->all();
		if($request->filled('financial_opening_date')){
            $input ['financial_opening_date']= \Carbon\Carbon::parse($request->financial_opening_date)->format('Y-m-d');
        }
        $input ['submission_id']= session('submission_id');

        dd($input);

	}
}
