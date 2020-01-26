<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_contact extends Modelimplements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'address', 'email', 'cv_detail_id',
    ];
}
