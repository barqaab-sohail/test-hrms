<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;


class employee_exit extends Model implements Auditable
{
    
     use \OwenIt\Auditing\Auditable;
     protected $fillable = [
        'employee_id','employee_status_id','effective_date','reason','remarks',
    ];


    public function employee_status(){
        return $this->belongsTo('App\employee_status');
    }


}
