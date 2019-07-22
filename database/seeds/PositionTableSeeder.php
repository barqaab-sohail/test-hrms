<?php

use Illuminate\Database\Seeder;

class PositionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('positions')->delete();

       $positions = array(
			array('name' => 'Chief Executive', 'level' => 1),
			array('name' => 'General Manager (W&C)', 'level' => 1),
			array('name' => 'General Manager (Power)', 'level' => 1),
			array('name' => 'Chief Engineer', 'level' => 2),
			array('name' => 'Project Manager', 'level' => 2),
			array('name' => 'Manager Finance', 'level' => 3),
			array('name' => 'Principal Engineer (Electrical)', 'level' => 3),
			array('name' => 'Principal Engineer (Civil)', 'level' => 3),
			array('name' => 'Deputy Manager Finance', 'level' => 4),
			array('name' => 'Deputy Manager HR&A', 'level' => 4),
			array('name' => 'Senior Engineer (Electrical)', 'level' => 6),
			array('name' => 'Senior Engineer (Civil)', 'level' => 6),
			array('name' => 'Junior Engineer (Electrical)', 'level' => 9),
			array('name' => 'Junior Engineer (Civil)', 'level' => 9),
			array('name' => 'IT Coordinator', 'level' => 10),
			array('name' => 'Computer Processing Officer', 'level' => 10),
			array('name' => 'Office Supervisor', 'level' => 10),
			array('name' => 'Computer Operator', 'level' => 11),
			array('name' => 'Caretaker', 'level' => 13),
			array('name' => 'Driver', 'level' => 13),
			array('name' => 'Utility Person', 'level' => 14),
		);

       DB::table('positions')->insert($positions);

    }
}
