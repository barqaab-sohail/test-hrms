<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\User;
use App\Http\Middleware\UserStatus;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    //protected $redirectTo = '/dashboard';

    public function redirectTo(){
        
        $user = User::findOrFail(Auth::id());
        if($user->status==0){
            Auth::logout();
              
        return '/login';

        }else{

            return '/dashboard';
        }

    }   

    protected $redirectTo = '/dashboard';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
              
        //$this->middleware('guest')->except('logout');
            
    }
   


    public function logout(){

        Auth::logout();

        return redirect()->route('login');
        //return view ('auth.login');
    }
}
