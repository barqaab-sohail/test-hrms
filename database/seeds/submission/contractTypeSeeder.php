<?php

use Illuminate\Database\Seeder;

class sub_contract_type extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('sub_contract_types')->insert(['contract_type_name' => 'Man Months']);
        DB::table('sub_contract_types')->insert(['contract_type_name' => 'Lumpsum']);

    }
}
