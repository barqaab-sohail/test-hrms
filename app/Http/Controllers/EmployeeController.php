<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
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

       //$users = DB::table('users')->get();
        $employees = employee::all();
       return view('employee.employeeList')->with('employees',$employees);
    }


    public function edit($id){
        $employee = employee::find($id);
        $employeeId = session()->put('employee_id', $employee->id);
        return view ('employee.editEmployee')->with ('employee', $employee);
    }


    public function update(Request $request, $id)
    {
       
         $this->validate($request, [
         'email' => 'required|unique:users,email,'. $id,
         'cnic' => 'required|numeric|digits:13|unique:users,cnic,'.$id,
        ]);

        User::findOrFail($id)->update($request->all());
      
       return redirect()->route('user.edit',['id'=>$id])->with('success', 'Employee is updated succesfully');
    }


    public function create(){
        return view ('user.createUser');
    }
  

    public function store (Request $request){
         $request->validate([
         'first_name' => 'required|max:255',
         'last_name' => 'required|max:255',
         'email' => 'required|unique:users|email',
         'cnic' => 'required|unique:users|numeric|digits:13',
         'cnic_expiry' => 'required|date|after:tomorrow',
         'picture' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2000',
            
         ]);

        $input = $request->all();
       
        $imageName = time().'.'.request()->picture->getClientOriginalExtension();
        request()->picture->move(public_path('images'), $imageName);
        $input['picture'] = $imageName;
       
       	$data = User::create($input);

        //return view ('education.education')->with('data', $data)->with('message', 'Data Sucessfully Save');

        //return redirect('/education')->with('message', 'Data Sucessfully Save');
        return redirect('/education') ->with(['user_id'=>$data->id]);
    }


}
