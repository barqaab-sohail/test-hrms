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
        $postingIds = posting::all()->where('employee_id', $id);
        $projects = project::all();
        return view ('hr.posting.posting',compact('employee','projects','postingIds'));
    }

	public function store(StorePosting $request){
         

        $data = posting::create($request->all());

        return redirect()->route('posting',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      // return redirect()->route('membership',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
        $employee = employee::find(session('employee_id'));
        $postingIds = posting::all()->where('employee_id', session('employee_id'));
        $projects = project::all();
        $data = posting::find($id);
        return view ('hr.posting.editPosting',compact('data','employee','postingIds','projects'));
    }
    
    public function update(StorePosting $request, $id)
    {
     
     posting::findOrFail($id)->update($request->all());
     return redirect()->route('posting.edit',['id'=>$id])->with('success', 'Posting is updated succesfully');
    }

    public function delete(Request $request, $id)
    {
        
    posting::findOrFail($id)->delete();
    return redirect()->route('posting',['id'=>session('employee_id')])->with('success', 'Document is deleted succesfully');
    }
}
