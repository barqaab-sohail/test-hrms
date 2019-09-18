<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class language extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    
    protected $fillable = [
        'all_language_id', 'speaking','writing','reading','employee_id',
    ];	

    
	public function all_language(){
		return $this->belongsTo('App\all_language');
	}

}
