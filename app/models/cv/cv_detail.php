<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_detail extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'full_name','father_name','cnic','date_of_birth','job_starting_date','cv_submission_date','foreign_experience','donor_experience','barqaab_employment','comments',
    ];

    public function hr_education()
    {
        return $this->belongsToMany('App\models\common\hr_education')
        ->withPivot('institute', 'passing_year')
    	->withTimestamps();
    }

    public function cv_experience()
    {
        return $this->hasMany('App\models\cv\cv_experience');
    }
     public function cv_discipline()
    {
        return $this->hasMany('App\models\cv\cv_discipline');
    }
    public function cv_stage()
    {
        return $this->hasMany('App\models\cv\cv_stage');
    }
   

    public function cv_membership()
    {
        return $this->belongsToMany('App\models\cv\cv_membership')
        ->withPivot('membership_number')
        ->withTimestamps();
    }

    public function cv_phone()
    {
        return $this->hasManyThrough('App\models\cv\cv_phone', 'App\models\cv\cv_contact');
    }

    public function cv_contact()
    {
        return $this->hasOne('App\models\cv\cv_contact');
    }

    public function cv_skill()
    {
        return $this->hasMany('App\models\cv\cv_skill');
    }

    public function cv_attachment()
    {
        return $this->hasMany('App\models\cv\cv_attachment');
    }


}
