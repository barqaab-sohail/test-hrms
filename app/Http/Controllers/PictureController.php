<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StorePicture;
use App\picture;
use Image;

use App\employee;

class PictureController extends Controller
{

	public function __construct()
    {
        $this->middleware('auth');
    }
	
	/*public function create(){
        return view ('employee.createPicture');
    }

     public function store (StorePicture $request){
        
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
    }*/



    public function edit($id){
       $employee = employee::find($id);
       $picture = picture::where ('employee_id',$id)->first();
       return view ('hr.employee.editPicture', compact('picture','employee'));
    }

    public function save(Request $request){
        if($request->hasFile('profile_image')) {
        //get filename with extension
        $filenamewithextension = $request->file('profile_image')->getClientOriginalName();
 
        //get filename without extension
        $filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);
 
        //get file extension
        $extension = $request->file('profile_image')->getClientOriginalExtension();
 
        //filename to store
        $filenametostore = $filename.'_'.time().'.'.$extension;
 
        //Upload File
        $request->file('profile_image')->storeAs('public/profile_images', $filenametostore);
 
        if(!file_exists(public_path('storage/profile_images/crop'))) {
            mkdir(public_path('storage/profile_images/crop'), 0755);
        }
 
        // crop image
        $img = Image::make(public_path('storage/profile_images/'.$filenametostore));
        $croppath = public_path('storage/profile_images/crop/'.$filenametostore);
 
        $img->crop($request->input('w'), $request->input('h'), $request->input('x1'), $request->input('y1'));
        $img->save($croppath);
 
        // you can save crop image path below in database
        $path = asset('storage/profile_images/crop/'.$filenametostore);
 
         return redirect()->route('picture.edit',['id'=>session('employee_id')])->with(['success' => "Image cropped successfully.", 'path' => $path]);
    }
    }



    public function update(StorePicture $request, $id)
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
