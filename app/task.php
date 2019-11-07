<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class task extends Model
{
    
    protected $fillable = [
        'task_detail', 'completion_date','remarks', 'status', 'employee_id'
    ];


    //default value of status=0
    protected $attributes = [
        'status' => 0 //0 pending and 1 completed 
    ];
    
    //get value of status and show in string as per statusOptions
    public function getStatusAttribute($attribute)
    {
        return $this->statusOptions()[$attribute];
    }
    
    public function statusOptions()
    {
        return [
            0 => 'Pending',
            1 => 'Completed'
        ];
    }

  
    public function employee(){
		return $this->belongsTo('App\employee');
	}


	

}
