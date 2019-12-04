<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class PermissionRoleController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        
    }

    public function index(){
    	$roles = Role::all();
    	$permissions = permission::all();
        	foreach($roles as $role){
                
                $permissions = $role->getAllPermissions();

                foreach($permissions as $permission){
                     $role->name.' - '.$permission->name.'<br>';
                }      

            }
  	
        return view('admin.permissionRole.index', compact('roles','permissions'));
        
    }


}
