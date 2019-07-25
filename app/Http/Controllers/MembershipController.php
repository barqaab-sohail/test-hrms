<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreMembership;
use App\employee;
use App\membership;
use DB;

class MembershipController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function create($id){

        $employee = employee::find($id);
        $membershipIds = membership::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('hr.membership.membership',compact('employee','employees','membershipIds'));
    }

	public function store(StoreMembership $request){
        
        $data = membership::create($request->all());

        return redirect()->route('membership',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      // return redirect()->route('membership',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
        $employee = employee::find(session('employee_id'));
        $membershipIds = membership::all()->where('employee_id', session('employee_id'));
        $data = membership::find($id);
        return view ('hr.membership.editMembership',compact('data','employee','membershipIds'));
    }
    
    public function update(StoreMembership $request, $id)
    {
     
     membership::findOrFail($id)->update($request->all());
     return redirect()->route('membership.edit',['id'=>$id])->with('success', 'Membership is updated succesfully');
    }

     public function delete(Request $request, $id)
    {
    membership::findOrFail($id)->delete(); 
    return redirect()->route('membership',['id'=>session('employee_id')])->with('success', 'Membership is deleted succesfully');
    }

}
