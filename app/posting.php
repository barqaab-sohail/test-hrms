<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class posting extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

	protected $fillable = [
        'position', 'posting_date', 'manager_id', 'project','employee_id',
    ];	


     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
