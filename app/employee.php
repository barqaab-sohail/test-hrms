<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class employee extends Model
{
   protected $fillable = [
        'first_name','middle_name','last_name','father_name','date_of_birth','gender','cnic','cnic_expiry','employee_no','marital_status','religon','nationality','manager_id','department_id',
    ];

    
    public function user()
    {
        return $this->hasOne('App\user');
    }

    public function marital_status()
    {
        return $this->hasOne('App\marital_status');
    }

    public function bank()
    {
        return $this->hasOne('App\bank');
    }

    public function charging()
    {
        return $this->hasMany('App\charging');
    }

    public function contact()
    {
        return $this->hasOne('App\contact');
    }
     public function contract()
    {
        return $this->hasOne('App\contract');
    }

    public function department()
    {
        return $this->hasOne('App\department');
    }

     public function dependent()
    {
        return $this->hasMany('App\dependent');
    }

    public function document()
    {
        return $this->hasMany('App\document');
    }
    public function education()
    {
        return $this->hasMany('App\education');
    }
    public function experience()
    {
        return $this->hasMany('App\experience');
    }
    public function language()
    {
        return $this->hasMany('App\language');
    }
     public function membership()
    {
        return $this->hasMany('App\membership');
    }

    public function other_information()
    {
        return $this->hasOne('App\other_information');
    }

    public function picture()
    {
        return $this->hasOne('App\picture');
    }
    public function posting()
    {
        return $this->hasMany('App\posting');
    }

    public function project()
    {
        return $this->hasMany('App\project');
    }
     public function publication()
    {
        return $this->hasMany('App\publication');
    }
     public function salary()
    {
        return $this->hasOne('App\salary');
    }
     public function training()
    {
        return $this->hasMany('App\training');
    }
     public function emergency_contact()
    {
        return $this->hasMany('App\emergency_contact');
    }
   



   
}
