<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class salary extends Model
{
     protected $guarded = [];
     protected $table = 'salary';

    public function employee(){
		return $this->belongsTo('App\employee');
	}

}
