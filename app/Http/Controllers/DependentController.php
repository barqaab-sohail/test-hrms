<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\dependent;
use App\gender;
use DB;

class DependentController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function create(){

        $employee = employee::find(session('employee_id'));
        $dependentIds = dependent::all()->where('employee_id', session('employee_id'));
        $employees = employee::all();
        $genders = gender::all();
        
        return view ('hr.dependent.dependent',compact('employee','employees','dependentIds','genders'));
    }



	public function store(Request $request){

       $data = $request->all();
       if($request->filled('date_of_birth')){
       $data ['date_of_birth']= \Carbon\Carbon::parse($request->date_of_birth)->format('Y-m-d');
        }

             
         $request->validate([
         'name' => 'required|max:255',
         ]);

        dependent::create($data);

        return redirect()->route('dependent.create',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
    // return redirect()->route('dependent',['id'=>$data->id])->with('success', 'User is created succesfully');

    }

    public function edit($id){
        $employee = employee::find(session('employee_id'));
        $dependentIds = dependent::all()->where('employee_id', session('employee_id'));
        $data = dependent::find($id);
        $genders = gender::all();
        return view ('hr.dependent.editDependent',compact('data','employee','dependentIds','genders'));
    }
    
    public function update(Request $request, $id)
    {
      $data = $request->all();
       if($request->filled('date_of_birth')){
       $data ['date_of_birth']= \Carbon\Carbon::parse($request->date_of_birth)->format('Y-m-d');
        }
     dependent::findOrFail($id)->update($data);
     return redirect()->route('dependent.edit',['id'=>$id])->with('success', 'Dependent Detail is updated succesfully');
    }
    
    
    public function destroy($id)
    {
    
    dependent::findOrFail($id)->delete(); 
    return redirect()->route('dependent.create')->with('success', 'Dependent Detail is deleted succesfully');
  
    }
}
