<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class dependent extends Model
{
    protected $fillable = [
        'name', 'date_of_birth', 'relation','gender','employee_id',
    ];

    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
