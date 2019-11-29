<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\contact;
use App\country;

class ContactController extends Controller
{
   
   public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }
    
	public function editAddress($id){
      $countries = country::all();
       $employee = employee::find($id);
       //dd($employee->contact->first()->employee_id);
       if (isset($employee->contact->first()->employee_id))
       	{
       	
        $currentAddress = contact::where('employee_id',$employee->contact->first()->employee_id)->where('type',1)->first();
       	$permanentAddress = contact::where('employee_id',$employee->contact->first()->employee_id)->where('type',0)->first();
   		}else
   		{
   				$currentAddress = null;
   				$permanentAddress = null;
   		}
       return view ('hr.contact.editContact', compact('employee','permanentAddress','currentAddress','countries'));
    }

    public function updatePermanent(Request $request, $id)
    {
        
    contact::updateOrCreate(
    ['employee_id' => $id, 'type' => '0'],
    $request->all());

         	
    return redirect()->route('contact.edit',['id'=>session('employee_id')])->with('success', 'Permanent Address is saved succesfully');
      
    }

    public function updateCurrent(Request $request, $id)
    {
       	

    contact::updateOrCreate(
    ['employee_id' => $id, 'type' => '1'],
    $request->all());

    
    return redirect()->route('contact.edit',['id'=>session('employee_id')])->with('success', 'Current Address is saved succesfully');
      
    }


}
