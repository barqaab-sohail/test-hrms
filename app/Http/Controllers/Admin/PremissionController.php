<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Permission;

class PremissionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        
    }

    public function index(){
    	$premissionIds = Permission::all();
    	return view('admin.premission.index', compact('premissionIds'));
    }

    public function store (Request $request){

    	$premission = Permission::create(['name' => $request->name]);

    	 return redirect()->route('premission.index')->with('success', 'Data is saved succesfully');
    }

    public function edit($id){
        
       $premissionIds = Permission::all();
        $data = Permission::find($id);
        return view ('admin.premission.edit',compact('data','premissionIds'));
    }
    
    public function update(Request $request, $id)
    {
     
     Permission::findOrFail($id)->update(['name' => $request->name]);
      return redirect()->route('premission.index')->with('success', 'Data is updated succesfully');
     //return redirect()->route('role.edit',['id'=>$id])->with('success', 'Data is update succesfully');
    }

    public function destroy(Request $request, $id)
    {
    Permission::findOrFail($id)->delete(); 
    return redirect()->route('premission.index')->with('success', 'Data is deleted succesfully');
    }

}
