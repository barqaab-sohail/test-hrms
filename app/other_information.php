<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class other_information extends Model implements Auditable
{
   use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'driving_licence', 'licence_expiry', 'passport_no','passport_expiry','blood_group','disability','domicile','employee_id',
    ];	

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
