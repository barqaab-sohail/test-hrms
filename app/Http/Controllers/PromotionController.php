<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\employee;
use App\promotion;
use App\salary;
use DB;

class PromotionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

	public function create($id){
	$employee = employee::find($id);
    $promotionIds = DB::table('salaries')
                    ->join('promotions','promotions.id','=','salaries.promotion_id')
                    ->get();
   
     return view ('hr.promotion.promotion',compact('employee','promotionIds'));
    }

    public function store(Request $request){
    
        $salary = DB::table('salaries')->where('employee_id',session('employee_id'))->where('promotion_id',NULL)->first();
        $appointment = DB::table('contracts')->where('employee_id',session('employee_id'))->first();
        
        if($salary==null){
            return redirect()->route('promotion',['id'=>session('employee_id')])->with('error', 'Appointment Letter Salary is not Entered. Please Enter Appointment Letter Salary');
        }else if($appointment==null){
             return redirect()->route('promotion',['id'=>session('employee_id')])->with('error', 'Appointment Letter Designation is not Entered. Please Enter Appointment Letter Designation');
        }
        else{
            
            DB::transaction(function () use ($request) {
                    $data = promotion::create($request->all());
                    salary::create($request->all() + ['promotion_id' => $data->id]);
                });
       
        return redirect()->route('promotion',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
        }
    }


     public function edit($id){
        $employee = employee::find(session('employee_id'));
        $promotionIds = DB::table('salaries')
                    ->join('promotions','promotions.id','=','salaries.promotion_id')
                    ->get();
        
        $data = DB::table('salaries')
                    ->join('promotions','promotions.id','=','salaries.promotion_id')
                    ->where('promotions.id',$id)
                    ->first();
        
        return view ('hr.promotion.editPromotion',compact('data','employee','promotionIds'));
    }

    public function update(request $request, $id)
    {
        
        DB::transaction(function () use ($request, $id) {
                    promotion::findOrFail($id)->update($request->all());
                    salary::where('promotion_id','=',$id)->firstOrFail()->update($request->all());
         });
            
    return redirect()->route('promotion.edit',['id'=>$id])->with('success', 'Promotion is updated succesfully');
    }

    public function delete(Request $request, $id)
    {
         DB::transaction(function () use ($id) {
                promotion::findOrFail($id)->delete();
                salary::where('promotion_id','=',$id)->firstOrFail()->delete();
        });

    return redirect()->route('promotion',['id'=>session('employee_id')])->with('success', 'Promotion is deleted succesfully');
    }


}
