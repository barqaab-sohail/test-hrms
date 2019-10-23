<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class leave_balance extends Model implements Auditable
{
	use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'employee_id','leave_type_id', 'balance','year',
    ];	

}
