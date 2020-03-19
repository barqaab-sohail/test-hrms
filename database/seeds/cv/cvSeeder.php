<?php

use Illuminate\Database\Seeder;

class cvSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
        educationSeeder::class,
        cv_discipline::class,
        cv_stage::class,
        cv_specialization::class,
        membershipSeeder::class,
        ]);
    }
}
