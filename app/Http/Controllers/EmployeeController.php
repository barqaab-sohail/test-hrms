<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Http\Requests\StoreEmployee;
use App\department;
use App\marital_status;
use App\Education;
use App\country;
use App\employee;
use DB;

class EmployeeController extends Controller
{
    
	public function __construct()
    {
        $this->middleware('auth');
    }

    public function index (){
       $employees = employee::all()->where('status',0);
       return view('hr.employee.employeeList', compact('employees'));
    }

    public function create(){
        session()->put('employee_id', '');
        $countries = country::all();
        $departments = department::all();
        $maritalStatus = marital_status::all();
        return view ('hr.employee.createEmployee', compact('departments','maritalStatus','countries'));
    }
    public function store (StoreEmployee $request){
         
            //Change Date Format
            $data = $request->all();
            $data ['date_of_birth']= \Carbon\Carbon::parse($request->date_of_birth)->format('Y-m-d');
            $data ['cnic_expiry']= \Carbon\Carbon::parse($request->cnic_expiry)->format('Y-m-d');
        $input = employee::create($data);
        session()->put('employee_id', $input->id);
        $employees = employee::all();
        return redirect()->route('picture.edit',['id'=>session('employee_id')])->with('success', 'Employee is saved succesfully');
       
    }


    public function edit($id){
        $countries = country::all();
        $employee = employee::find($id);
        $departments = department::all();
        $maritalStatuses = marital_status::all();
        $employeeId = session()->put('employee_id', $employee->id);
        return view ('hr.employee.editEmployee', compact('employee','departments','maritalStatuses','countries'));
    }


    public function update(StoreEmployee $request, $id)
    {
            //Change Date Format
            $data = $request->all();
            $data ['date_of_birth']= \Carbon\Carbon::parse($request->date_of_birth)->format('Y-m-d');
            $data ['cnic_expiry']= \Carbon\Carbon::parse($request->cnic_expiry)->format('Y-m-d');

        employee::findOrFail($id)->update($data);
      
       return redirect()->route('employee.edit',['id'=>$id])->with('success', 'Employee is updated succesfully');
    }

    public function inactive(Request $request, $id)
    {
        
       employee::findOrFail($id)->update(['status'=>1]);
       $employees = employee::all()->where('status','0');
       return view('hr.employee.employeeList', compact('employees'));
    }


    
  

    


}
