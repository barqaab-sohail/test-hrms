<?php

namespace App\Http\Controllers\Cv;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\cv_expertize;
use App\Http\Requests\cv\addExpertizeStore;

class addExpertizeController extends Controller
{
    
    public function index(){

    	$expertizes = cv_expertize::all();
    	//dd($expertizes);
    	return view('bio-data.addExpertize.index',compact('expertizes'));
    }

    public function store (addExpertizeStore $request){

    	cv_expertize::create(['name' => $request->name]);

    	 return redirect()->route('addExpertize.index')->with('success', 'Data is saved succesfully');
    }

    public function edit($id){
        
       $expertizes = cv_expertize::all();
        $data = cv_expertize::find($id);
        return view ('bio-data.addExpertize.edit',compact('data','expertizes'));
    }
    
    public function update(addExpertizeStore $request, $id)
    {
     
     cv_expertize::findOrFail($id)->update(['name' => $request->name]);
      return redirect()->route('addExpertize.index')->with('success', 'Data is updated succesfully');
     //return redirect()->route('role.edit',['id'=>$id])->with('success', 'Data is update succesfully');
    }

    public function destroy(Request $request, $id)
    {
    cv_expertize::findOrFail($id)->delete(); 
    return redirect()->route('addExpertize.index')->with('success', 'Data is deleted succesfully');
    }


    
}
