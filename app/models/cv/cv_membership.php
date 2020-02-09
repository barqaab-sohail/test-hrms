<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_membership extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'membership_name',
    ];


    public function cv_detail()
    {
        return $this->belongsToMany('App\models\cv\cv_detail')
        ->withPivot('membership_number')
        ->withTimestamps();
    }
}
