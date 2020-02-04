<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_detail extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'full_name','father_name','cnic','date_of_birth','job_starting_date','foreign_experience','donor_experience','barqaab_employment','comments',
    ];
}
