<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\dependent;
use DB;

class DependentController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create($id){

        $employee = employee::find($id);
        $dependentIds = dependent::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('dependent.dependent',compact('employee','employees','dependentIds'));
    }

	public function store(Request $request){
         $request->validate([
         'name' => 'required|max:255',
         ]);

        $data = dependent::create($request->all());

        return redirect()->route('dependent',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
    // return redirect()->route('dependent',['id'=>$data->id])->with('success', 'User is created succesfully');

    }

    public function edit($id){
        $employee = employee::find(session('employee_id'));
        $dependentIds = dependent::all()->where('employee_id', session('employee_id'));
        $data = dependent::find($id);
        return view ('dependent.editDependent',compact('data','employee','dependentIds'));
    }
    
    public function update(Request $request, $id)
    {
     
     dependent::findOrFail($id)->update($request->all());
     return redirect()->route('dependent.edit',['id'=>$id])->with('success', 'Dependent Detail is updated succesfully');
    }
}
