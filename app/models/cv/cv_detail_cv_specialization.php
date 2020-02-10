<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_detail_cv_specialization extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    public function cv_field()
    {
        return $this->belongsToMany('App\models\cv\cv_field')
        ->withPivot('year')
        ->withTimestamps();
    }
}
