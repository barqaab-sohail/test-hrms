<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class language extends Model
{
     protected $fillable = [
        'name', 'speaking','writing','reading','employee_id',
    ];	

    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
