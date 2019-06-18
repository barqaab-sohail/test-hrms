<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class project extends Model
{
   
protected $fillable = [
        'name','type','client','commencement','contractual_completion','actual_completion','status','role','share',
    ];

    //
}
