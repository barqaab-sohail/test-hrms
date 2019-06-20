<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\employee;
use App\language;
use App\all_languages;
use DB;

class LanguageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create($id){

        $allLanguages = all_languages::all();
        $employee = employee::find($id);
        $languageIds = language::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('language.language',compact('employee','employees','languageIds','allLanguages'));
    }

	public function store(Request $request){
         $request->validate([
         'name' => 'required|max:255',
         ]);

              //Duplicate Language for One Employee
              $getEmpLanguages = language::all()->where('employee_id',session('employee_id'));
              foreach($getEmpLanguages as $getEmpLanguage){
              $storedLanugage = $getEmpLanguage->name .session('employee_id');
              $requestLanguage = $request->name.session('employee_id');
                  if ($storedLanugage==$requestLanguage){
                    return redirect()->route('language',['id'=>session('employee_id')])->with('error', 'Language is already saved');
                  }
              }
        
        $data = language::create($request->all());

        return redirect()->route('language',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      // return redirect()->route('language',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
        
        $allLanguages = all_languages::all();
        $employee = employee::find(session('employee_id'));
        $languageIds = language::all()->where('employee_id', session('employee_id'));
        $data = language::find($id);
        return view ('language.editLanguage',compact('data','employee','languageIds','allLanguages'));
    }
    
    public function update(Request $request, $id)
    {

           //Duplicate Language for One Employee
              $getEmpLanguages = language::all()->where('employee_id',session('employee_id'))->where('id', '!=', $id);
              foreach($getEmpLanguages as $getEmpLanguage){
              $storedLanugage = $getEmpLanguage->name .session('employee_id');
              $requestLanguage = $request->name.session('employee_id');
                  if ($storedLanugage==$requestLanguage){
                    return redirect()->route('language.edit',['id'=>$id])->with('error', 'Edit Language is already saved');
                  }
              }
     
     language::findOrFail($id)->update($request->all());
     return redirect()->route('language.edit',['id'=>$id])->with('success', 'Language Detail is updated succesfully');
    }

    public function delete(Request $request, $id)
    {
          
    language::findOrFail($id)->delete();

    return redirect()->route('language',['id'=>session('employee_id')])->with('success', 'Language is deleted succesfully');
    
    }
}
