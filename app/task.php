<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class task extends Model
{
    
    protected $fillable = [
        'task_detail', 'completion_date','remarks', 'employee_id'
    ];

    protected $attributes = [
        'status' => 1
    ];
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
