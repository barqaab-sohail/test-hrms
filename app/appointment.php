<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class appointment extends Model
{
    protected $fillable = [
        'designation','joining_date','project','expiry_date','reference_no','appointment_date','category','grade','appointment_letter_type','employee_id',]; 
    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
