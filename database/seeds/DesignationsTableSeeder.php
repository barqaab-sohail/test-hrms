<?php

use Illuminate\Database\Seeder;

class DesignationsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
    	DB::table('designations')->delete();

       $designations = array(
			array('name' => 'Chief Executive', 'level' => 1),
			array('name' => 'General Manager (W&C)', 'level' => 1),
			array('name' => 'General Manager (Power)', 'level' => 1),
			array('name' => 'Chief Engineer', 'level' => 2),
			array('name' => 'Chief Contract Engineer', 'level' => 2),
			array('name' => 'Project Manager', 'level' => 2),
			array('name' => 'Manager Finance', 'level' => 3),
			array('name' => 'Principal Engineer', 'level' => 3),
			array('name' => 'Principal Engineer (Electrical)', 'level' => 3),
			array('name' => 'Principal Engineer (Civil)', 'level' => 3),
			array('name' => 'Deputy Manager Finance', 'level' => 4),
			array('name' => 'Deputy Manager HR&A', 'level' => 4),
			array('name' => 'Senior Engineer', 'level' => 6),
			array('name' => 'Senior Engineer (Electrical)', 'level' => 6),
			array('name' => 'Senior Engineer (Civil)', 'level' => 6),
			array('name' => 'Junior Engineer', 'level' => 9),
			array('name' => 'Junior Engineer (Electrical)', 'level' => 9),
			array('name' => 'Junior Engineer (Civil)', 'level' => 9),
			array('name' => 'Senior Accounts Officer', 'level' => 9),
			array('name' => 'Accounts Officer', 'level' => 9),
			array('name' => 'Senior Accountant', 'level' => 10),
			array('name' => 'Audit Officer', 'level' => 10),
			array('name' => 'IT Coordinator', 'level' => 10),
			array('name' => 'Computer Processing Officer', 'level' => 10),
			array('name' => 'Office Supervisor', 'level' => 10),
			array('name' => 'Assistant Accounts Officer', 'level' => 11),
			array('name' => 'PS to Chief Executive', 'level' => 11),
			array('name' => 'Computer Operator', 'level' => 11),
			array('name' => 'AutoCAD Operator', 'level' => 11),
			array('name' => 'Accounts Assistant', 'level' => 12),
			array('name' => 'Accounts Clerk', 'level' => 12),
			array('name' => 'Junior Clerk', 'level' => 12),
			array('name' => 'Caretaker', 'level' => 13),
			array('name' => 'Driver', 'level' => 13),
			array('name' => 'Utility Person', 'level' => 14),
			array('name' => 'Security Guard', 'level' => 14),
		);

       DB::table('designations')->insert($designations);

    }
}
