<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\department;
use App\marital_status;
use App\Education;
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
       return view('employee.employeeList', compact('employees'));
    }
    public function create(){
        $departments = department::all();
        $maritalStatus = marital_status::all();
        return view ('employee.createEmployee', compact('departments','maritalStatus'));
    }
    public function store (Request $request){
        /* $request->validate([
         'first_name' => 'required|max:255',
         'last_name' => 'required|max:255',
         'email' => 'required|unique:users|email',
         'cnic' => 'required|unique:users|numeric|digits:13',
         'cnic_expiry' => 'required|date|after:tomorrow',
         'picture' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2000',
          ]);
         $imageName = time().'.'.request()->picture->getClientOriginalExtension();
        request()->picture->move(public_path('images'), $imageName);
        $input['picture'] = $imageName;

        */

        $input = $request->all();
        $data = employee::create($input);
        session()->put('employee_id', $data->id);
        $employees = employee::all();
        return redirect('/createPicture');
    }


    public function edit($id){
        $employee = employee::find($id);
        $departments = department::all();
        $maritalStatuses = marital_status::all();
        $employeeId = session()->put('employee_id', $employee->id);
        return view ('employee.editEmployee', compact('employee','departments','maritalStatuses'));
    }


    public function update(Request $request, $id)
    {
       
        $this->validate($request, [
        'cnic' => 'required|numeric|digits:13|unique:employees,cnic,'.$id,
        ]);

        employee::findOrFail($id)->update($request->all());
      
       return redirect()->route('employee.edit',['id'=>$id])->with('success', 'Employee is updated succesfully');
    }

    public function inactive(Request $request, $id)
    {
       
       
       employee::findOrFail($id)->update(['status'=>1]);
       $employees = employee::all()->where('status','0');
       return view('employee.employeeList', compact('employees'));
    }


    
  

    


}
