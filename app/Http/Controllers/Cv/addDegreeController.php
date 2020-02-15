<?php

namespace App\Http\Controllers\cv;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\cv\cv_education;
use App\Http\Requests\cv\degreeStore;

class addDegreeController extends Controller
{
     public function index(){

    	$degrees = cv_education::all();
    	return view('cv.services.addDegree.index',compact('degrees'));
    }

    public function store (degreeStore $request){

    	
        cv_education::create(['degree_name' => $request->degree_name, 'level' => $request->level]);
    	 return redirect()->route('addDegree.index')->with('success', 'Data is saved succesfully');
    }

    public function edit($id){
        
       $degrees = cv_education:: all();
        $data = cv_education::find($id);
        return view ('cv.services.addDegree.edit',compact('data','degrees'));
    }
    
    public function update(degreeStore $request, $id)
    {
     
     cv_education::findOrFail($id)->update(['degree_name' => $request->degree_name, 'level' => $request->level]);
      return redirect()->route('addDegree.index')->with('success', 'Data is updated succesfully');
    }

    public function destroy(Request $request, $id)
    {
    cv_education::findOrFail($id)->delete(); 
    return redirect()->route('addDegree.index')->with('success', 'Data is deleted succesfully');
    }
}
