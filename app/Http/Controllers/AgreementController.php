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
       $salary = DB::table('salaries')->where('employee_id',$id)->where('promotion_id',NULL)->first();
       
                  
       return view ('hr.agreement.editAgreement', compact('employee','salary'));
    }

     public function update(Request $request, $id)  {

        $employee = employee::find($id);
        
        $agreement = contract::where ('employee_id',$id)->first();
        if ($agreement!=null){
          $agreementId = $employee->contract->id;
        	 contract::findOrFail($agreementId)->update($request->all());
        }else
        {
        contract::create($request->all());
        }
       
       return redirect()->route('agreement.edit',['id'=>session('employee_id')])->with('success', 'Agreement Detail is saved succesfully');
    }
}
