<?php


namespace App\Http\Controllers;
use App\Imports\PhoneImport;
use Illuminate\Http\Request;
use App\contact_number;
use DB;
use Excel;

class ContactNumberController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function index(){

	$phones = contact_number::all();
    return view ('phone.phoneList',compact('phones'));
    
    }

    function import(Request $request)
    {
     	
     $this->validate($request, [
      'select_file'  => 'required|mimes:xls,xlsx'
     ]);

     	$path = $request->file('select_file')->getRealPath();

     	Excel::import(new PhoneImport, $path);
         
    return back()->with('success', 'Excel Data Imported successfully.');
    }

    public function store(Request $request){
        
        contact_number::create($request->all());
        return redirect()->route('contactNumber.index')->with('success', 'Data is saved succesfully');
    }


    public function edit($id){
        $phones = contact_number::all();
        $data = contact_number::find($id);

        return view ('phone.editPhoneList',compact('data','phones'));
    }


    public function update(Request $request, $id)
    {
        
        contact_number::findOrFail($id)->update($request->all());
        return redirect()->route('contactNumber.edit',['id'=>$id])->with('success', 'Contact Detail is updated succesfully');
    }
    public function destroy(Request $request, $id)
    {
    contact_number::findOrFail($id)->delete();
    return redirect()->route('contactNumber.index')->with('success', 'Contact Detail is deleted succesfully');
    
    }






}
