<?php

use Illuminate\Database\Seeder;

class submissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
        sub_type::class,
        sub_contract_type::class,
        cvFormatSeeder::class,
        ]);
    }
}
