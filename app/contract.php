<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class contract extends Model
{
    protected $fillable = [
        'designation','joining_date','expiry_date','category','grade','project','appointment_letter_type','expiry_date','employee_id',]; 
    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
