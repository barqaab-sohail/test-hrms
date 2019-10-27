<?php

namespace App\Http\Controllers\Leave;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\employee;
use App\posting;
use App\designation;
use DB;

class LeaveQuotaController extends Controller
{
    public function index(){

    	$employees = DB::table('employees')
                    ->join('promotions','employees.id','=','promotions.employee_id')
                    ->join('designations','promotions.designation_id','=','designations.id')
                    ->get();
        $employees = $employees->unique('employee_id');

        $employees->values()->all();
    	
    	return view('leave.leave_quota.leaveQuota', compact('employees'));
    }
}
