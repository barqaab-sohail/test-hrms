<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class role extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

	public function employee(){
		return $this->belongsTo('App\employee');
	}

	public function user(){
		return $this->belongsTo('App\user');
	}

}
