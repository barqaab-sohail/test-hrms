<?php

use Illuminate\Database\Seeder;

class cv_stage extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cv_stages')->delete();
        DB::table('cv_stages')->insert(['stage_name' => 'Planning']);
        DB::table('cv_stages')->insert(['stage_name' => 'Design']);
        DB::table('cv_stages')->insert(['stage_name' => 'Construction']);
        DB::table('cv_stages')->insert(['stage_name' => 'O & M']);
    }
}
