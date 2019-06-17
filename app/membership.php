<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class membership extends Model
{
     protected $fillable = [
        'institute', 'membership_no', 'expiry_date','employee_id',
    ];	

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
