<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreTraining;
use App\User;
use App\employee;
use App\country;
use App\training;
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
        return redirect()->route('training.create')->with('success', 'Data is saved succesfully');
    }

    public function edit($id){
        $countries = country::all();
        $employee = employee::find(session('employee_id'));
        $trainingIds = training::all()->where('employee_id', session('employee_id'));
        $data = training::find($id);
        return view ('hr.training.editTraining',compact('data','employee','trainingIds','countries'));
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
     return redirect()->route('training.edit',['id'=>$id])->with('success', 'training is updated succesfully');
    }

    public function destroy(Request $request, $id)
    {
    training::findOrFail($id)->delete(); 
    return redirect()->route('training.create')->with('success', 'Training is deleted succesfully');
    }
}
