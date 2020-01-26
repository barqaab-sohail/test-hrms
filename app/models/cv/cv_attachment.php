<?php

namespace App\models\cv;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class cv_attachment extends Modelimplements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
    protected $fillable = [
        'document_name', 'file_name', 'extension','path','size','content','cv_detail_id',
    ];
}
