<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreExperience;
use App\User;
use App\employee;
use App\experience;
use App\country;
use DB;

class ExperienceController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function create(){
        $countries = country::all();
        $employee = employee::find(session('employee_id'));
        $experienceIds = experience::all()->where('employee_id', session('employee_id'));
        $employees = employee::all();
        return view ('hr.experience.experience',compact('employee','employees','experienceIds','countries'));
    }

	public function store(StoreExperience $request){
        

        $data = $request->all();
        if($request->filled('from')){
        $data ['from']= \Carbon\Carbon::parse($request->from)->format('Y-m-d');
        }
        if($request->filled('to')){
        $data ['to']= \Carbon\Carbon::parse($request->to)->format('Y-m-d');
        }
        Experience::create($data);
        return redirect()->route('experience.create')->with('success', 'Data is saved succesfully');
      
    }

    public function edit($id){
        $countries = country::all();
        $employee = employee::find(session('employee_id'));
        $experienceIds = experience::all()->where('employee_id', session('employee_id'));
        $data = experience::find($id);
        return view ('hr.experience.editExperience',compact('data','employee','experienceIds','countries'));
    }
    
    public function update(StoreExperience $request, $id)
    {
        $data = $request->all();
        if($request->filled('from')){
        $data ['from']= \Carbon\Carbon::parse($request->from)->format('Y-m-d');
        }
        if($request->filled('to')){
        $data ['to']= \Carbon\Carbon::parse($request->to)->format('Y-m-d');
        }
     experience::findOrFail($id)->update($data);
     return redirect()->route('experience.edit',['id'=>$id])->with('success', 'Experience is updated succesfully');
    }

    public function destroy(Request $request, $id)
    {
          
    experience::findOrFail($id)->delete();

    return redirect()->route('experience.create')->with('success', 'Experience is deleted succesfully');
    
    }
}
