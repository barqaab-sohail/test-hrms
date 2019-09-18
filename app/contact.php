<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class contact extends Model implements Auditable
{
	use \OwenIt\Auditing\Auditable;

     protected $fillable = [ 'house','street','town','tehsil','city','province','landline','mobile','country_id','type','employee_id'
     ];

    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
