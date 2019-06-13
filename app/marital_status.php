<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class marital_status extends Model
{
    protected $table = 'marital_status';

    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
