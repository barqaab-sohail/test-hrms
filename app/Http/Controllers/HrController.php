<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use DB;

class HrController extends Controller
{
    
	public function __construct()
    {
        $this->middleware('auth');
    }


    public function employeeList (){

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
         'cnic' => 'required|unique:users|max:255',
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
       
       User::create($input);

       return redirect('education')->with('message', 'Data Sucessfully Save');


    }



}
