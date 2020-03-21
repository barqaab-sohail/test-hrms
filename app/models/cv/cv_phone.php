<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_phone extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'phone', 'cv_contact_id',
    ];

    public function cv_detail()
    {
        return $this->belongsTo('App\models\cv\cv_detail');
    }


}
