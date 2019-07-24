<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StorePosting;
use App\employee;
use App\posting;
use App\project;
use DB;

class PostingController extends Controller
{
   public function __construct()
    {
        $this->middleware('auth');
    }

    public function create($id){

        $employee = employee::find($id);
        $employees = DB::table('employees')
                    ->join('appointments','employees.id','=','appointments.employee_id')
                    ->select('employees.*','appointments.*')->get();


        $postingIds = posting::all()->where('employee_id', $id);
        $projects = project::all();
        return view ('hr.posting.posting',compact('employee','employees','projects','postingIds'));
    }

	public function store(StorePosting $request){

        $data = $request->all();
        $data ['posting_date']= \Carbon\Carbon::parse($request->posting_date)->format('Y-m-d');         
        posting::create($data);
        return redirect()->route('posting',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      

    }

    public function edit($id){
        $employees = DB::table('employees')
                    ->join('appointments','employees.id','=','appointments.employee_id')
                    ->join('postings','employees.id','=','postings.employee_id')
                    ->select('employees.*','appointments.*','postings.*')->get();
        
        $employee = employee::find(session('employee_id'));
        $postingIds = posting::all()->where('employee_id', session('employee_id'));
        $projects = project::all();
        $data = posting::find($id);
        return view ('hr.posting.editPosting',compact('data','employee','employees','postingIds','projects'));
    }
    
    public function update(StorePosting $request, $id)
    {
    
    $data = $request->all();
    $data ['posting_date']= \Carbon\Carbon::parse($request->posting_date)->format('Y-m-d');  

     posting::findOrFail($id)->update($data);
     return redirect()->route('posting.edit',['id'=>$id])->with('success', 'Posting is updated succesfully');
    }

    public function delete(Request $request, $id)
    {
        
    posting::findOrFail($id)->delete();
    return redirect()->route('posting',['id'=>session('employee_id')])->with('success', 'Document is deleted succesfully');
    }
}
