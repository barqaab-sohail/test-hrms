<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\contract;
use App\salary;
use App\blood_group;
use DB;

class AgreementController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
    }

    public function edit($id){

       $employee = employee::find($id);
                  
       return view ('hr.agreement.editAgreement', compact('employee'));
    }

     public function update(Request $request, $id)
    {
        $employee = employee::find($id);
        $agreementId = $employee->contract->id;
        $agreement = contract::where ('employee_id',$id)->first();
        if ($agreement!=null){
        	 contract::findOrFail($agreementId)->update($request->all());
        }else
        {
        contract::create($request->all());
        }
        $salaryId = $employee->salary->id;
        $salary = salary::where ('employee_id',$id)->first();
        if ($salary!=null){
        salary::findOrFail($salaryId)->update($request->all());
        }else{
        salary::create($request->all());
        }
       return redirect()->route('agreement.edit',['id'=>session('employee_id')])->with('success', 'Agreement Detail is saved succesfully');
    }
}
