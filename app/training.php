<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class training extends Model
{
    protected $fillable = [
        'title', 'venue','institute', 'country', 'from','to','description','employee_id',
    ];	


     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
