<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class project extends Model implements Auditable
{
   use \OwenIt\Auditing\Auditable;

	protected $fillable = [
        'name','type','client','commencement','contractual_completion','actual_completion','status','role','share',
    ];

    //
}
