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
        DB::table('sub_types')->insert(['type_name' => 'Request for Proposal (RFP)']);
        DB::table('sub_types')->insert(['type_name' => 'Prequalification Documents (PQD)']);
        DB::table('sub_types')->insert(['type_name' => 'Expression of Interest (EOI)']);
    }
}
