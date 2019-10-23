<?php

namespace App\Http\Controllers\Leave;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class LeaveTypeController extends Controller
{
    

	public function index(){

		return view ('leave.leave_type.leaveType');
	}

}
