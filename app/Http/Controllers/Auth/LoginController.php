<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\User;
use App\Http\Middleware\UserStatus;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

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

    /**
 * Swap a user session with a current one
 * 
 * @param \App\User $user
 * @return boolean
 */
protected function sendLoginResponse(Request $request)
{
    $request->session()->regenerate();
    $previous_session = Auth::User()->session_id;
    if ($previous_session) {
        Session::getHandler()->destroy($previous_session);
    }

    Auth::user()->session_id = Session::getId();
    Auth::user()->save();
    $this->clearLoginAttempts($request);

    return $this->authenticated($request, $this->guard()->user())
        ?: redirect()->intended($this->redirectPath());
}



}
