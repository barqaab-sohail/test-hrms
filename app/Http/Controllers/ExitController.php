<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StoreExit;
use App\employee;
use App\user;
use App\employee_status;
use App\employee_exit;
use App\posting;

class ExitController extends Controller
{
    
 public function __construct(){
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
  }
  
  public function create(){
    $employee = employee::find(session('employee_id'));
    $status = employee_status::all();
    $managee = posting::all()->where ('manager_id',$employee->id);
    $exitIds = employee_exit::all()->where('employee_id', session('employee_id'));
     $user = user::where('employee_id',session('employee_id'))->first();
     
    return view ('hr.exit.exit', compact('employee','status','exitIds','user','managee'));
  }

  public function store(StoreExit $request){
    $managee = posting::all()->where ('manager_id',$request->employee_id);
    if($managee->count()>0){

      return redirect()->back()->withError('His Employee status is not changed becuase he is Manager of Some Employees');

    }else{
      employee::findOrFail($request->employee_id)->update(['employee_status_id'=>$request->employee_status_id]);
      $data = $request->all();
      if ($request->filled('user_status')){
         $user = user::where('employee_id',session('employee_id'))->first();
         $user->update(['user_status'=>$request->user_status]);
      }
      if($request->filled('effective_date')){
              $data ['effective_date']= \Carbon\Carbon::parse($request->effective_date)->format('Y-m-d');
              }
      employee_exit::create($data);

      return redirect()->back()->with('message', 'Data Sucessfully Save');
    }
  }

  public function edit($id){
        session()->put('employee_id', $id);
       $employee = employee::find($id);
       $status = employee_status::all();
       $data = employee_exit::find($id);
       $exitIds = employee_exit::all()->where('employee_id', session('employee_id'));
        $user = user::where('employee_id',session('employee_id'))->first();
       return view ('hr.exit.editExit', compact('employee','status','data','exitIds','user'));
  }
    
  public function update(Request $request, $id)  {
            
    employee::findOrFail($request->employee_id)->update(['employee_status_id'=>$request->employee_status_id]);
    $data = $request->all();
    if ($request->filled('user_status')){
       $user = user::where('employee_id',session('employee_id'))->first();
       $user->update(['user_status'=>$request->user_status]);
    }
    if($request->filled('effective_date')){
            $data ['effective_date']= \Carbon\Carbon::parse($request->effective_date)->format('Y-m-d');
    }
       employee_exit::findOrFail($id)->update($data);
   
    return redirect()->back()->with('message', 'Data Sucessfully Save');
            
  }

  public function destroy(Request $request, $id){
    employee_exit::findOrFail($id)->delete();
    return redirect()->route('exit.create')->with('success', 'Data Sucessfully Deleted');
    
    }

}
