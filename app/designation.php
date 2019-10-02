<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;


class designation extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

	protected $fillable = [
        'name', 'level',
    ];	

   
	
	public function posting()
    {
        return $this->hasMany('App\posting');
    }
    
}
