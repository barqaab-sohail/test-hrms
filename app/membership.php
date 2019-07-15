<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class membership extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'name', 'membership_no', 'expiry_date','employee_id',
    ];	

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
