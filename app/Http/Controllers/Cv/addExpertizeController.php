<?php

namespace App\Http\Controllers\Cv;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\cv\cv_specialization;
use App\Http\Requests\cv\specializationStore;

class addExpertizeController extends Controller
{
    
    public function index(){

    	$expertizes = cv_specialization::all();
    	//dd($expertizes);
    	return view('cv.addExpertize.index',compact('expertizes'));
    }

    public function store (specializationStore $request){

    	
        cv_specialization::create(['specialization_name' => $request->specialization_name]);

    	 return redirect()->route('addExpertize.index')->with('success', 'Data is saved succesfully');
    }

    public function edit($id){
        
       $expertizes = cv_specialization:: all();
        $data = cv_specialization::find($id);
        return view ('cv.addExpertize.edit',compact('data','expertizes'));
    }
    
    public function update(specializationStore $request, $id)
    {
     
     cv_specialization::findOrFail($id)->update(['specialization_name' => $request->specialization_name]);
      return redirect()->route('addExpertize.index')->with('success', 'Data is updated succesfully');
     //return redirect()->route('role.edit',['id'=>$id])->with('success', 'Data is update succesfully');
    }

    public function destroy(Request $request, $id)
    {
    cv_specialization   ::findOrFail($id)->delete(); 
    return redirect()->route('addExpertize.index')->with('success', 'Data is deleted succesfully');
    }


    
}
