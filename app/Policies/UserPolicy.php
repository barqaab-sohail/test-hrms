<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class UserPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function entry(User $user){

        if ($user->role_id == 1 || $user->role_id == 2 || $user->role_id == 4){
            return true;
        }else{
            return false;
        }
    }

    public function admin(User $user){
        return $user->role_id ==1;
    }

    
}
