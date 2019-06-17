<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\emergency_contact;
use DB;


class EmergencyController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
    }

    public function create($id){

        $employee = employee::find($id);
        $emergencyIds = emergency_contact::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('emergency.emergency',compact('employee','employees','emergencyIds'));
    }

	public function store(Request $request){
         $request->validate([
         'name' => 'required|max:255',
         ]);

        $data = emergency_contact::create($request->all());

        return redirect()->route('emergency',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      // return redirect()->route('emergency',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
        $employee = employee::find(session('employee_id'));
        $emergencyIds = emergency_contact::all()->where('employee_id', session('employee_id'));
        $data = emergency_contact::find($id);
        return view ('emergency.editEmergency',compact('data','employee','emergencyIds'));
    }
    
    public function update(Request $request, $id)
    {
     
     emergency_contact::findOrFail($id)->update($request->all());
     return redirect()->route('emergency.edit',['id'=>$id])->with('success', 'Emergency Contact Detail is updated succesfully');
    }
}
