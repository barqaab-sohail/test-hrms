<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_field extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'field_name', 
    ];

     public function cv_detail_cv_specialization()
    {
        return $this->belongsToMany('App\models\cv\cv_detail_cv_specialization');
    }
}
