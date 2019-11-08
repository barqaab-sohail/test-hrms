<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreExit;
use App\employee;
use App\employee_status;
use App\employee_exit;

class ExitController extends Controller
{
    
 public function __construct(){
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
  }


  public function create(){
    $employee = employee::find(session('employee_id'));
    $status = employee_status::all();
     $exitIds = employee_exit::all()->where('employee_id', session('employee_id'));
    return view ('hr.exit.exit', compact('employee','status','exitIds'));
  }

  public function store(StoreExit $request){
    employee::findOrFail($request->employee_id)->update(['employee_status_id'=>$request->employee_status_id]);
    $data = $request->all();
    if($request->filled('effective_date')){
            $data ['effective_date']= \Carbon\Carbon::parse($request->effective_date)->format('Y-m-d');
            }
    employee_exit::create($data);
    return redirect()->back()->with('message', 'Data Sucessfully Save');

  }

  public function edit($id){
       $employee = employee::find($id);
       $status = employee_status::all();
       $data = employee_exit::find($id);
       $exitIds = employee_exit::all()->where('employee_id', session('employee_id'));
       return view ('hr.exit.editExit', compact('employee','status','data','exitIds'));
  }
    
  public function update(Request $request, $id)  {
            
   	//dd($request->employee_status_id);
   
    return redirect()->back()->with('message', 'Data Sucessfully Save');
            
  }

  public function destroy(Request $request, $id){
    employee_exit::findOrFail($id)->delete();
    return redirect()->route('exit.create')->with('success', 'Data Sucessfully Deleted');
    
    }

}
