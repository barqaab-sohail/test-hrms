<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\employee;
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

    public function index()
    {
        //$user = User::where('id', 'user_id')->with('roles')->first();
        //$users = User::with('roles')->get();
        $user = Auth::user();
        //dd($user->employee->first_name);
        return view('dashboard')->with(compact('user'));
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
