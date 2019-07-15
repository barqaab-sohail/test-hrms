<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class contact_number extends Model implements Auditable
{
   use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'name','designation','mobile_1','mobile_2','mobile_3','office','fax','landline','email','address','remarks',
    ];
}
