<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class education extends Model implements Auditable
{

	use \OwenIt\Auditing\Auditable;

	protected $table = 'educations';
	
	protected $fillable = [
        'degree_name', 'institute', 'level','completion','from_month','from_year','to_month', 'to_year','marks_obtain','total_marks','country_id','grade','employee_id',
    ];

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
