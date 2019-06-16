<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class salary extends Model
{
     protected $guarded = [];
     
    public function employee(){
		return $this->belongsTo('App\employee');
	}

}
