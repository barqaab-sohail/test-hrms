<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Role;

class RoleController extends Controller
{
    
	 public function __construct()
    {
        $this->middleware('auth');
        
    }

    public function index(){
    	$roleIds = Role::all();
    	return view('admin.role.index', compact('roleIds'));
    }

    public function store (Request $request){

    	$role = Role::create(['name' => $request->name]);

    	 return redirect()->route('role.index')->with('success', 'Data is saved succesfully');
    }

    public function edit($id){
        
       $roleIds = Role::all();
        $data = Role::find($id);
        return view ('admin.role.edit',compact('data','roleIds'));
    }
    
    public function update(Request $request, $id)
    {
     
     Role::findOrFail($id)->update(['name' => $request->name]);
      return redirect()->route('role.index')->with('success', 'Data is updated succesfully');
     //return redirect()->route('role.edit',['id'=>$id])->with('success', 'Data is update succesfully');
    }

    public function destroy(Request $request, $id)
    {
    Role::findOrFail($id)->delete(); 
    return redirect()->route('role.index')->with('success', 'Data is deleted succesfully');
    }


}
