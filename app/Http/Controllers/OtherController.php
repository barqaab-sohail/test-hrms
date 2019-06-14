<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class OtherController extends Controller
{
    public function edit($id){

        $employee = employee::find($id);
        $roles = role::all();
        
       return view ('other.editOther', compact('employee','roles'));
    }

     public function update(Request $request, $id)
    {

      

        $user = User::where ('employee_id',$id)->first();

        if ($user!=null){
        	 User::findOrFail($id)->update($request->all());
        }else
        
        {

        User::create($request->all());
      
       }
       return redirect()->route('other.edit',['id'=>session('employee_id')])->with('success', 'Other Information  is saved succesfully');

    }
}
