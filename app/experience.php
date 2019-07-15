<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class experience extends Model implements Auditable
{
 use \OwenIt\Auditing\Auditable;

	protected $fillable = [
        'employer', 'position', 'from','to','project','location', 'client','country','main_features','activities','employee_id',
    ];

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
