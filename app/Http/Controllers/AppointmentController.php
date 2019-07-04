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

class AppointmentController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
    }

    public function edit($id){

       $employee = employee::find($id);
       $projects = project::all();
       
       $salary = DB::table('salaries')->where('employee_id',$id)->where('promotion_id',NULL)->first();
                        
      return view ('hr.appointment.editAppointment', compact('employee','salary','projects'));
    }

     public function update(StoreAppointment $request, $id)  {

         $data = $request->all();
         $data ['joining_date']= \Carbon\Carbon::parse($request->joining_date)->format('Y-m-d');
         $data ['expiry_date']= \Carbon\Carbon::parse($request->expiry_date)->format('Y-m-d');
         $data ['appointment_date']= \Carbon\Carbon::parse($request->appointment_date)->format('Y-m-d');

         

        $employee = employee::find($id);
        
        $appointment = appointment::where ('employee_id',$id)->first();
        if ($appointment!=null){
          $appointmentId = $employee->appointment->id;
        	 appointment::findOrFail($appointmentId)->update($data);
        }else
        {
        appointment::create($data);
        }
       
       return redirect()->route('appointment.edit',['id'=>session('employee_id')])->with('success', 'Appointment Detail is saved succesfully');
    }
}
