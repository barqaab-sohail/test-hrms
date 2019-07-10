<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class nationality extends Model
{
    protected $fillable = [
        'nationality_name', 'employee_id',
    ];	

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
