<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Storage;
use App\User;
use DB;

use Illuminate\Http\Request;

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

    public function test()
    {
       
        //$user = User::where('id', 'user_id')->with('roles')->first();
        //$users = User::with('roles')->get();
         $user = User::all();
        return view('test')->with(compact('user'));
    }

    public function index()
    {
       
        //$user = User::where('id', 'user_id')->with('roles')->first();
        //$users = User::with('roles')->get();
         $user = User::all();
        return view('dashboard')->with(compact('user'));
    }


    public function list (){

       // $users = User::with('contacts')->get();

        $users = DB::table('users')
        //->join('contacts', 'users.id', '=', 'contacts.user_id')
        //->join('experiences', 'users.id', '=', 'experiences.user_id')
       ->select('users.*'
        //, 'contacts.*','experiences.*'
        )
        ->paginate(15);

                        /* Placed in View

                        @php
                            $to = \Carbon\Carbon::createFromFormat('Y-m-d', $user->to);
                            $from = \Carbon\Carbon::createFromFormat('Y-m-d', $user->from);
                            $diff_in_months = $to->diffInMonths($from);
                        @endphp */

        return view('listOfEmployees')->with(compact('users'));
    }

    public function create(){

        
        return view ('newUser');

    }

    public function store (Request $request){

         $request->validate([
         'cnic' => 'bail|required|unique:users|max:255',
         'email' => 'bail|required|unique:users|email',
         'picture' => 'bail|image|mimes:jpeg,png,jpg,gif,svg|max:512',
            
         ]);

        $input = $request->all();
        $fileName = time()."-".$request->user()->cnic;
        $fileExt = $request->file('picture')->getClientOriginalExtension();
        Storage::disk('public')->put($fileName.".".$fileExt, $request->file('picture'));
        $input['picture'] = $fileName.".".$fileExt;
       
       User::create($input);

       return redirect()->back()->with('message', 'Data Sucessfully Save');


    }

}
