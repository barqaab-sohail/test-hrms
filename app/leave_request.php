<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class leave_request extends Model
{
    
    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
