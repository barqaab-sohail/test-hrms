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
        fieldSpecializationSeeder::class,
        specializationSeeder::class,
        membershipSeeder::class,
        ]);
    }
}
