<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_contact extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'address','city_id', 'state_id','country_id','email', 'cv_detail_id',
    ];

	public function cv_detail()
    {
        return $this->belongsTo('App\models\cv\cv_detail');
    }


}
