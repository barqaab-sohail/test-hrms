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
        DB::table('cv_specializations')->insert(['name' => 'Dams & Hydropower']);
        DB::table('cv_specializations')->insert(['name' => 'Grid Station']);
        DB::table('cv_specializations')->insert(['name' => 'Transmission Lines']);
        DB::table('cv_specializations')->insert(['name' => 'Power Distribution System']);
        DB::table('cv_specializations')->insert(['name' => 'Irrigation']);
        DB::table('cv_specializations')->insert(['name' => 'Infrastructure (Roads & Buildings)
']);
    }
}
