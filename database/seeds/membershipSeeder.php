<?php

use Illuminate\Database\Seeder;

class membershipSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cv_memberships')->insert(['name' => 'Pakistan Engineering Council']);
    }
}
