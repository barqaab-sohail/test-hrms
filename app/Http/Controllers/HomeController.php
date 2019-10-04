<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\employee;
use App\notification;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Validator;
use App\Event;
use Calendar;
use App\task;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function index()
    {
        
        $user = Auth::user();
        $taskIds = task::all()->where('employee_id', Auth::user()->id);
        return view('dashboard')->with(compact('user', 'taskIds'));
    }

    public function addEvent(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'event_name' => 'required',
            'start_date' => 'required',
            'end_date' => 'required'
        ]);
 
        if ($validator->fails()) {
            \Session::flash('warnning','Please enter the valid details');
            return Redirect::to('/dashboard')->withInput()->withErrors($validator);
        }
 
        $event = new Event;
        $event->event_name = $request['event_name'];
        $event->start_date = $request['start_date'];
        $event->end_date = $request['end_date'];
        $event->save();
 
        \Session::flash('success','Event added successfully.');
        return Redirect::to('/dashboard');
    }


   

    public function store (Request $request){

      

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

       return redirect()->back()->with('message', 'Data Sucessfully Save');


    }

}
