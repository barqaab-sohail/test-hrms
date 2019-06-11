<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\employee;
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

      // return redirect('userList')->with('message', 'Data Sucessfully Save')->with('data', $data);
      
      return redirect('/salary')->with(['user_id'=>$data->user_id, 'message'=>'Data Sucessfully Save']);
      // return redirect()->route('education',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
         
         $data = employee::find($id)->education->first();
         return view ('education.editEducation')->with ('data', $data);
    }
    
    public function update(Request $request, $id)
    {
     Education::findOrFail($id)->update($request->all());
     return redirect()->route('education.edit',['id'=>session('user_id')])->with('success', 'Employee is updated succesfully');
    }

}
