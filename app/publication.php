<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class publication extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'title','description', 'channel', 'year','employee_id',
    ];	

     public function employee(){
		return $this->belongsTo('App\employee');
	}
}
