<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests\StoreDocument;
use App\employee;
use App\document;
use DB;

class DocumentController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function create($id){

        $employee = employee::find($id);
        $documentIds = document::all()->where('employee_id', $id);
        $employees = employee::all();
        return view ('hr.document.document',compact('employee','employees','documentIds'));

    }

	public function store(StoreDocument $request){
         $request->validate([
         'document_name' => 'required|max:255',
         ]);

         $imageName = time().'-'.session('employee_id').'-'.request()->document_name.'.'.request()->document->getClientOriginalExtension();
        $imageType = request()->document->getMimeType();
        $imageSize = request()->document->getClientSize();
        
        //Create Employee Folder Variable
        $EmployeeObject = employee::find(session('employee_id'));
        $folderName = "documents/".session('employee_id')."_".$EmployeeObject->first_name."_".$EmployeeObject->middle_name."_".$EmployeeObject->last_name."/";

        //$folderName = session('employee_id').'_Ahmad_Khan_Bhatti';
        $request->file('document')->storeAs('public/'.$folderName,$imageName);
        $input['document_name'] = request()->document_name;

        if($request->filled('date')){
        $input ['date']= \Carbon\Carbon::parse($request->date)->format('Y-m-d');
        }
        $input['file_name'] = $imageName;
        $input['file_path'] = $folderName;
        $input['employee_id'] = session('employee_id');
        $input['type'] = $imageType;
        $input['size'] = $imageSize;

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
    
    public function update(StoreDocument $request, $id)
    {		$data = document::find($id);

        if ($request->hasFile('document')){
        
            $imageName = time().'-'.session('employee_id').'-'.request()->document_name.'.'.request()->document->getClientOriginalExtension();
            $imageType = request()->document->getMimeType();
            $imageSize = request()->document->getClientSize();

            $request->file('document')->storeAs('public/'.$data->file_path,$imageName);
            if($request->filled('date')){
            $input ['date']= \Carbon\Carbon::parse($request->date)->format('Y-m-d');
            }
            $input['file_name'] = $imageName;
            $input['employee_id'] = session('employee_id');
            $input['type'] = $imageType;
            $input['size'] = $imageSize;
            document::findOrFail($data->id)->update($input);
            //Storage::delete('storage/documents/'.$data->file_name);
            unlink(public_path('storage/'.$data->file_path.$data->file_name));
             
        }
        else{
             
            $input = $request->all();
            if($request->filled('date')){
            $input ['date']= \Carbon\Carbon::parse($request->date)->format('Y-m-d');
            }

             document::findOrFail($data->id)->update($input);
        }
    	
     return redirect()->route('document.edit',['id'=>$id])->with('success', 'Document is updated succesfully');
    }

    public function delete(Request $request, $id)
    {
    $document = document::findOrFail($id);
    unlink(public_path('storage/'.$document->file_path.$document->file_name));
    $document->forceDelete(); 
        
    return redirect()->route('document',['id'=>session('employee_id')])->with('success', 'Document is deleted succesfully');
    
    }
}
