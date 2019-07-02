<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class promotion extends Model
{
    protected $fillable = [
        'promoted_designation', 'effective_date', 'promotion_remarks', 'employee_id',
    ];	
    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
