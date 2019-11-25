<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use App\employee;

class ManagerController extends Controller
{
    
	public function index(){
	    $employees = DB::table('employees')
	                    ->select('employees.id','employees.first_name','employees.middle_name','employees.last_name','designations.name AS promotion_designation','ap_designation.name as appointment_designation','promotions.id AS pr_id')
	                    ->leftJoin('promotions','employees.id','=','promotions.employee_id')
	                    ->leftJoin('appointments','employees.id','=','appointments.employee_id')
	                    ->leftJoin('designations','designations.id','=','promotions.designation_id') 
	                    ->leftJoin('designations AS ap_designation','ap_designation.id','=','appointments.designation_id') 

	                    ->orderBy('pr_id','desc')
	                    
	                    ->get();
	    $employees = $employees->unique('id')->all();

       return view('admin.manager',compact('employees'));
    }

    public function show($id){

    	$employee = employee::find($id);

    	$employees = managerLevel($employee->id);
        $employees = $employees->reverse();
        $level =0;

        $output = '';

        $output .='<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
                   <thead>
                    
                    <tr>
                        <th>Level</th>
                        <th>Manager Name</th>
                        
                    </tr>
                    </thead>
                    <tbody>';
        foreach ($employees as $employee){

        $output .='
                    <tr>
                     	<td>'.'Level-'.$level.'</td>
                        <td>'.$employee->first_name . ' '.$employee->middle_name.' '.$employee->last_name.'</td>
                    </tr>';
            
            $level++;

        }
        $output .='
                    </tbody>
                </table>';
    echo $output;


    }
}
