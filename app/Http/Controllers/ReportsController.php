<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\posting;
use DB;

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

    public function allManagers(){
       
         $employees =  DB:: table('employees')
                    ->join('postings','postings.manager_id','=','employees.id')
                    ->select([DB::RAW('DISTINCT first_name, last_name, manager_id')])->get();

        $postings = posting::orderBy('posting_date','DESC')->get(['employee_id','manager_id','project'])->unique('employee_id');
      
             
        return view('hr.reports.allManagers', compact('postings','employees'));
    }

    
}
