<?php

use Illuminate\Database\Seeder;

class cv_specialization extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cv_specializations')->insert(['specialization_name' => 'RE']);
        DB::table('cv_specializations')->insert(['specialization_name' => 'CRE']);
        
    }
}
