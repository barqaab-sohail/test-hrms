<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\project;
use DB;

class ProjectController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }
	
	public function index(){

		$projects = project::all();
       return view ('project.projectList',compact('projects'));

    }

    public function create(){
        
        return view ('project.createProject');
    }

    public function store (Request $request){
        /* $request->validate([
         'first_name' => 'required|max:255',
         'last_name' => 'required|max:255',
         'email' => 'required|unique:users|email',
         'cnic' => 'required|unique:users|numeric|digits:13',
         'cnic_expiry' => 'required|date|after:tomorrow',
         'picture' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2000',
          ]);
         $imageName = time().'.'.request()->picture->getClientOriginalExtension();
        request()->picture->move(public_path('images'), $imageName);
        $input['picture'] = $imageName;
        */
        
        project::create($request->all());
        $projects = project::all();
        return view ('project.projectList',compact('projects'));
    }


}
