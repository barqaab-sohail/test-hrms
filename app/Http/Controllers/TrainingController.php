<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\employee;
use App\training;
use DB;

class TrainingController extends Controller
{
   public function __construct()
    {
        $this->middleware('auth');
    }

    public function create($id){

        $employee = employee::find($id);
        $trainingIds = training::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('training.training',compact('employee','employees','trainingIds'));
    }

	public function store(Request $request){
         $request->validate([
         'institute' => 'required|max:255',
         'countary' => 'required|max:255',
         ]);

        $data = training::create($request->all());

        return redirect()->route('training',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      // return redirect()->route('training',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
        $employee = employee::find(session('employee_id'));
        $trainingIds = training::all()->where('employee_id', session('employee_id'));
        $data = training::find($id);
        return view ('training.editTraining',compact('data','employee','trainingIds'));
    }
    
    public function update(Request $request, $id)
    {
     
     training::findOrFail($id)->update($request->all());
     return redirect()->route('training.edit',['id'=>$id])->with('success', 'training is updated succesfully');
    }
}
