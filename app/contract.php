<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class contract extends Model implements Auditable
{
   use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'designation','joining_date','expiry_date','category','grade','project','appointment_letter_type','expiry_date','employee_id',]; 
    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
