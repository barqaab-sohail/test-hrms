<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\other_information;
use App\blood_group;
use DB;

class OtherController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
    }

    public function edit($id){

       $employee = employee::find($id);
       $blood_groups= blood_group::all();
            
       return view ('other_information.editOther', compact('employee','blood_groups'));
    }

     public function update(Request $request, $id)
    {
     
        $other = other_information::where ('employee_id',$id)->first();
        if ($other!=null){
        	 other_information::findOrFail($id)->update($request->all());
        }else
      
        {
        other_information::create($request->all());
       }
       return redirect()->route('other.edit',['id'=>session('employee_id')])->with('success', 'Other Information  is saved succesfully');

    }
}
