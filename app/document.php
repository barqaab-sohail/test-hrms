<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class document extends Model
{
    protected $fillable = [
        'document_name', 'file_name', 'type','date','reference_no','employee_id',
    ];

    public function employee(){
	return $this->belongsTo('App\employee');
	}
}