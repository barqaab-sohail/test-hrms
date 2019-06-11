<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class charging extends Model
{
    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
