<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Education;
use DB;

class EducationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }


    public function create(){
       
       return view ('education.education');
    }

	public function store(Request $request){
         $request->validate([
         'degree_name' => 'required|max:255',
         'institute' => 'required|max:255',
         ]);

        $input = $request->all();
        $data = Education::create($input);

       return redirect('userList')->with('message', 'Data Sucessfully Save')->with('data', $data);


    }

}
