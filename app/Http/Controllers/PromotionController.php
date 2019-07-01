<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
//use App\promotion;
use DB;

class PromotionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

public function create($id){


	 $employee = employee::find($id);
	
        return view ('hr.promotion.promotion',compact('employee'));
    }

}
