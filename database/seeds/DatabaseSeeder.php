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
        $this->call([
        CountriesTableSeeder::class,
        LanguagesTableSeeder::class,
        document_namesTableSeeder::class,
        ]);


        DB::table('roles')->insert(['name' => 'super admin',]);
        DB::table('roles')->insert(['name' => 'admin',]);
        DB::table('roles')->insert(['name' => 'manager',]);
        DB::table('roles')->insert(['name' => 'user',]);

        DB::table('departments')->insert(['name' => 'Power',]);
        DB::table('departments')->insert(['name' => 'Water',]);
        DB::table('departments')->insert(['name' => 'Finance',]);

        DB::table('marital_status')->insert(['name' => 'Single',]);
        DB::table('marital_status')->insert(['name' => 'Married',]);
        DB::table('marital_status')->insert(['name' => 'Separated',]);
        DB::table('marital_status')->insert(['name' => 'Widowed',]);

        DB::table('blood_group')->insert(['name' => 'A+',]);
        DB::table('blood_group')->insert(['name' => 'O+',]);
        DB::table('blood_group')->insert(['name' => 'B+',]);
        DB::table('blood_group')->insert(['name' => 'AB+',]);
        DB::table('blood_group')->insert(['name' => 'A-',]);
        DB::table('blood_group')->insert(['name' => 'O-',]);
        DB::table('blood_group')->insert(['name' => 'B-',]);
        DB::table('blood_group')->insert(['name' => 'AB-',]);
        
       


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
            'from_month'=>'January',
            'from_year'=>'2017',
            'to_month'=>'December',
            'to_year'=>'2019',
            'total_marks'=>4.0,
            'marks_obtain'=>3.8,
            'country'=>'Pakistan',
            'grade'=>'A',
        ]);

                 
         $projects = array(
           
             array('name' => 'Overhead of the Company',
            'type'=>'Time Based',
            'client'=>'BARQAAB Consulting Services (Pvt.)',
            'commencement'=>'2000-05-09',
            'contractual_completion'=>'2030-01-01',
            'status'=>'In Progres',
            'role'=>'Independent',
            'share'=>'100'),

            array('name' => '500kV Gatti Grid Station Project',
            'type'=>'Time Based',
            'client'=>'NTDC',
            'commencement'=>'2019-01-14',
            'contractual_completion'=>'2015-01-01',
            'status'=>'In Progres',
            'role'=>'Independent',
            'share'=>'100'),

            array('name' => '500kV Neelum-Jhelum Transmission Line Project',
            'type'=>'Time Based',
            'client'=>'NTDC',
            'commencement'=>'2017-01-01',
            'contractual_completion'=>'2019-11-30',
            'status'=>'In Progres',
            'role'=>'JV Partner',
            'share'=>'35'),
           
            
            );
            
        DB::table('projects')->insert($projects);

    }

}
