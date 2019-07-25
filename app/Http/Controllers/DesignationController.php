<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\designation;

class DesignationController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }


    public function index(){

	   $designationIds = designation::all();
       return view ('hr.designation.addDesignation',compact('designationIds'));

    }

    public function store (Request $request){
                
        designation::create($request->all());
		return redirect()->route('addDesignation')->with('success', 'Designation is saved succesfully');
       
    }

    public function edit($id){
       $designationIds = designation::all();
        $data = designation::find($id);
        return view ('hr.designation.editDesignation',compact('designationIds','data'));
    }

    public function update(Request $request, $id)
    {
     
     designation::findOrFail($id)->update($request->all());
     return redirect()->route('designation.edit',['id'=>$id])->with('success', 'Designation is updated succesfully');
    }

 	public function delete(Request $request, $id)
    {
    designation::findOrFail($id)->delete(); 
    return redirect()->route('addDesignation')->with('success', 'Designation is deleted succesfully');
    }




}
