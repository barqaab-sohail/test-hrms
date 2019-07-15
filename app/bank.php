<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class bank extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'name', 'account_no', 'branch_code','branch_name','employee_id',
    ];
    
    public function employee(){
		return $this->belongsTo('App\employee');
	}


}
