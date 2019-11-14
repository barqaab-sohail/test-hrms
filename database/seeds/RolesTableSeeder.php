<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class RolesTableSeeder extends Seeder

{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        Role::create(['name' => 'User']);
        Role::create(['name' => 'Manager']);
        Role::create(['name' => 'HR Assistant']);
        Role::create(['name' => 'HR Manager']);
        Role::create(['name' => 'Super Admin']);
    }
}
