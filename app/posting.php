<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
 
class posting extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

	protected $fillable = [
        'designation_id', 'posting_date','joining_date', 'location','manager_id', 'project_id','employee_id',
    ];	


    public function employee(){
		return $this->belongsTo('App\employee');
	}

	public function manager(){
		return $this->belongsTo('App\employee','manager_id');
	}
    

	public function designation()
    {
        return $this->belongsTo('App\designation');
    }

    public function project(){

    	return $this->belongsTo('App\project');
    }

	
}
