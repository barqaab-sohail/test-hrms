<?php

namespace App\Http\Controllers;
use App\Imports\ProjectsImport;
use Illuminate\Http\Request;
use DB;
use Excel;

class ImportExcelController extends Controller
{
     public function __construct()
    {
        $this->middleware('auth');
    }




   function import(Request $request)
    {
     	
     $this->validate($request, [
      'select_file'  => 'required|mimes:xls,xlsx'
     ]);

     	$path = $request->file('select_file')->getRealPath();

     	Excel::import(new ProjectsImport, $path);
         
    return back()->with('success', 'Excel Data Imported successfully.');
    }
}
