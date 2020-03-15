<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\employee;
use App\publication;
use DB;

class PublicationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
         $this->middleware('updation')->only('delete','update', 'store');
    }

    public function create(){

        $employee = employee::find(session('employee_id'));
        $publicationIds = publication::all()->where('employee_id', session('employee_id'));
        $employees = employee::all();
        return view ('hr.publication.publication',compact('employee','employees','publicationIds'));
    }

	public function store(Request $request){
         $request->validate([
         'description' => 'required|max:255',
         ]);

        $data = publication::create($request->all());

        return redirect()->route('publication.create')->with('success', 'Data is saved succesfully');
      // return redirect()->route('publication',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
       $data = publication::find($id);
       session()->put('employee_id', $data->employee_id);

        $employee = employee::find(session('employee_id'));
        $publicationIds = publication::all()->where('employee_id', session('employee_id'));
       
        return view ('hr.publication.editPublication',compact('data','employee','publicationIds'));
    }
    
    public function update(Request $request, $id)
    {
     
     publication::findOrFail($id)->update($request->all());
     return redirect()->route('publication.edit',['id'=>$id])->with('success', 'Publication is updated succesfully');
    }

    public function destroy(Request $request, $id)
    {
    publication::findOrFail($id)->delete(); 
    return redirect()->route('publication.create')->with('success', 'Publication is deleted succesfully');
    }



}
