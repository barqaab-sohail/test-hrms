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
        /*$firstlevel = DB::table('postings')
        ->where('employee_id', '=', DB::raw('manager_id'))
        ->get();        
        */    
        $firstLevelId = posting::whereColumn('manager_id','employee_id')->pluck('employee_id')->toArray();

        $secondLevelIds = posting::whereIn('manager_id',$firstLevelId)->whereNotIn('employee_id',$firstLevelId)->pluck('employee_id')->toArray();
        $employee2 = employee::whereIn('employee_id',$secondLeveIds);
        $thirdLevelIds = posting::whereIn('manager_id',$secondLevelIds)->whereNotIn('employee_id',$secondLevelIds)->pluck('employee_id')->toArray();
       
        dd();

    }


    public function create($id){

        $employee = employee::find($id);
        $employees = DB::table('employees')
                    ->join('appointments','employees.id','=','appointments.employee_id')
                       ->select('employees.id','employees.first_name','employees.last_name','employees.middle_name','appointments.designation')->get();

        $postingIds = posting::all()->where('employee_id', $id);
        $projects = project::all();
        $positions = designation::all();
        return view ('hr.posting.posting',compact('employee','employees','projects','postingIds','positions'));
    }

	public function store(StorePosting $request){

        $data = $request->all();
        $data ['joining_date']= \Carbon\Carbon::parse($request->joining_date)->format('Y-m-d');
        $data ['posting_date']= \Carbon\Carbon::parse($request->posting_date)->format('Y-m-d');         
        posting::create($data);
        return redirect()->route('posting',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
      

    }

    public function edit($id){
        $employees = DB::table('employees')
                    ->join('appointments','employees.id','=','appointments.employee_id')
                       ->select('employees.id','employees.first_name','employees.last_name','employees.middle_name','appointments.designation')->get();
        
        
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
     $data ['joining_date']= \Carbon\Carbon::parse($request->joining_date)->format('Y-m-d');
    $data ['posting_date']= \Carbon\Carbon::parse($request->posting_date)->format('Y-m-d');  

     posting::findOrFail($id)->update($data);
     return redirect()->route('posting.edit',['id'=>$id])->with('success', 'Posting is updated succesfully');
    }

    public function delete(Request $request, $id)
    {
        
    posting::findOrFail($id)->delete();
    return redirect()->route('posting',['id'=>session('employee_id')])->with('success', 'Document is deleted succesfully');
    }
}
