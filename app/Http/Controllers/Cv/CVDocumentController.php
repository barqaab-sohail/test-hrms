<?php

namespace App\Http\Controllers\cv;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\cv\cv_attachment;
use App\models\cv\cv_detail;
use App\Http\Requests\StoreDocument;


class CVDocumentController extends Controller
{
    
    public function create(){

    	 $cv = cv_detail::find(session('cv_id'));
        $documentIds = cv_attachment::all()->where('cv_detail_id', session('cv_id'));

		return view('cv.document.document',compact('documentIds'));
	}
	public function store(StoreDocument $request){
         
         $imageName = request()->document_name.'-'.session('cv_id').'-'.time().'.'.request()->document->getClientOriginalExtension();
        $imageType = request()->document->getMimeType();
        $imageSize = request()->document->getClientSize();
        //Get Folder Name
        $cv_id= cv_detail::find(request()->cv_id);
        $folderName= $cv_id->cv_attachment->first()->path;

        //$folderName = session('employee_id').'_Ahmad_Khan_Bhatti';
        $request->file('document')->storeAs('public/'.$folderName,$imageName);
        $input['document_name'] = request()->document_name;
        $input['file_name'] = $imageName;
        $input['path'] = $folderName;
        $input['cv_detail_id'] = session('cv_id');
        $input['extension'] = $imageType;
        $input['size'] = $imageSize;

        cv_attachment::create($input);
        return back()->with('success', 'Document successfully saved');

    }
    public function edit($id){
       
        $documentIds = cv_attachment::all()->where('cv_detail_id', session('cv_id'));
        $data = cv_attachment::find($id);
        
        return view ('cv.document.editDocument',compact('data','documentIds'));
    }

 	public function destroy(Request $request, $id)
    {
    $document = cv_attachment::findOrFail($id);
    
    $path = public_path('storage/'.$document->path.$document->file_name);

        if(is_file($path)){

           unlink($path);
            $document->forceDelete(); 
            
            return back()->with('success', 'Document successfully deleted');
        }
        else{
            
            return back()->with('error', 'Document not deleted');
        } 
    
    
    }

}
