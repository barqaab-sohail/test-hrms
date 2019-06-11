<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class contract extends Model
{
     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
