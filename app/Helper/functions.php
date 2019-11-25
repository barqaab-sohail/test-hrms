<?php
use App\employee;

function manager($id){
    $employee = employee::find($id);

   // dd($employee);
    if($employee){
    $firstManagerObject = $employee->posting->first();
        if($firstManagerObject){
        $firstManager = employee::find($firstManagerObject->manager_id);
        
        echo "1    Manager: " . $firstManager->first_name . ' '. $firstManager->middle_name. ' '.$firstManager->last_name;
        }
    }

}

function managerName($id){

	if($id){
    $employee = employee::find($id);
    return  $employee->first_name . ' '. $employee->middle_name. ' '.$employee->last_name;   
	}else{

		return 'No Manager';
	}
}

function managerLevel($id){

	if($id){
    	$employee = employee::find($id);
    	$level=0;
    	$collection = collect([]);
    
        if($employee->posting->first()!=null){
	    	
	    	$manager = $employee->posting->first()->manager_id;

	    	while($manager != $employee->id){
	    		$collection->push($employee);
	    		$employee = employee::find($manager);
	    		$manager = $employee->posting->first()->manager_id;
	    		$level ++;
	    	}
	    	$collection->push(employee::find($manager));
	    	return $collection;
	    }
	    return 'No Manager Assigned';
	}else{
		return 'No Manager';
	}
}

function upperManager($id){

	if($id){
    	$employee = employee::find($id);
    	$level=0;
    	$collection = collect([]);
    
        if($employee->posting->first()!=null){
	    	
	    	$manager = $employee->posting->first()->manager_id;

	    	while($manager != $employee->id){
	    		$employee = employee::find($manager);
	    		$manager = $employee->posting->first()->manager_id;
	    		$level ++;
	    	}
	    	return $level;
	    }
	    return 'No Manager Assigned';
	}else{
		return 'No Manager';
	}
}


