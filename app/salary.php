<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class salary extends Model
{
    protected $fillable = [
       'basic_pay', 'house_rent', 'dearness_allowance', 'adhoc_2009', 'adhoc_2010','adhoc_2012','adhoc_2013','field_allowance','other_allowance','total','promotion_id','salary_remarks','employee_id',
    ];	
     
     
    public function employee(){
		return $this->belongsTo('App\employee');
	}

}
