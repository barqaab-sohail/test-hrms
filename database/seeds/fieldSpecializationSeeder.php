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
        DB::table('cv_fields')->insert(['field_name' => 'Planning']);
        DB::table('cv_fields')->insert(['field_name' => 'Design']);
        DB::table('cv_fields')->insert(['field_name' => 'Construction Supervision']);
        DB::table('cv_fields')->insert(['field_name' => 'Project Management']);

    }
}
