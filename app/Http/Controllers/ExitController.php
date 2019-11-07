<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\employee_status;

class ExitController extends Controller
{
    
 public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function edit($id){

       $employee = employee::find($id);
       $status = employee_status::all();
       return view ('hr.exit.exit', compact('employee','status'));
    }
    public function update(Request $request, $id)  {
            
   	// dd(employee::findOrFail($id));
     employee::findOrFail($id)->update($request->all());

     return redirect()->back()->with('message', 'Data Sucessfully Save');
            
    }


}
