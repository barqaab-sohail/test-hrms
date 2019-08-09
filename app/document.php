<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class document extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'document_name', 'file_name','file_path', 'type','date','reference_no','employee_id',
    ];

    public function employee(){
	return $this->belongsTo('App\employee');
	}
}