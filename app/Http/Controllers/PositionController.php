<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\position;

class PositionController extends Controller
{
    public function index(){

		$positionIds = position::all();
       return view ('hr.position.addPosition',compact('positionIds'));

    }

    public function store (Request $request){
                
        position::create($request->all());
		return redirect()->route('addPosition')->with('success', 'Position is saved succesfully');
       
    }

    public function edit($id){
       $positionIds = position::all();
        $data = position::find($id);
        return view ('hr.position.editPosition',compact('positionIds','data'));
    }

    public function update(Request $request, $id)
    {
     
     position::findOrFail($id)->update($request->all());
     return redirect()->route('position.edit',['id'=>$id])->with('success', 'Position is updated succesfully');
    }

 	public function delete(Request $request, $id)
    {
    position::findOrFail($id)->delete(); 
    return redirect()->route('addPosition')->with('success', 'Position is deleted succesfully');
    }




}
