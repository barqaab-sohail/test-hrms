<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class appointment extends Model implements Auditable
{
	use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'designation_id','expiry_date','reference_no','appointment_date','category','grade','appointment_letter_type','employee_id',]; 
    
    
    public function employee(){
		return $this->belongsTo('App\employee');
	}

	public function designation(){
		return $this->belongsTo('App\designation');
	}


}
