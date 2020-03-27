<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreEducation;
use App\User;
use App\employee;
use App\education;
use App\training;
use App\publication;
use App\country;

use DB;

class EducationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function create(){
        $employee = employee::find(session('employee_id'));
        $countries = country::all();
        $educationIds = education::all()->where('employee_id', session('employee_id'));
        $trainingIds = training::all()->where('employee_id', session('employee_id'));
        $publicationIds = publication::all()->where('employee_id', session('employee_id'));
        $employees = employee::all();
        return view ('hr.education.education',compact('employee','employees','educationIds','countries','trainingIds','publicationIds'));
    }

	public function store(StoreEducation $request){
        
        $data = $request->all();
        Education::create($data);
        return back()->with('success', 'Data successfully saved');
    }

    public function edit($id){
        $data = education::find($id);
        session()->put('employee_id', $data->employee_id);
        $countries = country::all();
        $employee = employee::find(session('employee_id'));
        $educationIds = education::all()->where('employee_id', session('employee_id'));
        $trainingIds = training::all()->where('employee_id', session('employee_id'));
        $publicationIds = publication::all()->where('employee_id', session('employee_id'));
       
        return view ('hr.education.education',compact('data','employee','educationIds','countries','trainingIds','publicationIds'));
    }
    
    public function update(StoreEducation $request, $id)
    {     
        $data = $request->all();
        //$data ['from']= \Carbon\Carbon::parse($request->from)->format('Y-m-d');
       
     Education::findOrFail($id)->update($data);
     return back()->with('success', 'Data successfully Updated');
    }

    public function destroy(Request $request, $id)
    {
    Education::findOrFail($id)->delete(); 
    return back()->with('success', 'Data successfully deleted');
    
    }

}
