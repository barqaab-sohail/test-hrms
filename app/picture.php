<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class picture extends Model implements Auditable
{
 	use \OwenIt\Auditing\Auditable;

 	protected $fillable = [
        'name','employee_id','path','type','size','width','height'
    ];



    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
