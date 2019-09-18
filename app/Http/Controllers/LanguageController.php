<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreLanguage;
use App\employee;
use App\language;
use App\all_language;
use DB;

class LanguageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function create(){

        $allLanguages = all_language::all();
        $employee = employee::find(session('employee_id'));
        $languageIds = language::all()->where('employee_id', session('employee_id'));
        $employees = employee::all();

        return view ('hr.language.language',compact('employee','employees','languageIds','allLanguages'));
    }

	public function store(StoreLanguage $request){
        
        $data = language::create($request->all());
        return redirect()->route('language.create')->with('success', 'Data is saved succesfully');
    }

    public function edit($id){
        
        $allLanguages = all_language::all();
        $employee = employee::find(session('employee_id'));
        $languageIds = language::all()->where('employee_id', session('employee_id'));

        $data = language::find($id);
        return view ('hr.language.editLanguage',compact('data','employee','languageIds','allLanguages'));
    }
    
    public function update(StoreLanguage $request, $id)
    {
     
     language::findOrFail($id)->update($request->all());
     return redirect()->route('language.edit',['id'=>$id])->with('success', 'Language Detail is updated succesfully');
    }

    public function destroy(Request $request, $id)
    {
          
    language::findOrFail($id)->delete();

    return redirect()->route('language.create')->with('success', 'Language is deleted succesfully');
    
    }
}
