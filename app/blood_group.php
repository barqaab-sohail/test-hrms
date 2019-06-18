<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class blood_group extends Model
{
    
	protected $table = 'blood_group';
	
    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
