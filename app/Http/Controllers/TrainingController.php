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

    public function create($id){

        $countries = country::all();
        $employee = employee::find($id);
        $trainingIds = training::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('hr.training.training',compact('employee','employees','trainingIds','countries'));
    }

	public function store(StoreTraining $request){
        

        $data = $request->all();
        $data ['from']= \Carbon\Carbon::parse($request->from)->format('Y-m-d');
        $data ['to']= \Carbon\Carbon::parse($request->to)->format('Y-m-d');

        training::create($data);
        return redirect()->route('training',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      // return redirect()->route('training',['id'=>$data->id])->with('success', 'User is created succesfully');


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
    $data ['from']= \Carbon\Carbon::parse($request->from)->format('Y-m-d');
    $data ['to']= \Carbon\Carbon::parse($request->to)->format('Y-m-d');
    
    training::findOrFail($id)->update($data);
     return redirect()->route('training.edit',['id'=>$id])->with('success', 'training is updated succesfully');
    }

    public function delete(Request $request, $id)
    {
    training::findOrFail($id)->delete(); 
    return redirect()->route('training',['id'=>session('employee_id')])->with('success', 'Training is deleted succesfully');
    }
}
