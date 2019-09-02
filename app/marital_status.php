<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class marital_status extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $table = 'marital_status';

   public function employee(){
	return $this->hasMany('App\employee');
	}
}
