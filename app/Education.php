<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class education extends Model
{

	protected $table = 'educations';
	
	protected $fillable = [
        'degree_name', 'institute', 'marks_obtain','total_marks','equal_to','passing_year','user_id',
    ];

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
