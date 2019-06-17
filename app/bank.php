<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class bank extends Model
{
    
    protected $fillable = [
        'name', 'account_no', 'branch_code','branch_name','employee_id',
    ];
    
    public function employee(){
		return $this->belongsTo('App\employee');
	}


}
