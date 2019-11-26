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
       $employees = employee::with('user','picture','appointment','salary','posting','membership','experience','education','language','promotion','contact','emergency_contact','document','other_information')->get();
       return view('hr.reports.tables.activeEmployees', compact('employees'));
    }

    public function allManagers(){
       
         $employees =  DB:: table('employees')
                    ->join('postings','postings.manager_id','=','employees.id')
                    ->select([DB::RAW('DISTINCT first_name,middle_name,last_name, manager_id')])->get();

        $postings = posting::orderBy('posting_date','DESC')->get(['employee_id','manager_id','project'])->unique('employee_id');
      
             
        return view('hr.reports.tables.allManagers', compact('postings','employees'));
    }

    public function allEmployees(){
       
        $employees = employee::with('posting')->where('employee_status_id',1)->get();
        return view('hr.reports.tables.allemployees', compact('employees'));
        
        //$employee = employee::find(1);
        /*$employees = managerLevel(61);
        $employees = $employees->reverse();

        $level =0;
        foreach ($employees as $employee){
            echo $employee->first_name . ' '.$employee->middle_name.' '.$employee->last_name . ' - Level-'.$level.'<br>';
            $level++;
        }*/
        // dd($employee->posting->first()->manager_id);
      

        
    }

    
}
