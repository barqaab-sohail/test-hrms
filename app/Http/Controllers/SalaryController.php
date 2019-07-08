<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreSalary;
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

    public function update(StoreSalary $request, $id)
    {
      $employee = employee::find($id);

      $salary = DB::table('salaries')->where('employee_id',$id)->where('promotion_id',NULL)->first();

      if ($salary==null){
      salary::create($request->all());   
      }else{
        salary::findOrFail($salary->id)->update($request->all());
      }
     return redirect()->route('appointment.edit',['id'=>session('employee_id')])->with('success', 'Salary is saved succesfully');
    }



}
