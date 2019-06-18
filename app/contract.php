<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class contract extends Model
{
    protected $fillable = [
        'designation','joining_date','category','grade','project','contract_type','appointment_letter_type','expiry_date','employee_id',]; 
    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
