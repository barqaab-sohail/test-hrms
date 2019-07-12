<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreUser;
use App\employee;
use App\role;
use App\User;

class UserController extends Controller
{

  public function __construct()
    {
        $this->middleware('auth');
    }
    
	public function edit($id){

        $employee = employee::find($id);
        $roles = role::all();
        
       return view ('hr.user.editUser', compact('employee','roles'));
        //return redirect()->route('user.edit',['employee'=>$employee,'roles'=>$roles]);

    }

     public function update(StoreUser $request, $id)
    {
       	$employee = employee::find($id);
      	$roles = role::all();
        $user = User::where ('employee_id',$id)->first();
        
        if ($user==null){
    	
    	     	
        User::create($request->all());
          
        }else{
   	
    	$userId = $employee->user->id;

   				User::findOrFail($userId)->update($request->all());
        }
       	
      	return redirect()->route('user.edit',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      
    }

}
