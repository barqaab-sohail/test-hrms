<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\appointment;
use App\salary;
use App\project;
use App\blood_group;
use App\Http\Requests\StoreAppointment;
use DB;
use App\designation;

class AppointmentController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function edit($id){

       $employee = employee::find($id);
       $projects = project::all();
       $designations = designation::all();
       
       $salary = DB::table('salaries')->where('employee_id',$id)->where('promotion_id',NULL)->first();
                        
      return view ('hr.appointment.editAppointment', compact('employee','salary','projects','designations'));
    }

     public function update(StoreAppointment $request, $id)  {

         $data = $request->all();

        
         if($request->filled('expiry_date')){
         $data ['expiry_date']=  \Carbon\Carbon::parse($request->expiry_date)->format('Y-m-d');}
         if($request->filled('appointment_date')){
         $data ['appointment_date']= \Carbon\Carbon::parse($request->appointment_date)->format('Y-m-d');}
         
        $employee = employee::find($id);
        $agreement = appointment::updateOrCreate(
         ['employee_id' => $id],
         $data);

      
      return redirect()->route('appointment.edit',['id'=>session('employee_id')])->with('success', 'Appointment Detail is saved succesfully');
    }
}
