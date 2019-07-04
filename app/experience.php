<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class experience extends Model
{
 
	protected $fillable = [
        'employer', 'position', 'from','to','project','location', 'client','country','main_features','activities','employee_id',
    ];

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
