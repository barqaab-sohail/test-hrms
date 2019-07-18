<?php

namespace App\Http\Middleware;

use Closure;
use App\user;
use Illuminate\Support\Facades\Auth;

class UserStatus
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        
            
        $response = $next($request);
        if(Auth::check() && Auth::user()->user_status == 0){
            Auth::logout();
            return redirect('/register')->with('erro_login', 'Your are not registered user.  Please register first');
            //->with('errors', 'Your error text');
        }

        return $response;


    }
}
