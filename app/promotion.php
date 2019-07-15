<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class promotion extends Model implements Auditable
{
	use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'promoted_designation', 'effective_date', 'promotion_remarks', 'employee_id',
    ];	
    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
