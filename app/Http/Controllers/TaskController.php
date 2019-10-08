<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Redirect;
use App\Http\Requests\StoreTask;
use Illuminate\Http\Request;
use App\task;

class TaskController extends Controller
{
    
	public function __construct()
    {
        $this->middleware('auth');
    }


    public function store(StoreTask $request){
    	
    	$data = $request->all();
            
            if($request->filled('completion_date')){
            $data ['completion_date']= \Carbon\Carbon::parse($request->completion_date)->format('Y-m-d');
            }

    	task::create($data);
    	return Redirect::back()->with('success', 'You task has been saved sucessfuly');
    }

    public function update (Request $request, $id){
        $data = task::findOrFail($id);
        if($data->status === 'Pending'){

        $data->update(['status'=>1]);

         }else
         {
            $data->update(['status'=>0]);
         }

        return 'OK';
    }

    public function destroy($id){

    	task::findOrFail($id)->delete(); 
    	return Redirect::back()->with('success', 'Task has been deleted sucessfuly');
    }

}
