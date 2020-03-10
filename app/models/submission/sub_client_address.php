<?php

namespace App\models\submission;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class sub_client_address extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'address','phone','fax','mobile','email','sub_client_id',
    ];

    
}
