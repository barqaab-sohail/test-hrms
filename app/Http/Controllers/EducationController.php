<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreEducation;
use App\User;
use App\employee;
use App\education;
use App\country;

use DB;

class EducationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create($id){

        $employee = employee::find($id);
        $countries = country::all();
        $educationIds = education::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('hr.education.education',compact('employee','employees','educationIds','countries'));
    }

	public function store(StoreEducation $request){
        
        $data = $request->all();
        $data ['from']= \Carbon\Carbon::parse($request->from)->format('Y-m-d');
        $data ['to']= \Carbon\Carbon::parse($request->to)->format('Y-m-d');

        Education::create($data);
        return redirect()->route('education',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
    }

    public function edit($id){
        $countries = country::all();
        $employee = employee::find(session('employee_id'));
        $educationIds = education::all()->where('employee_id', session('employee_id'));
        $data = education::find($id);
        return view ('hr.education.editEducation',compact('data','employee','educationIds','countries'));
    }
    
    public function update(StoreEducation $request, $id)
    {     
        $data = $request->all();
        $data ['from']= \Carbon\Carbon::parse($request->from)->format('Y-m-d');
        $data ['to']= \Carbon\Carbon::parse($request->to)->format('Y-m-d');

     Education::findOrFail($id)->update($data);
     return redirect()->route('education.edit',['id'=>$id])->with('success', 'Education is updated succesfully');
    }

    public function delete(Request $request, $id)
    {
          
    Education::findOrFail($id)->delete(); 
    return redirect()->route('education',['id'=>session('employee_id')])->with('success', 'Education is deleted succesfully');
    
    }

}
