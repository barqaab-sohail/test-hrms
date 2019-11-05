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
        //first left join with promotion (in view if promotion designation null than use appointment letter designaation)
        $managers = DB::table('employees')
                    ->select('employees.id','employees.first_name','employees.middle_name','employees.last_name','designations.name AS promotion_designation','ap_designation.name as appointment_designation','promotions.id AS pr_id')
                    ->leftJoin('promotions','employees.id','=','promotions.employee_id')
                    ->leftJoin('appointments','employees.id','=','appointments.employee_id')
                    ->leftJoin('designations','designations.id','=','promotions.designation_id') 
                    ->leftJoin('designations AS ap_designation','ap_designation.id','=','appointments.designation_id') 

                    ->orderBy('pr_id','desc')
                    
                    ->get();
       $managers = $managers->unique('id')->all();

        $postingIds = posting::all()->where('employee_id', session('employee_id'));
        $projects = project::orderBy('status', 'desc')->get();
        $positions = designation::all();
        return view ('hr.posting.posting',compact('employee','managers','projects','postingIds','positions'));
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
        

        $managers = DB::table('employees')
                    ->select('employees.id','employees.first_name','employees.middle_name','employees.last_name','designations.name AS promotion_designation','ap_designation.name as appointment_designation','promotions.id AS pr_id')
                    ->leftJoin('promotions','employees.id','=','promotions.employee_id')
                    ->leftJoin('appointments','employees.id','=','appointments.employee_id')
                    ->leftJoin('designations','designations.id','=','promotions.designation_id') 
                    ->leftJoin('designations AS ap_designation','ap_designation.id','=','appointments.designation_id') 

                    ->orderBy('pr_id','desc')
                    
                    ->get();
       $managers = $managers->unique('id')->all();


        $employee = employee::find(session('employee_id'));
        //Requried for Stored Posting
        $postingIds = posting::all()->where('employee_id', session('employee_id'));
        $projects = project::all();
        $data = posting::find($id);
        $positions = designation::all();
        return view ('hr.posting.editPosting',compact('data','employee','managers','postingIds','projects','positions'));
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
