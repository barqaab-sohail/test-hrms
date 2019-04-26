<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class experience extends Model
{
    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
