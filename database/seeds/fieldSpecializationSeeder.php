<?php

use Illuminate\Database\Seeder;

class fieldSpecializationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cv_fields')->insert(['name' => 'Planning']);
        DB::table('cv_fields')->insert(['name' => 'Design']);
        DB::table('cv_fields')->insert(['name' => 'Construction Supervision']);
        DB::table('cv_fields')->insert(['name' => 'Project Management']);

    }
}
