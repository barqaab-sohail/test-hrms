<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\employee;
use App\language;
use DB;

class LanguageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create($id){

        $employee = employee::find($id);
        $languageIds = language::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('language.language',compact('employee','employees','languageIds'));
    }

	public function store(Request $request){
         $request->validate([
         'name' => 'required|max:255',
         ]);

        $data = language::create($request->all());

        return redirect()->route('language',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      // return redirect()->route('language',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
        $employee = employee::find(session('employee_id'));
        $languageIds = language::all()->where('employee_id', session('employee_id'));
        $data = language::find($id);
        return view ('language.editLanguage',compact('data','employee','languageIds'));
    }
    
    public function update(Request $request, $id)
    {
     
     language::findOrFail($id)->update($request->all());
     return redirect()->route('language.edit',['id'=>$id])->with('success', 'Language Detail is updated succesfully');
    }
}
