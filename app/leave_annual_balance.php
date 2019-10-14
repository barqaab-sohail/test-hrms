<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class leave_annual_balance extends Model
{
      protected $fillable = [
        'employee_id', 'leave_type_id','quota','year'
    ];	
}
