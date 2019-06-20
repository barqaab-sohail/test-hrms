<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class education extends Model
{

	protected $table = 'educations';
	
	protected $fillable = [
        'degree_name', 'institute', 'level','completion','from','to', 'marks_obtain','total_marks','country','grade','employee_id',
    ];

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
