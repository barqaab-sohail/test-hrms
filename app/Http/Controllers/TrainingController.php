<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreTraining;
use App\User;
use App\employee;
use App\country;
use App\training;
use App\publication;
use App\education;
use DB;


class TrainingController extends Controller
{
   public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function create(){

        $countries = country::all();
        $employee = employee::find(session('employee_id'));
        $trainingIds = training::all()->where('employee_id', session('employee_id'));
        $employees = employee::all();
        return view ('hr.training.training',compact('employee','employees','trainingIds','countries'));
    }

	public function store(StoreTraining $request){
        

        $data = $request->all();
        if($request->filled('from')){
        $data ['from']= \Carbon\Carbon::parse($request->from)->format('Y-m-d');
        }
        if($request->filled('to')){
        $data ['to']= \Carbon\Carbon::parse($request->to)->format('Y-m-d');
        }

        training::create($data);

        return back()->with('success', 'Data successfully saved');
    }

    public function edit($id){
         $data = training::find($id);
        session()->put('employee_id', $data->employee_id);
        $countries = country::all();
        $employee = employee::find(session('employee_id'));
        $trainingIds = training::all()->where('employee_id', session('employee_id'));
        $educationIds = education::all()->where('employee_id', session('employee_id'));
        $publicationIds = publication::all()->where('employee_id', session('employee_id'));

        return view ('hr.education.education',compact('data','employee','educationIds','countries','trainingIds','publicationIds'));
       
        //return view ('hr.training.editTraining',compact('data','employee','trainingIds','countries'));
    }
    
    public function update(StoreTraining $request, $id)
    {
     
     $data = $request->all();
        if($request->filled('from')){
        $data ['from']= \Carbon\Carbon::parse($request->from)->format('Y-m-d');
        }
        if($request->filled('to')){
        $data ['to']= \Carbon\Carbon::parse($request->to)->format('Y-m-d');
        }
    
    training::findOrFail($id)->update($data);
     return back()->with('success', 'Data successfully updated');    }

    public function destroy(Request $request, $id)
    {
    training::findOrFail($id)->delete(); 
   return back()->with('success', 'Data successfully deleted');
    }
}
