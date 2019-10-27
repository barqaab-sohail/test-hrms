<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class promotion extends Model implements Auditable
{
	use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'designation_id', 'effective_date', 'promotion_remarks', 'employee_id', 'category', 'grade',
    ];	
    public function employee(){
		return $this->belongsTo('App\employee');
	}

	public function designation()
    {
        return $this->belongsTo('App\designation');
    }

    public function salary()
    {
        return $this->hasOne('App\salary');
    }
}
