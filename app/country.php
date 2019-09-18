<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class country extends Model
{
    public function training(){
	return $this->hasMany('App\training');
	}
}
