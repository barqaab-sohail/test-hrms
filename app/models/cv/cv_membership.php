<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_membership extends Modelimplements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'name', 'number', 'cv_detail_id',
    ];
}
