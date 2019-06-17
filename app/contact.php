<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
	protected $fillable = [
        'house','type','street','town','city','province','country','landline','mobile','employee_id',];   


	  public function employee(){
		return $this->belongsTo('App\employee');
	}


}
