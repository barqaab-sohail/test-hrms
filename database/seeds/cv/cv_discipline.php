<?php

use Illuminate\Database\Seeder;

class cv_discipline extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cv_disciplines')->insert(['discipline_name' => 'Dam']);
        
        DB::table('cv_disciplines')->insert(['discipline_name' => 'Hydropower & Dam']);
         DB::table('cv_disciplines')->insert(['discipline_name' => 'Irrigation & Drainage']);
          DB::table('cv_disciplines')->insert(['discipline_name' => 'Canal']);
        DB::table('cv_disciplines')->insert(['discipline_name' => 'Infrastructure (Roads & Buildings)']);

        DB::table('cv_disciplines')->insert(['discipline_name' => 'Grid Station']);
        DB::table('cv_disciplines')->insert(['discipline_name' => 'Transmission Lines']);
        DB::table('cv_disciplines')->insert(['discipline_name' => 'Power Distribution System']);
    }
}
