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

    public function create(){

        $employee = employee::find(session('employee_id'));
        $membershipIds = membership::all()->where('employee_id', session('employee_id'));
        $employees = employee::all();
        return view ('hr.membership.membership',compact('employee','employees','membershipIds'));
    }

	public function store(StoreMembership $request){
        
        $data = $request->all();
        if($request->filled('expiry_date')){
        $data ['expiry_date']= \Carbon\Carbon::parse($request->expiry_date)->format('Y-m-d');
            }
        membership::create($data);

        return redirect()->route('membership.create')->with('success', 'Data is saved succesfully');
      // return redirect()->route('membership',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
        $data = membership::find($id);
        session()->put('employee_id', $data->employee_id);
        $employee = employee::find(session('employee_id'));
        $membershipIds = membership::all()->where('employee_id', session('employee_id'));
        
        return view ('hr.membership.editMembership',compact('data','employee','membershipIds'));
    }
    
    public function update(StoreMembership $request, $id)
    {
     $data = $request->all();
        if($request->filled('expiry_date')){
        $data ['expiry_date']= \Carbon\Carbon::parse($request->expiry_date)->format('Y-m-d');
            }
     membership::findOrFail($id)->update($data);
     return redirect()->route('membership.edit',['id'=>$id])->with('success', 'Membership is updated succesfully');
    }

     public function destroy(Request $request, $id)
    {

    membership::findOrFail($id)->delete(); 
    
    return redirect()->route('membership.create')->with('success', 'Membership is deleted succesfully');
    }

}
