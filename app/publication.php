<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class publication extends Model
{
      protected $fillable = [
        'description', 'channel', 'year','employee_id',
    ];	

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
