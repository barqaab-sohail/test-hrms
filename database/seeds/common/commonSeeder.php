<?php

use Illuminate\Database\Seeder;

class commonSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
    	$this->call([
        CountriesTableSeeder::class,
        StatesTableSeeder::class,
        CitiesTableSeeder::class,
        ]);

    }
}
