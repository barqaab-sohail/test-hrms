<?php

namespace App\Http\Controllers\Leave;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use App\employee;
use App\leave_type;
use App\leave_initial_balance;


class LeaveController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');
        
    }

    public function applyLeave(){


    }

    public function showInitialBalance(){

    	$initialLeaves = leave_initial_balance::all();
    	$employees = employee::all();
    	$leaveTypes = leave_type::all();
    	return view('leave.initialLeave', compact('employees','leaveTypes','initialLeaves'));

    }

    public function storeInitialBalance(Request $request){

    	$data = $request->all();
    	if($request->filled('effective_date')){
            $data ['effective_date']= \Carbon\Carbon::parse($request->effective_date)->format('Y-m-d');
        }

    	leave_initial_balance::create($data);
    	return Redirect::back()->with('success', 'Data is saved Sucessfully');
    }




}
