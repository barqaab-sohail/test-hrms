<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\promotion;
use App\designation;
use App\Http\Requests\StorePromotion;
use App\salary;
use DB;

class PromotionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('delete','update', 'store');
    }

	public function create(){
	$employee = employee::find(session('employee_id'));
    $designations = designation::all();
    $promotionIds = promotion::all()->where('employee_id',session('employee_id'))->sortByDesc('effective_date');
   
     return view ('hr.promotion.promotion',compact('employee','promotionIds','designations'));
    }

    public function store(StorePromotion $request){
    
        $salary = DB::table('salaries')->where('employee_id',session('employee_id'))->where('promotion_id',NULL)->first();
        $appointment = DB::table('appointments')->where('employee_id',session('employee_id'))->first();
        
        if($salary==null){
            return redirect()->route('promotion.create')->with('error', 'Appointment Letter Salary is not Entered. Please Enter Appointment Letter Salary');
        }else if($appointment==null){
             return redirect()->route('promotion.create')->with('error', 'Appointment Letter Designation is not Entered. Please Enter Appointment Letter Designation');
        }
        else{
            
            DB::transaction(function () use ($request) {
                    
                    $data = $request->all();
                    if($request->filled('effective_date')){
                    $data ['effective_date']= \Carbon\Carbon::parse($request->effective_date)->format('Y-m-d');
                    }
                    $input = promotion::create($data);
                    salary::create($request->all() + ['promotion_id' => $input->id]);
                });
       
        return redirect()->route('promotion.create')->with('success', 'Data is saved succesfully');
        }
    }


     public function edit($id){
        $employee = employee::find(session('employee_id'));
        $designations = designation::all();
       
        $promotionIds = promotion::all()->where('employee_id',session('employee_id'))->sortByDesc('effective_date');
        
        $data = DB::table('salaries')
                    ->join('promotions','promotions.id','=','salaries.promotion_id')
                    ->where('promotions.id',$id)
                    ->first();
        
        return view ('hr.promotion.editPromotion',compact('data','employee','promotionIds','designations'));
    }

    public function update(StorePromotion $request, $id)
    {
        
        DB::transaction(function () use ($request, $id) {
            $data = $request->all();
            if($request->filled('effective_date')){
            $data ['effective_date']= \Carbon\Carbon::parse($request->effective_date)->format('Y-m-d');
            }
            promotion::findOrFail($id)->update($data);
            salary::where('promotion_id','=',$id)->firstOrFail()->update($data);
         });
            
    return redirect()->route('promotion.edit',['id'=>$id])->with('success', 'Promotion is updated succesfully');
    }

    public function destroy(Request $request, $id)
    {
         DB::transaction(function () use ($id) {
                promotion::findOrFail($id)->delete();
                salary::where('promotion_id','=',$id)->firstOrFail()->delete();
        });

    return redirect()->route('promotion.create')->with('success', 'Promotion is deleted succesfully');
    }


}
