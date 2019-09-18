<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class training extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'title', 'venue','institute', 'country_id', 'from','to','description','employee_id',
    ];	


     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
