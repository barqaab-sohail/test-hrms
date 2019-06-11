<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class other_information extends Model
{
     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
