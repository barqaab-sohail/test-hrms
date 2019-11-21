<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreUser;
use App\employee;
use App\User;
use Spatie\Permission\Models\Role;

class UserController extends Controller
{

  public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }
    
	public function edit($id){

        $employee = employee::find($id);
      
         $user = User::where ('employee_id',$id)->first();
        
        $permissions = null;
        if($user!=null){
        $permissions = $user->getAllPermissions();
        }
    
         $roleName='';
          if($user!=null){ 
            $roleName = $user->getRoleNames()->first(); 
          }
        
        $roles = role::all();
        $roles->forget(4);
       
        
       return view ('hr.user.editUser', compact('employee','roles','roleName','permissions'));
        //return redirect()->route('user.edit',['employee'=>$employee,'roles'=>$roles]);

    }

     public function update(StoreUser $request, $id)
    {
       	$employee = employee::find($id);
        $user = User::where ('employee_id',$id)->first();
        
          if ($user==null){
      	
          $user = User::create($request->all());
          $user->assignRole($request->role);
            
          }else{

     				User::findOrFail($user->id)->update($request->all());
              if($user->roles->first()!=null){
                $allRoles = $user->getRoleNames();

                foreach($allRoles as $role){
                  $user->removeRole($role);
                }
              }
            
            $user->assignRole($request->role);
          }
       	
      	return redirect()->route('user.edit',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      
    }

}
