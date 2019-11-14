<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Permission::create(['name' => 'view personal record']);
        Permission::create(['name' => 'edit record']);
        Permission::create(['name' => 'save record']);

    }
}
