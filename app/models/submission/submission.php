<?php

namespace App\models\submission;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class submission extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $fillable = [
        'project_name','submission_date','submission_time','submission_address','scope_of_services','scope_of_work','comments','sub_type_id','sub_contract_type_id'
    ];




    public function sub_client()
    {
        return $this->hasOne('App\models\submission\sub_client');
    }

    public function sub_type()
    {
        return $this->belongsTo('App\models\submission\sub_type');
    }

    public function sub_contract_type()
    {
        return $this->belongsTo('App\models\submission\sub_contract_type');
    }

    // first model is final model and second modal is through search
    public function sub_client_address()
    {
        return $this->hasOneThrough('App\models\submission\sub_client_address', 'App\models\submission\sub_client');
    }

     public function sub_attachment()
    {
        return $this->hasMany('App\models\submission\sub_attachment');
    }
    
}
