<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class leave_type extends Model
{
    
    public function leave_initial_balance(){
		return $this->hasMany('App\leave_initial_balance');
	}
}
