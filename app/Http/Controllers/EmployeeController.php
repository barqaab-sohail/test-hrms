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
use App\sessions;

class EmployeeController extends Controller
{
    
	public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store','create','index');
    }




    public function index (){
       $employees = employee::all()->where('employee_status','0');
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
            if($request->filled('date_of_birth')){
            $data ['date_of_birth']= \Carbon\Carbon::parse($request->date_of_birth)->format('Y-m-d');
            }
            if($request->filled('cnic_expiry')){
            $data ['cnic_expiry']= \Carbon\Carbon::parse($request->cnic_expiry)->format('Y-m-d');
            }
        
            $input = employee::create($data);
            $nationality1 = array('nationality_name'=>$request->input('nationality_name'),'employee_id'=>$input->id);
            nationality::create($nationality1);
            if($request->filled('nationality_name2'))
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
            if($request->filled('date_of_birth')){
            $data ['date_of_birth']= \Carbon\Carbon::parse($request->date_of_birth)->format('Y-m-d');
            }
            
            if($request->filled('cnic_expiry')){
            $data ['cnic_expiry']= \Carbon\Carbon::parse($request->cnic_expiry)->format('Y-m-d');
            }

        employee::findOrFail($id)->update($data);

        //first Nationality 
        $nationality1 = array('nationality_name'=>$request->input('nationality_name'),'employee_id'=>session('employee_id'));

        nationality::updateOrCreate(
         ['employee_id' => session('employee_id')],
         $nationality1);

       
        //Second Nationality 
            $nationalityCount = nationality::where('employee_id',session('employee_id'))->get();
            if($request->input('nationality_name2')!=null){
                 
                 //Convert nationalirty_name2 to nationality_name
                $nationality2 = array('nationality_name'=>$request->input('nationality_name2'),'employee_id'=>session('employee_id'));
                //Check Nationality2 already exist or Not
                if($nationalityCount->count()>1){
                       $nationalityId = nationality::where('employee_id',session('employee_id'))->get()->last();
                    nationality::findOrFail($nationalityId->id)->update($nationality2);

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
       
       employee::findOrFail($id)->update(['employee_status'=>'1']);
      
       return back();
    }

  

    public function activeUsers(){

     // Get time session life time from config.
     $time =  time() - (config('session.lifetime')*60); 

     // Total login users (user can be log on 2 devices will show once.)
     $totalActiveUsers = sessions::where('last_activity','>=', $time)->
     count(DB::raw('DISTINCT user_id'));
     

    // Total active sessions
    // $activeUsers = sessions::where('last_activity','>=', $time)->     get();

     $activeUsers = DB::table('employees')
                    ->join('users','employees.id','=','users.employee_id')
                    ->join('sessions','users.id','=','sessions.user_id')
                    ->select('employees.*','sessions.*','users.*')->where('last_activity','>=', $time)->get();

       return view('hr.employee.activeUserList', compact('activeUsers','totalActiveUsers'));

    }
    
    public function employeeStatus(){
         return "OK";
    }
  

    


}
