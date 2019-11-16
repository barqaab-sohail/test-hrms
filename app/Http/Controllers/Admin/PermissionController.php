<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Permission;
use App\Http\Requests\Admin\StorePermission;


class PermissionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        
    }

    public function index(){
    	$permissionIds = Permission::all();
    	return view('admin.permission.index', compact('permissionIds'));
    }

    public function store (Request $request){

    	$permission = Permission::create(['name' => $request->name]);

    	 return redirect()->route('permission.index')->with('success', 'Data is saved succesfully');
    }

    public function edit($id){
        
       $permissionIds = Permission::all();
        $data = Permission::find($id);
        return view ('admin.permission.edit',compact('data','permissionIds'));
    }
    
    public function update(Request $request, $id)
    {
     
     Permission::findOrFail($id)->update(['name' => $request->name]);
      return redirect()->route('permission.index')->with('success', 'Data is updated succesfully');
     //return redirect()->route('role.edit',['id'=>$id])->with('success', 'Data is update succesfully');
    }

    public function destroy(Request $request, $id)
    {
    Permission::findOrFail($id)->delete(); 
    return redirect()->route('permission.index')->with('success', 'Data is deleted succesfully');
    }

}
