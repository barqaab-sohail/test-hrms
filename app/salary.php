<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class salary extends Model
{
     protected $guarded = [];
     protected $table = 'salary';

    public function user(){

		return $this->belongsTo('App\User');
	}

}
