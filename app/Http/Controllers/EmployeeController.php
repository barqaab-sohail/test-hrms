<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Http\Requests\StoreEmployee;
use App\division;
use App\marital_status;
use App\Education;
use App\country;
use App\employee;
use App\nationality;
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
        $divisions = division::all();
        $maritalStatus = marital_status::all();
        return view ('hr.employee.createEmployee', compact('divisions','maritalStatus','countries'));
    }
    public function store (StoreEmployee $request){
            
        DB::transaction(function () use ($request) {              
            //Change Date Format
            $data = $request->all();
            $data ['date_of_birth']= \Carbon\Carbon::parse($request->date_of_birth)->format('Y-m-d');
            $data ['cnic_expiry']= \Carbon\Carbon::parse($request->cnic_expiry)->format('Y-m-d');
        
            $input = employee::create($data);
            $nationality1 = array('nationality_name'=>$request->input('nationality_name'),'employee_id'=>$input->id);
            nationality::create($nationality1);
            if($request->has('nationality_name2'))
            {
            $nationality2 = array('nationality_name'=>$request->input('nationality_name2'),'employee_id'=>$input->id);
            nationality::create($nationality2);
            }

            session()->put('employee_id', $input->id);
        });

        
        $employees = employee::all();
        return redirect()->route('user.edit',['id'=>session('employee_id')])->with('success', 'Employee is saved succesfully');
       
    }


    public function show($id){
        $countries = country::all();
        $employee = employee::find($id);
        $divisions = division::all();
        $maritalStatuses = marital_status::all();
        $employeeId = session()->put('employee_id', $employee->id);
        $nationality1 = nationality::where('employee_id',$employee->id)->get()->first();
        $nationality2 = nationality::where('employee_id',$employee->id)->get()->last();
        
        return view ('hr.employee.editEmployee', compact('employee','divisions','maritalStatuses','countries','nationality1','nationality2'));
    }


    public function edit($id){
        $countries = country::all();
        $employee = employee::find($id);
        $divisions = division::all();
        $maritalStatuses = marital_status::all();
        $employeeId = session()->put('employee_id', $employee->id);
        $nationality1 = nationality::where('employee_id',$employee->id)->get()->first();
         $nationality2 = nationality::where('employee_id',$employee->id)->get();
        
        if($nationality2->count()>1){
             $nationality2 = nationality::where('employee_id',$employee->id)->get()->last();
        }else{
             $nationality2 = 'null';
        }

       
        
        return view ('hr.employee.editEmployee', compact('employee','divisions','maritalStatuses','countries','nationality1','nationality2'));
    }


    public function update(StoreEmployee $request, $id)
    {
     
        DB::transaction(function () use ($request, $id) {    

            //Change Date Format
            $data = $request->all();
            $data ['date_of_birth']= \Carbon\Carbon::parse($request->date_of_birth)->format('Y-m-d');
            $data ['cnic_expiry']= \Carbon\Carbon::parse($request->cnic_expiry)->format('Y-m-d');

        employee::findOrFail($id)->update($data);

        $nationalityId = nationality::where('employee_id',session('employee_id'))->get()->first();
        $nationality1 = array('nationality_name'=>$request->input('nationality_name'),'employee_id'=>session('employee_id'));

            //Check first Nationality Exist Or Not
            if ($nationalityId== null){
                     nationality::create($nationality1);
            }else{
            nationality::findOrFail($nationalityId->id)->update($nationality1);
            }
        //Second Nationality 
            $nationalityCount = nationality::where('employee_id',session('employee_id'))->get();
            if($request->input('nationality_name2')!=null){
                 
                 //Convert nationalirty_name2 to nationality_name
                $nationality2 = array('nationality_name'=>$request->input('nationality_name2'),'employee_id'=>session('employee_id'));
                //Check Nationality2 already exist or Not
                if($nationalityCount->count()>1){
                       $nationalityId = nationality::where('employee_id',session('employee_id'))->get()->last();
                }else{
                     nationality::create($nationality2);
                }
            }else{
                //Already Saved Nationality2 Delete
                if($nationalityCount->count()>1){
                    $nationalityId = nationality::where('employee_id',session('employee_id'))->get()->last();
                    nationality::findOrFail($nationalityId->id)->delete();
                }

                 
            }
        
         });

       return redirect()->route('employee.edit',['id'=>$id])->with('success', 'Employee is updated succesfully');
    }

    public function inactive(Request $request, $id)
    {
       employee::findOrFail($id)->update(['status'=>1]);
       $employees = employee::all()->where('status','0');
       return view('hr.employee.employeeList', compact('employees'));
    }


    
  

    


}
