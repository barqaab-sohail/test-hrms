<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\picture;

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
       $picture = picture::where ('employee_id',$id)->first();
       return view ('employee.editPicture', compact('picture'));
  }




}
