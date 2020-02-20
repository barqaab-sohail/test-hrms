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
    	return view('admin.permissionRole.index', compact('roles','permissions'));
    }

    public function store(Request $request){
        $permission = permission::where('name',$request->permission)->first();
        $role = role::where('name',$request->role)->first();
        $permission->assignRole($role);
        return back()->with('success', 'Permission successfully assigned.');
    }

    public function delete(Request $request, $role_id, $permission_id)
    {
       
        $role = role::where('id',$role_id)->first();
        $permission = role::where('id',$permission_id)->first();
        $role->revokePermissionTo($permission);
        
        return back()->with('success', 'Successfully revoke permission to role.');

    }

}
