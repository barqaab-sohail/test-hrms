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

}
