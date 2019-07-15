<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class language extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
     protected $fillable = [
        'name', 'speaking','writing','reading','employee_id',
    ];	

    public function employee(){
		return $this->belongsTo('App\employee');
	}
}
