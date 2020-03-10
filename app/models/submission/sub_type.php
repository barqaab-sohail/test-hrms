<?php

namespace App\models\submission;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class sub_type extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    public function submission()
    {
        return $this->belongsToMany('App\models\cv\submission');
    }
}
