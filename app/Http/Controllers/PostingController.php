<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests\StorePosting;
use App\employee;
use App\posting;
use App\designation;
use App\project;
use DB;

class PostingController extends Controller
{
   public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

    public function index(){
        
              
    }


    public function create(){

        $employee = employee::find(session('employee_id'));
        $employees = DB::table('employees')
                    ->join('postings','employees.id','=','postings.employee_id')
                    ->join('designations','postings.designation_id','=','designations.id')
                    ->get();
        $employees = $employees->unique('employee_id');

        $employees->values()->all();

        $postingIds = posting::all()->where('employee_id', session('employee_id'));
        $projects = project::orderBy('status', 'desc')->get();
        $positions = designation::all();
        return view ('hr.posting.posting',compact('employee','employees','projects','postingIds','positions'));
    }

	public function store(StorePosting $request){

        $data = $request->all();
        if($request->filled('joining_date')){
        $data ['joining_date']= \Carbon\Carbon::parse($request->joining_date)->format('Y-m-d');
        }
        if($request->filled('posting_date')){
        $data ['posting_date']= \Carbon\Carbon::parse($request->posting_date)->format('Y-m-d');         
        }
        posting::create($data);
        return redirect()->route('posting.create')->with('success', 'Data is saved succesfully');
      

    }

    public function edit($id){
        
        
        $employees = DB::table('employees')
                    ->join('postings','employees.id','=','postings.employee_id')
                    ->join('designations','postings.designation_id','=','designations.id')
                    ->get();
        $employees = $employees->unique('employee_id');

        $employees->values()->all();

        /*foreach ($unique as $uni)
        {
            echo $uni->employee_id.' '.$uni->first_name.' '.$uni->last_name.' '.$uni->designation_id.'<br>';    
        }
        dd('testing');*/




        $employee = employee::find(session('employee_id'));
        //Requried for Stored Posting
        $postingIds = posting::all()->where('employee_id', session('employee_id'));
        $projects = project::all();
        $data = posting::find($id);
        $positions = designation::all();
        return view ('hr.posting.editPosting',compact('data','employee','employees','postingIds','projects','positions'));
    }
    
    public function update(StorePosting $request, $id)
    {
    
    $data = $request->all();
        if($request->filled('joining_date')){
        $data ['joining_date']= \Carbon\Carbon::parse($request->joining_date)->format('Y-m-d');
        }
        if($request->filled('posting_date')){
        $data ['posting_date']= \Carbon\Carbon::parse($request->posting_date)->format('Y-m-d'); 
        } 

     posting::findOrFail($id)->update($data);
     return redirect()->route('posting.edit',['id'=>$id])->with('success', 'Posting is updated succesfully');
    }

    public function destroy(Request $request, $id)
    {
        
    posting::findOrFail($id)->delete();
    return redirect()->route('posting.create')->with('success', 'Document is deleted succesfully');
    }
}
