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

    public function cv_education()
    {
        return $this->belongsToMany('App\models\cv\cv_education')
        ->withPivot('institute', 'passing_year')
    	->withTimestamps();
    }

    public function cv_specialization()
    {
        return $this->belongsToMany('App\models\cv\cv_specialization')
        ->withPivot('year')
        ->withTimestamps();
    }

    public function cv_field()
    {
        return $this->hasManyThrough('App\models\cv\cv_field', 'App\models\cv\cv_specialization')
        ->withPivot('year');
    }

    public function cv_membership()
    {
        return $this->belongsToMany('App\models\cv\cv_membership')
        ->withPivot('membership_number')
        ->withTimestamps();
    }

    public function cv_phone()
    {
        return $this->hasMany('App\models\cv\cv_phone');
    }

    public function cv_contact()
    {
        return $this->hasOne('App\models\cv\cv_contact');
    }

    public function cv_skill()
    {
        return $this->hasMany('App\models\cv\cv_skill');
    }






}
