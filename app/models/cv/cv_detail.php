<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_detail extends Modelimplements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'name', 'father_name', 'cnic','date_of_birth','job_starting_date','cv_submission_date','foreign_experience','donor_agency','barqaab_employment','skill','comments',
    ];
}
