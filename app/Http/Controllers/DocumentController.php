<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\document;
use DB;

class DocumentController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
    }

    public function create($id){

        $employee = employee::find($id);
        $documentIds = document::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('hr.document.document',compact('employee','employees','documentIds'));

    }

	public function store(Request $request){
         $request->validate([
         'document_name' => 'required|max:255',
         ]);

         $imageName = time().'-'.session('employee_id').'.'.request()->picture->getClientOriginalExtension();
        $imageType = request()->picture->getMimeType();
        $imageSize = request()->picture->getClientSize();
        request()->picture->move(public_path('upload/documents'), $imageName);
       	$input['document_name'] = request()->document_name;
        $input['file_name'] = $imageName;
        $input['employee_id'] = session('employee_id');
        $input['type'] = $imageType;
        $input['size'] = $imageSize;
        //dd($input);
        document::create($input);
        return redirect()->route('document',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      // return redirect()->route('document',['id'=>$data->id])->with('success', 'User is created succesfully');


    }

    public function edit($id){
        $employee = employee::find(session('employee_id'));
        $documentIds = document::all()->where('employee_id', session('employee_id'));
        $data = document::find($id);
        return view ('hr.document.editDocument',compact('data','employee','documentIds'));
    }
    
    public function update(Request $request, $id)
    {		$data = document::find($id);

            $imageName = time().'-'.session('employee_id').'.'.request()->picture->getClientOriginalExtension();
            $imageType = request()->picture->getMimeType();
            $imageSize = request()->picture->getClientSize();
            request()->picture->move(public_path('upload/documents'), $imageName);
            $input['file_name'] = $imageName;
            $input['employee_id'] = session('employee_id');
            $input['type'] = $imageType;
            $input['size'] = $imageSize;
            
            document::findOrFail($data->id)->update($input);
            unlink(public_path('upload\documents/'.$data->file_name));
    	
     return redirect()->route('document.edit',['id'=>$id])->with('success', 'Document is updated succesfully');
    }
}
