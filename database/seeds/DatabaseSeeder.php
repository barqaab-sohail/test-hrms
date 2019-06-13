<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('roles')->insert(['name' => 'admin',]);
        DB::table('roles')->insert(['name' => 'manager',]);
        DB::table('roles')->insert(['name' => 'user',]);

        DB::table('departments')->insert(['name' => 'Power',]);
        DB::table('departments')->insert(['name' => 'Water',]);
        DB::table('departments')->insert(['name' => 'Finance',]);

        DB::table('marital_status')->insert(['name' => 'Single',]);
        DB::table('marital_status')->insert(['name' => 'Married',]);
        DB::table('marital_status')->insert(['name' => 'Divorced',]);
        DB::table('marital_status')->insert(['name' => 'Widowed',]);
        


        DB::table('employees')->insert([
            'first_name' => 'Sohail',
            'last_name' => 'Afzal',
            'father_name' => 'Muhammad Afzal',
            'department_id' => 1,
            'cnic' => '3520246897303',
            'cnic_expiry' => '2020-04-02',
           
        ]);

        DB::table('users')->insert([
            'role_id'=>1,
            'employee_id'=>1,
            'email' => 'sohail.afzal@barqaab.com',
            'password' => bcrypt('Great@786'),
        ]);

        DB::table('educations')->insert([
            'employee_id'=>1,
            'degree_name' => 'BS-IT',
            'institute'=>'Virtual University of Pakistan',
            'level'=>'14',
            'completion'=>'2019',
            'from'=>'2015-01-01',
            'to'=>'2019-01-01',
            'total_marks'=>4.0,
            'marks_obtain'=>3.8,
            'countary'=>'Pakistan',
            'grade'=>'A',
        ]);
      

    }
}
