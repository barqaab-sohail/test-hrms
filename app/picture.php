<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class picture extends Model
{
 	protected $fillable = [
        'name','employee_id','type','size','width','height'
    ];



    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
