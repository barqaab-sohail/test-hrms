<?php

namespace App\Http\Controllers\cv;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\cv\cv_attachment;
use App\models\cv\cv_detail;


class CVDocumentController extends Controller
{
    
    public function create(){

    	 $cv = cv_detail::find(session('cv_id'));
        $documentIds = cv_attachment::all()->where('cv_detail_id', session('cv_id'));

		return view('cv.document.document',compact('documentIds'));


	}

}
