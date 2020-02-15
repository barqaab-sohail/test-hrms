<?php

namespace App\Http\Controllers\cv;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\cv\cv_field;
use App\Http\Requests\cv\fieldStore;

class addFieldController extends Controller
{
     public function index(){

    	$fields = cv_field::all();
    	//dd($expertizes);
    	return view('cv.services.addField.index',compact('fields'));
    }

    public function store (fieldStore $request){

    	
        cv_field::create(['field_name' => $request->field_name]);

    	 return redirect()->route('addField.index')->with('success', 'Data is saved succesfully');
    }

    public function edit($id){
        
       $fields = cv_field:: all();
        $data = cv_field::find($id);
        return view ('cv.services.addField.edit',compact('data','fields'));
    }
    
    public function update(fieldStore $request, $id)
    {
     
     cv_field::findOrFail($id)->update(['field_name' => $request->field_name]);
      return redirect()->route('addField.index')->with('success', 'Data is updated succesfully');
     //return redirect()->route('role.edit',['id'=>$id])->with('success', 'Data is update succesfully');
    }

    public function destroy(Request $request, $id)
    {
    cv_field::findOrFail($id)->delete(); 
    return redirect()->route('addField.index')->with('success', 'Data is deleted succesfully');
    }


}
