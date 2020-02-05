<?php

use Illuminate\Database\Seeder;

class specializationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cv_specializations')->insert(['specialization_name' => 'Dams & Hydropower']);
        DB::table('cv_specializations')->insert(['specialization_name' => 'Grid Station']);
        DB::table('cv_specializations')->insert(['specialization_name' => 'Transmission Lines']);
        DB::table('cv_specializations')->insert(['specialization_name' => 'Power Distribution System']);
        DB::table('cv_specializations')->insert(['specialization_name' => 'Irrigation']);
        DB::table('cv_specializations')->insert(['specialization_name' => 'Infrastructure (Roads & Buildings)
']);
    }
}
