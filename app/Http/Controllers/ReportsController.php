<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;

class ReportsController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store','create','index');
    }
    


    public function index(){

    	return view('hr.reports.reports');
    }

    public function activeEmployee (){
       $employees = employee::all()->where('status',0);
       return view('hr.reports.activeEmployees', compact('employees'));
    }
}
