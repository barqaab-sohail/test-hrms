<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\picture;
use App\employee;

class PictureController extends Controller
{

	public function __construct()
    {
        $this->middleware('auth');
    }

	
	public function create(){
        return view ('employee.createPicture');
    }

     public function store (Request $request){
        
        $imageName = time().'-'.session('employee_id').'.'.request()->picture->getClientOriginalExtension();
        $imageType = request()->picture->getMimeType();
        $imageSize = request()->picture->getClientSize();
        request()->picture->move(public_path('upload/pictures'), $imageName);
        $input['name'] = $imageName;
        $input['employee_id'] = session('employee_id');
        $input['type'] = $imageType;
        $input['size'] = $imageSize;
        
        picture::create($input);
        return view ('dashboard');
    }



    public function edit($id){
       $employee = employee::find($id);
       $picture = picture::where ('employee_id',$id)->first();
       return view ('employee.editPicture', compact('picture','employee'));
    }

    public function update(Request $request, $id)
    {
       $employee = employee::find($id);
       $picture = picture::where ('employee_id',$id)->first();

       if ($picture!=null){
           unlink(public_path('upload\pictures/'.$picture->name));
            $imageName = time().'-'.session('employee_id').'.'.request()->picture->getClientOriginalExtension();
            $imageType = request()->picture->getMimeType();
            $imageSize = request()->picture->getClientSize();
            request()->picture->move(public_path('upload/pictures'), $imageName);
            $input['name'] = $imageName;
            $input['employee_id'] = session('employee_id');
            $input['type'] = $imageType;
            $input['size'] = $imageSize;

            picture::findOrFail($picture->id)->update($input);

           $updatePicture = picture::where ('employee_id',$id)->first();
           
           

        }else{
            $imageName = time().'-'.session('employee_id').'.'.request()->picture->getClientOriginalExtension();
            $imageType = request()->picture->getMimeType();
            $imageSize = request()->picture->getClientSize();
            request()->picture->move(public_path('upload/pictures'), $imageName);
            $input['name'] = $imageName;
            $input['employee_id'] = session('employee_id');
            $input['type'] = $imageType;
            $input['size'] = $imageSize;
            
            $picture=picture::create($input);

            

        }
    
        return redirect()->route('picture.edit',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
   
    }




}
