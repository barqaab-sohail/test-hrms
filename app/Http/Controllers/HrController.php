<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Education;
use App\employee;
use DB;
use Illuminate\Support\Facades\Auth;
use App\posting;
use App\leave_balance;
use App\leave_type;

class HrController extends Controller
{
    
	public function __construct()
    {
        $this->middleware('auth');
    }

    public function testing (){

        $data = employee::all()->where('employee_status',0);
        $leaveType=leave_type::all();
       
        DB::beginTransaction();
        try { 
            foreach($data as $d){

                foreach($leaveType as $leave){
                    $balance = 0;

                        if( isset($d->appointment->category)){

                            if (($leave->name =="Earned Leave")&&($d->appointment->category=="A")){
                                $balance = 18;
                            }elseif($leave->name =="Casual Leave"){
                                 $balance = 12;
                            }elseif(($leave->name =="Earned Leave")&&($d->appointment->category!="A")){
                                 continue;
                            }
                        }elseif($leave->name =="Casual Leave"){
                                 $balance = 12;
                        }else{
                            continue;
                        }

                    $input['leave_type_id'] = $leave->id;
                    $input['employee_id'] = $d->id;
                    $input['balance'] = $balance;
                    $input['year'] = 2019;

                 leave_balance::create($input);
                }
            }
        DB::commit();
        return redirect()->route('dashboard')->with('success', 'Leave Assigned  succesfully');
        }catch(\Illuminate\Database\QueryException $ex){ 
             //$error = $ex->getMessage();
            $error = "We Found Some error"; 
            DB::rollback();
            return redirect()->route('dashboard')->with('error', $error);
             // Note any method of class PDOException can be called on $ex.
        }
       // Auth::user()->givePermissionTo('view contact');
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

    public function prime(){

    $number = 773;  //number greater than 1
    $i = 2;

        while($i<$number){       //n+1
            if($number%$i==0){          //n  
                echo "not prime";     //1
                exit;
            }

            else $i++;          //n time

        }
        
        // Input Number 
        //Initialize Count with 2;
        // If number modulus count is equal to count 
                //print "Not Prime" and exit
        //Else
            //Increment 1 count

        //End Whiel Loop

        //Print "Prime"

        
            echo"prime";    //1
            // 2+n+1+n+n+1 = 3n+4 = O(n)
        
    }



}
