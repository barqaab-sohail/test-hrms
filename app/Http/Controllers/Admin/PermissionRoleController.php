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
    	dd($permissions->roles);

    	$test = hasPermission('view personal record');
    	return view('admin.permissionRole.index', compact('roles','permissions'));
    }


}
