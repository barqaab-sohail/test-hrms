<?php

namespace App\Http\Controllers\Leave;

use Illuminate\Http\Request;
use App\Http\Requests\leave\storeInitialBalance;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use App\employee;
use App\leave_type;
use App\leave_initial_balance;

class InitialBalanceController extends Controller
{
    
	public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function create(){

    	$initialLeaves = leave_initial_balance::all();
    	$employees = employee::all();
    	$leaveTypes = leave_type::all();
    	return view('leave.initialLeave', compact('employees','leaveTypes','initialLeaves'));

    }


    public function index(){
    	$output = '';

    	//if($request->ajax()){
    		$initialLeaves = leave_initial_balance::all();
    		
    		$output .='<table id="myTable" class="table table-bordered table-striped" width="100%" cellspacing="0">
					<thead>
					
					<tr>
						<th>Employee Name</th>
						<th>Leave Type</th>
						<th>Balance</th>
						<th>Effective Date</th>
						<th> Actions </th>
                        <th></th>
						
					</tr>
					</thead>
					<tbody>';
    		
    		foreach($initialLeaves as $initialLeave){
    		$output .='
					<tr>
								<td>'.$initialLeave->employee->first_name. ' '.$initialLeave->employee->middle_name.' '.$initialLeave->employee->last_name.'</td>
								<td>'.$initialLeave->leave_type->name.'</td>
								<td>'.$initialLeave->balance.'</td>
								<td>'.$initialLeave->effective_date.'</td>
								
								<td>
								 <a class="btn btn-info btn-sm" id="update,id='.$initialLeave->id.'" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-pencil-alt text-white "></i></a>
								</td>
                                <td>
                                 <a class="btn btn-danger btn-sm" id="delete,id='.$initialLeave->id.'"data-toggle="tooltip" data-original-title="Delete"><i class="fas fa-trash-alt text-white "></i></a>
                                </td>
                                
					</tr>
					';
			}

			$output .='
					</tbody>
				</table>
    		';
    		echo $output;
     	//}

    }

    public function store(storeInitialBalance $request){

    	$data = $request->all();

    	if($request->filled('effective_date')){
            $data ['effective_date']= \Carbon\Carbon::parse($request->effective_date)->format('Y-m-d');
        }

    	leave_initial_balance::updateOrCreate(
        ['id' => $request->id],
        $data);
   	
    	return "OK";
    }

    public function destroy($id){

       leave_initial_balance::findOrFail($id)->delete(); 
    
        return "OK";
    }



}
