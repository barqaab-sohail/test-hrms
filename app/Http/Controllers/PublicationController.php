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
    }

    public function create($id){

        $employee = employee::find($id);
        $publicationIds = publication::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('hr.publication.publication',compact('employee','employees','publicationIds'));
    }

	public function store(Request $request){
         $request->validate([
         'description' => 'required|max:255',
         ]);

        $data = publication::create($request->all());

        return redirect()->route('publication',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      // return redirect()->route('publication',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
        $employee = employee::find(session('employee_id'));
        $publicationIds = publication::all()->where('employee_id', session('employee_id'));
        $data = publication::find($id);
        return view ('hr.publication.editPublication',compact('data','employee','publicationIds'));
    }
    
    public function update(Request $request, $id)
    {
     
     publication::findOrFail($id)->update($request->all());
     return redirect()->route('publication.edit',['id'=>$id])->with('success', 'Publication is updated succesfully');
    }

    public function delete(Request $request, $id)
    {
    publication::findOrFail($id)->delete(); 
    return redirect()->route('publication',['id'=>session('employee_id')])->with('success', 'Publication is deleted succesfully');
    }



}
