<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class division extends Model
{
    
   public function employee(){
	return $this->hasMany('App\employee');
	}
}
