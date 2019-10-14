<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Education;
use App\employee;
use DB;
use App\posting;
use App\leave_annual_balance;

class HrController extends Controller
{
    
	public function __construct()
    {
        $this->middleware('auth');
    }

    public function testing (){

        $data = employee::all()->where('employee_status',0);

        foreach($data as $d){

            $input['leave_type_id'] = 1;
            $input['employee_id'] = $d->id;
            $input['year'] = 2019;
            $input['quota'] = 12;

             leave_annual_balance::create($input);
        }
        dd('OK');
    }

    public function index (){

       // $users = User::with('contacts')->get();

        $users = DB::table('users')
       // ->join('contacts', 'users.id', '=', 'contacts.user_id')
        //->join('experiences', 'users.id', '=', 'experiences.user_id')
        //->join('educations', 'users.id', '=', 'educations.user_id')
       //->select('users.*', 'contacts.*','experiences.*')
        ->get();

                        /* Placed in View

                        @php
                            $to = \Carbon\Carbon::createFromFormat('Y-m-d', $user->to);
                            $from = \Carbon\Carbon::createFromFormat('Y-m-d', $user->from);
                            $diff_in_months = $to->diffInMonths($from);
                        @endphp */

        return view('hr.employeeList')->with('users',$users);
    }

    public function edit($id){
          
          $data = User::find($id);
          return view ('hr.editInformation')->with ('data', $data);
    }


     public function update(Request $request, $id)
    {
       
         
        $this->validate($request, [
         'email' => 'required|unique:users,email,'. $id,
         'cnic' => 'required|numeric|digits:13|unique:users,cnic,'.$id,
        ]);

        User::findOrFail($id)->update($request->all());
      
       return redirect()->route('employee.edit',['id'=>$id])->with('success', 'Employee is updated succesfully');

    }


    public function createEmployeeInformation(){

        
        return view ('hr.createEmployeeInformation');

    }
    public function education(){

        
        return view ('hr.education');

    }

     public function storeEmployeeInformation (Request $request){

      

         $request->validate([
         'first_name' => 'required|max:255',
         'last_name' => 'required|max:255',
         'email' => 'required|unique:users|email',
         'cnic' => 'required|unique:users|numeric|digits:13',
         'cnic_expiry' => 'required|date|after:tomorrow',
         'picture' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2000',
            
         ]);

        $input = $request->all();
       // $fileName = time()."-".$request->cnic;
        //$fileExt = $request->file('picture')->getClientOriginalExtension();
        //Storage::disk('public')->put($fileName.".".$fileExt, $request->file('picture'));
       

        $imageName = time().'.'.request()->picture->getClientOriginalExtension();
        request()->picture->move(public_path('images'), $imageName);
        $input['picture'] = $imageName;
       
       $data = User::create($input);

       return view ('hr.education')->with('data', $data)->with('message', 'Data Sucessfully Save');


    }

public function storeEducation (Request $request){

      

         $request->validate([
         'degree_name' => 'required|max:255',
         'institute' => 'required|max:255',
                    
         ]);

        $input = $request->all();
        $data = Education::create($input);

       return redirect('employeeList')->with('message', 'Data Sucessfully Save')->with('data', $data);


    }



}
