<?php

use Illuminate\Database\Seeder;

class LeaveTypeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
         $leaveTypes = array(
            array(
                "name" => "Casual Leave",
                "annual_quota" => 12.0,
                "isAccumulate" => false,
                "isHalfLeave" => true,
                "accumulate_limit"=>0,
                "starting"=>1,
                "ending"=>12,
                "isEncashment"=>false),
          array(
                "name" => "Earned Leave",
                "annual_quota" => 18.0,
                "isAccumulate" => true,
                "isHalfLeave" => false,
                "accumulate_limit"=>60.0,
                "starting"=>1,
                "ending"=>12,
                "isEncashment"=>false),
           );
		DB::table('leave_types')->insert($leaveTypes);
    }
}
