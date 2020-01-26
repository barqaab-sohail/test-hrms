<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_education extends Modelimplements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'degree_name', 'level',
    ];
}
