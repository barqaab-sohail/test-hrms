<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class membership extends Model
{
     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
