<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class emergency_contact extends Model implements Auditable
{
   use \OwenIt\Auditing\Auditable;

	protected $fillable = [
        'name', 'relation', 'mobile','landline','employee_id',
    ];

    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
