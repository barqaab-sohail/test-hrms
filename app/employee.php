<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class employee extends Model implements Auditable
{
   use \OwenIt\Auditing\Auditable;

   protected $fillable = [
        'first_name','middle_name','last_name','father_name','date_of_birth','gender_id','cnic','cnic_expiry','employee_no','marital_status_id','religon','employee_status_id','division_id',
    ];
     
    public function user()
    {
        return $this->hasOne('App\user');
    }
    public function picture()
    {
        return $this->hasOne('App\picture');
    }

    public function appointment()
    {
        return $this->hasOne('App\appointment');
    }
    public function salary()
    {
        return $this->hasMany('App\salary');
    }
    
    public function posting()
    {
        return $this->hasMany('App\posting')->latest();
    }
    public function education()
    {
        return $this->hasMany('App\education');
    }
     public function membership()
    {
        return $this->hasMany('App\membership');
    }
     public function language()
    {
        return $this->hasMany('App\language');
    }
    public function experience()
    {
        return $this->hasMany('App\experience');
    }
    public function promotion()
    {
        return $this->hasMany('App\promotion');
    }
    public function contact()
    {
        return $this->hasMany('App\contact');
    }
    public function emergency_contact()
    {
        return $this->hasMany('App\emergency_contact');
    }
    public function document()
    {
        return $this->hasMany('App\document');
    }
    public function other_information()
    {
        return $this->hasOne('App\other_information');
    }




    public function employee_status(){
        return $this->belongsTo('App\employee_status');
    }

    public function gender()
    {
        return $this->belongsTo('App\gender');
    }
    public function marital_status()
    {
        return $this->belongsTo('App\marital_status');
    }
    public function blood_group()
    {
        return $this->hasOne('App\blood_group');
    }
    public function bank()
    {
        return $this->hasMany('App\bank');
    }
    public function charging()
    {
        return $this->hasMany('App\charging');
    }
    public function division()
    {
        return $this->belongsTo('App\division');
    }
    public function dependent()
    {
        return $this->hasMany('App\dependent');
    }
    public function notification()
    {
        return $this->hasMany('App\notification');
    }
    public function nationality()
    {
        return $this->hasMany('App\nationality');
    }  
    public function project()
    {
        return $this->hasMany('App\project');
    }
     public function publication()
    {
        return $this->hasMany('App\publication');
    }
     public function training()
    {
        return $this->hasMany('App\training');
    }
   
}
