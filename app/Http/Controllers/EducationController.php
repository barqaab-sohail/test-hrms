<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\employee;
use App\education;
use DB;

class EducationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create($id){

        $employee = employee::find($id);
        $educationIds = education::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('education.education',compact('employee','employees','educationIds'));
    }

	public function store(Request $request){
         $request->validate([
         'degree_name' => 'required|max:255',
         'institute' => 'required|max:255',
         ]);

        $data = Education::create($request->all());

        return redirect()->route('education',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      // return redirect()->route('education',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
        $employee = employee::find(session('employee_id'));
        $educationIds = education::all()->where('employee_id', session('employee_id'));
        $data = education::find($id);
        return view ('education.editEducation',compact('data','employee','educationIds'));
    }
    
    public function update(Request $request, $id)
    {
     
     Education::findOrFail($id)->update($request->all());
     return redirect()->route('education.edit',['id'=>$id])->with('success', 'Education is updated succesfully');
    }

}
