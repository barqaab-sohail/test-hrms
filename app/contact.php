<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class contact extends Model
{
     protected $fillable = [ 'house','street','town','tehsil','city','province','landline','mobile','country','type','employee_id'
     ];

    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
