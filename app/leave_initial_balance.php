<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class leave_initial_balance extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'leave_type_id', 'employee_id', 'balance','effective_date',
    ];	

    public function employee(){
		return $this->belongsTo('App\employee');
	}
	public function leave_type(){
		return $this->belongsTo('App\leave_type');
	}
}
