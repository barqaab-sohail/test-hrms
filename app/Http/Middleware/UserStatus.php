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
        
        $user = User::findOrFail(Auth::id());
        if($user->status==0){
            Auth::logout();
            
            return redirect()->route('login')->with('message', 'Registration First');

        }

        return $next($request);
    }
}
