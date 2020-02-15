<?php

namespace App\Http\Controllers\cv;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\cv\cv_membership;
use App\Http\Requests\cv\membershipStore;

class addMembershipController extends Controller
{
    public function index(){

    	$memberships = cv_membership::all();
    	return view('cv.services.addMembership.index',compact('memberships'));
    }

    public function store (membershipStore $request){

    	
        cv_membership::create(['membership_name' => $request->membership_name]);

    	 return redirect()->route('addMembership.index')->with('success', 'Data is saved succesfully');
    }

    public function edit($id){
        
       $memberships = cv_membership:: all();
        $data = cv_membership::find($id);
        return view ('cv.services.addMembership.edit',compact('data','memberships'));
    }
    
    public function update(membershipStore $request, $id)
    {
     
     cv_membership::findOrFail($id)->update(['membership_name' => $request->membership_name]);
      return redirect()->route('addMembership.index')->with('success', 'Data is updated succesfully');
    }

    public function destroy(Request $request, $id)
    {
    cv_membership::findOrFail($id)->delete(); 
    return redirect()->route('addMembership.index')->with('success', 'Data is deleted succesfully');
    }

}
