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
    
    public function custom(){
        $employees = employee::with('user','contact','division')->where('employee_status_id',1)->get();
        $postings = posting::all();
        $position = DB::table('employees')
                    ->select('employees.id','employees.first_name','employees.middle_name','employees.last_name','designations.name AS promotion_designation','ap_designation.name as appointment_designation','promotions.id AS pr_id')
                    ->leftJoin('promotions','employees.id','=','promotions.employee_id')
                    ->leftJoin('appointments','employees.id','=','appointments.employee_id')
                    ->leftJoin('designations','designations.id','=','promotions.designation_id') 
                    ->leftJoin('designations AS ap_designation','ap_designation.id','=','appointments.designation_id') 

                    ->orderBy('pr_id','desc')
                    
                    ->get();
       $position = $position->unique('id')->all();

        return view('hr.reports.custom', compact('employees','position','postings'));
    }

    // public function customData(){

    //     $employees = employee::where('employee_status_id',1)->get();
    //     $fatherName='';
    //     $fatherName =  '<th>Father Name</th>';
    //     //$fatherNameDate = '<td>'.$employee->father_name .'</td>';


    //     $output = '';

    //         $output .='<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
    //                    <thead>
                        
    //                     <tr>
    //                         <th>Employee Name</th>
    //                         <th>Father Name</th>
                            
    //                     </tr>
    //                     </thead>
    //                     <tbody>';
    //         foreach ($employees as $employee){

    //         $output .='
    //                     <tr>
    //                         <td>'.$employee->first_name . ' '.$employee->middle_name.' '.$employee->last_name.'</td>
    //                         <td>'.$employee->father_name .'</td>
    //                     </tr>';

    //         }
    //         $output .='
    //                     </tbody>
    //                 </table>';
    //         echo $output;

    // }


    public function activeEmployee (){
       $employees = employee::with('user','picture','appointment','salary','posting','membership','experience','education','language','promotion','contact','emergency_contact','document','other_information')->get();
       return view('hr.reports.tables.activeEmployees', compact('employees'));
    }

    public function managers(){
       
         $employees =  DB:: table('employees')
                    ->join('postings','postings.manager_id','=','employees.id')
                    ->select([DB::RAW('DISTINCT first_name,middle_name,last_name, manager_id')])->get();

        $postings = posting::orderBy('posting_date','DESC')->get(['employee_id','manager_id','project'])->unique('employee_id');
      
             
        return view('hr.reports.tables.allManagers', compact('postings','employees'));
    }

    public function employeesManagers(){
       
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
