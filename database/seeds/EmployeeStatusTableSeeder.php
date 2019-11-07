<?php

use Illuminate\Database\Seeder;

class EmployeeStatusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         DB::table('employee_statuses')->insert(['name' => 'On Board']);
         DB::table('employee_statuses')->insert(['name' => 'Resigned']);
         DB::table('employee_statuses')->insert(['name' => 'Terminated']);
         DB::table('employee_statuses')->insert(['name' => 'Long Leave']);
         DB::table('employee_statuses')->insert(['name' => 'Manmonth Ended']);
        }
}
 