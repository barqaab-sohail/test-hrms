<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreOther;
use App\employee;
use App\other_information;
use App\blood_group;
use DB;

class OtherController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function edit($id){

       $employee = employee::find($id);
       $blood_groups= blood_group::all();
            
       return view ('hr.other_information.editOther', compact('employee','blood_groups'));
    }

    
    public function update(StoreOther $request, $id)
    {
      
      $data = $request->all();
      if($request->filled('passport_expiry')){
      $data ['passport_expiry']= \Carbon\Carbon::parse($request->passport_expiry)->format('Y-m-d');
      }
      if($request->filled('licence_expiry')){
      $data ['licence_expiry']= \Carbon\Carbon::parse($request->licence_expiry)->format('Y-m-d');
      }

      other_information::updateOrCreate(
      ['employee_id' => $id],
      $data);

      return redirect()->route('other.edit',['id'=>session('employee_id')])->with('success', 'Other Information  is saved succesfully');

    }
}
