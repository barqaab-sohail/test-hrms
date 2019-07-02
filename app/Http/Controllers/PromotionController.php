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
    $promotionIds = DB::table('promotions')
                    ->join('salaries','promotions.employee_id','=','salaries.employee_id')
                    ->distinct();
    $wordCount = $promotionIds->count();
    dd($wordCount);
    //promotion::all()->where('employee_id', $id);
    return view ('hr.promotion.promotion',compact('employee','promotionIds'));
    }

    public function store(Request $request){
    
        $salary = DB::table('salaries')->where('employee_id',session('employee_id'))->where('promotion_id',NULL)->first();
        if($salary==null){
            return redirect()->route('promotion',['id'=>session('employee_id')])->with('error', 'Appointment Letter Salary is not Entered. Please Enter Appointment Letter Salary');
        }else{
            DB::beginTransaction();
                try {
                    $data = promotion::create($request->all());
                    salary::create($request->all() + ['promotion_id' => $data->id]);
                    DB::commit();
               } catch (Exception $e) {
                    DB::rollback();
                }
               
       
        return redirect()->route('promotion',['id'=>session('employee_id')])->with('success', 'Data is saved succesfully');
        }
    }


}
