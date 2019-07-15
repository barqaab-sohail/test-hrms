<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class dependent extends Model implements Auditable
{
   use \OwenIt\Auditing\Auditable;
    protected $fillable = [
        'name', 'date_of_birth', 'relation','gender','employee_id',
    ];

    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
