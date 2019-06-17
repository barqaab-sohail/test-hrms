<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\membership;
use DB;

class MembershipController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create($id){

        $employee = employee::find($id);
        $membershipIds = membership::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('membership.membership',compact('employee','employees','membershipIds'));
    }

	public function store(Request $request){
         $request->validate([
         'institute' => 'required|max:255',
         ]);

        $data = membership::create($request->all());

        return redirect()->route('membership',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      // return redirect()->route('membership',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
        $employee = employee::find(session('employee_id'));
        $membershipIds = membership::all()->where('employee_id', session('employee_id'));
        $data = membership::find($id);
        return view ('membership.editMembership',compact('data','employee','membershipIds'));
    }
    
    public function update(Request $request, $id)
    {
     
     membership::findOrFail($id)->update($request->all());
     return redirect()->route('membership.edit',['id'=>$id])->with('success', 'Membership is updated succesfully');
    }
}
