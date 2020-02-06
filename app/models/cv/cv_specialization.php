<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_specialization extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'specialization_name', 
    ];

    public function cv_field()
    {
        return $this->belongsToMany('App\models\cv\cv_field')
        ->withPivot('year')
        ->withTimestamps();
    }

    public function cv_detail()
    {
        return $this->belongsToMany('App\models\cv\cv_detail');
    }
}
