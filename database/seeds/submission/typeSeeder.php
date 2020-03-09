<?php

use Illuminate\Database\Seeder;

class sub_type extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('sub_types')->insert(['name' => 'RFP']);
        DB::table('sub_types')->insert(['name' => 'PQD']);
        DB::table('sub_types')->insert(['name' => 'EOI']);
    }
}
