<?php

namespace App\models\submission;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class sub_participant_score extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    
}
