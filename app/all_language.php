<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class all_language extends Model
{
    
    public function language(){
		return $this->hasMany('App\language');
	}
}
