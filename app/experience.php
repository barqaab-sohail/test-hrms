<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class experience extends Model implements Auditable
{
 use \OwenIt\Auditing\Auditable;

	protected $fillable = [
        'employer', 'position', 'from','to','country_id','activities','employee_id',
    ];

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
