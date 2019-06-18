<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class other_information extends Model
{
    protected $fillable = [
        'driving_licence', 'licence_expiry', 'passport_no','passport_expiry','blood_group','disability','domicile','employee_id',
    ];	

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
