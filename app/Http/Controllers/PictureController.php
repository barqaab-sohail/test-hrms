<?php

namespace App\Http\Controllers;
use Validator;
use Illuminate\Http\Request;
use App\employee;
use App\picture;

class PictureController extends Controller
{
    
     /**
     * To display the show page
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function showJqueryImageUpload($id) 
    {
        //return view('demos.jqueryimageupload');
        $employee = employee::find($id);
        $picture = picture::where ('employee_id',$id)->first();
        return view ('hr.employee.editPicture', compact('employee','picture'));
    }

    /**
     * To handle the comming post request
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function saveJqueryImageUpload(Request $request, $id)
    {
       	$employee = employee::find($id);
       	$picture = picture::where ('employee_id',$id)->first();
       	if ($picture!=null){
       			$validator = Validator::make($request->all(), [
	            'profile_picture' => 'required|mimes:jpeg,jpg,png,|max:500',
	        ]);
	        if ($validator->fails()) {
	            return response()->json(['errors'=>$validator->errors()->all()]);
	        }
	        $status = "";
		        if ($request->hasFile('profile_picture')) {
		        	unlink(public_path('storage/pictures/'.$picture->name));
		            $image = $request->file('profile_picture');
		            // Rename image
		             $imageName = session('employee_id')."-".$employee->first_name." ".$employee->middle_name." ".$employee->last_name.'.'.$image->guessExtension();
		            $input['name'] = $imageName;
		            $input['employee_id'] = session('employee_id');
		            $input['type'] = $request->file('profile_picture')->getMimeType();
		            $input['size'] = $request->file('profile_picture')->getClientSize();
		            $input['width'] = '100';
		            $input['height'] = '100';
		            $request->file('profile_picture')->storeAs('public/pictures', $imageName);
		            //$path = $request->file('profile_picture')->move(public_path('upload/pictures'), $filename);
		            picture::findOrFail($picture->id)->update($input);
		            $status = "Uploaded Sucessfully";            
		        }
	        
	        return response($status,200);
 	       
    	}else{

    		 $validator = Validator::make($request->all(), [
	            'profile_picture' => 'required|mimes:jpeg,jpg,png,|max:1000',
	        ]);

	        if ($validator->fails()) {
	            return response()->json(['errors'=>$validator->errors()->all()]);
	        }

	        $status = "";
		        if ($request->hasFile('profile_picture')) {
		            $image = $request->file('profile_picture');
		            // Rename image
		            $imageName = session('employee_id')."-".$employee->first_name." ".$employee->middle_name." ".$employee->last_name.'.'.$image->guessExtension();
		            $input['name'] = $imageName;
		            $input['employee_id'] = session('employee_id');
		            $input['type'] = $image->getMimeType();
		            $input['size'] = $image->getClientSize();
		            $input['width'] = '100';
		            $input['height'] = '100';
		            $request->file('profile_picture')->storeAs('public/pictures', $imageName);
		            picture::create($input);
		            $status = "Uploaded Sucessfully";            
		        }
	        return response($status,200);
    	}

    }

}
