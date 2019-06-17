<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class emergency_contact extends Model
{
    
	protected $fillable = [
        'name', 'relation', 'mobile','landline','employee_id',
    ];

    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
