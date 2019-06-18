<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\contact;

class AddressController extends Controller
{
   
   public function __construct()
    {
        $this->middleware('auth');
    }
    
	public function editAddress($id){

       $employee = employee::find($id);
       if (isset($employee->contact->id))
       	{
       	$currentAddress = contact::find($employee->contact->id)->where('type','1')->first();
       	$permanentAddress = contact::find($employee->contact->id)->where('type','0')->first();
   		}else
   		{
   				$currentAddress = null;
   				$permanentAddress = null;
   		}
       return view ('contact.editContact', compact('employee','permanentAddress','currentAddress'));
    }

    public function updatePermanent(Request $request, $id)
    {
             	
        $contact = contact::where ('employee_id',$id)->where('type','0')->first();
        
        if ($contact==null){
    	
    	   $this->validate($request, [
        'house' => 'required',
        ]);
    	
        contact::create($request->all());
          
        }else{
   		$contactId = $contact->id;

   		$this->validate($request, [
        'house' => 'required'
        ]);
   		contact::findOrFail($contactId)->update($request->all());
        }
       	
      	return redirect()->route('contact.edit',['id'=>session('employee_id')])->with('success', 'Permanent Address is saved succesfully');
      
    }

    public function updateCurrent(Request $request, $id)
    {
       	

        $contact = contact::where ('employee_id',$id)->where('type','1')->first();
        
        if ($contact==null){
    	
    	   $this->validate($request, [
        'house' => 'required',
        ]);
    	
        contact::create($request->all());
          
        }else{
   		$contactId = $contact->id;


   		$this->validate($request, [
        'house' => 'required'
        ]);
   		contact::findOrFail($contactId)->update($request->all());
        }
       	
      	return redirect()->route('contact.edit',['id'=>session('employee_id')])->with('success', 'Current Address is saved succesfully');
      
    }


}
