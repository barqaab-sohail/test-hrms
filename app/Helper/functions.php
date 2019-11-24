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


