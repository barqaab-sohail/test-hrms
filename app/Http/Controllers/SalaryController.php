<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\salary;
use DB;

class SalaryController extends Controller
{
   public function __construct()
    {
        $this->middleware('auth');
    }

    public function edit($id){
       $employee = employee::find($id);
       return view ('hr.salary.editSalary', compact('employee'));      
    }

    public function update(Request $request, $id)
    {
      $employee = employee::find($id);
      $salary = salary::where ('employee_id',$id)->first();
      
      if ($salary==null){
      salary::create($request->all());   
      }else{
      $salaryId = $employee->salary->id;
      salary::findOrFail($salaryId)->update($request->all());
      }
      return redirect()->route('salary.edit',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
    }



}
