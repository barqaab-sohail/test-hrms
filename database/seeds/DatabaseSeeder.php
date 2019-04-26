<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('roles')->insert([
            'name' => 'admin',
        ]);
         DB::table('roles')->insert([
            'name' => 'manager',
        ]);
          DB::table('roles')->insert([
            'name' => 'user',
        ]);


        DB::table('users')->insert([
            'first_name' => 'Sohail',
            'last_name' => 'Afzal',
            'cnic' => '3520246897303',
            'cnic_expiry' => '2020-04-02',
            'role_id'=>1,
            'email' => 'sohail.afzal@barqaab.com',
            'password' => bcrypt('Great@786'),
        ]);


    }
}
