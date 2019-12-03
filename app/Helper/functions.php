<?php
use App\employee;
use App\posting;

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

    $employee = employee::find($id);
    
    if($employee->posting->first()!=null){
    $managerId = $employee->posting->first()->manager_id;
    $manager = employee::find($managerId);
    return  $manager->first_name . ' '. $manager->middle_name. ' '.$manager->last_name;   
	
	}else{

		return 'No Manager Assigned';
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

//Manager subordinate list
function managee($id){

$employee= employee::find($id);
     	//Order by joining date because when unique applied then only latest joining data remain.
        $posting = posting::orderBy('joining_date','desc')->get();
        $posting = $posting->unique('employee_id')->all();

        $collection = collect([]);
        foreach($posting as $p){
            if($p->manager_id==$employee->id){

            $collection->push($p->employee);
                
            }
        }
        return $collection;
}


