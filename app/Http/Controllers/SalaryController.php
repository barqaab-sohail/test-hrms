<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\salary;
use DB;

class SalaryController extends Controller
{
   public function __construct()
    {
        $this->middleware('auth');
    }

    public function create(){
       
       return view ('salary.salary');
    }

    public function store (Request $request){
        
        $input = $request->all();
                      
       	$data = salary::create($input);

        //return view ('education.education')->with('data', $data)->with('message', 'Data Sucessfully Save');

        //return redirect('/education')->with('message', 'Data Sucessfully Save');
        return redirect('/userList') ->with(['user_id'=>$data->user_id, 'message'=>'Data Sucessfully Save']);
    }

    public function edit($id){
          $data = User::find($id)->salary()->first();
          return view ('salary.editSalary')->with ('data', $data);
    }

    public function update(Request $request, $id=null)
    {
      if ($id==null){
        $input = $request->all();
                      
        $data = salary::create($input);

         return redirect()->route('salary.edit',['id'=>session('user_id')])->with('success', 'Data Saved  succesfully');

      }else
      {
       salary::findOrFail($id)->update($request->all());
       return redirect()->route('salary.edit',['id'=>session('user_id')])->with('success', 'Employee is updated succesfully');
      }
    }



}
