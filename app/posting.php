<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class posting extends Model
{
     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
