<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class contact_number extends Model
{
    protected $fillable = [
        'name','designation','mobile_1','mobile_2','mobile_3','office','fax','landline','email','address','remarks',
    ];
}
