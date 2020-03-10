<?php

namespace App\models\submission;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class sub_attachment extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'document_name', 'file_name', 'extension','path','size','content','submission_id',
    ];
}
