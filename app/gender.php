<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class gender extends Model
{
    
	public function employee(){
	return $this->hasMany('App\employee');
	}

	public function dependent(){
	return $this->hasMany('App\dependent');
	}


}
