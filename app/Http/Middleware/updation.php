<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use App\user;

use Closure;

class updation
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
        
        if(Auth::user()->role_id == 3 || Auth::user()->role_id == 5){
            
            return Redirect::back()->withErrors(['Your are not authorized for this action']);
        }

        return $next($request);
    }
}
