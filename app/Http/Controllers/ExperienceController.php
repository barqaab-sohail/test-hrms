<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\employee;
use App\Experience;
use DB;

class ExperienceController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create($id){

        $employee = employee::find($id);
        $experienceIds = experience::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('experience.experience',compact('employee','employees','experienceIds'));
    }

	public function store(Request $request){
         $request->validate([
         'employer' => 'required|max:255',
         'position' => 'required|max:255',
         ]);

        $data = $request->all();
        $data ['from']= \Carbon\Carbon::parse($request->from)->format('Y-m-d');
        $data ['to']= \Carbon\Carbon::parse($request->to)->format('Y-m-d');
        Experience::create($data);
        return redirect()->route('experience',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      
    }

    public function edit($id){
        
        $employee = employee::find(session('employee_id'));
        $experienceIds = experience::all()->where('employee_id', session('employee_id'));
        $data = experience::find($id);
        return view ('experience.editExperience',compact('data','employee','experienceIds'));
    }
    
    public function update(Request $request, $id)
    {
     
     experience::findOrFail($id)->update($request->all());
     return redirect()->route('experience.edit',['id'=>$id])->with('success', 'Experience is updated succesfully');
    }

    public function delete(Request $request, $id)
    {
          
    experience::findOrFail($id)->delete();

    return redirect()->route('experience',['id'=>session('employee_id')])->with('success', 'Experience is deleted succesfully');
    
    }
}
