<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class blood_group extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

	protected $table = 'blood_group';
	
    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
