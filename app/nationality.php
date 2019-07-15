<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class nationality extends Model implements Auditable
{
   use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'nationality_name', 'employee_id',
    ];	

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
