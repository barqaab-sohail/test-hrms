<?php

use Illuminate\Database\Seeder;

class document_namesTableSeeder extends Seeder
{
    /**
    * Run the database seeds.
    *
    * @return void
    */
    public function run()
    {
    	DB::table('document_names')->insert(['name' => 'CNIC Front']);
    	DB::table('document_names')->insert(['name' => 'CNIC Back']);
    	DB::table('document_names')->insert(['name' => 'Appointment Letter']);
        DB::table('document_names')->insert(['name' => 'HR Form']);
        DB::table('document_names')->insert(['name' => 'Joining Report']);
        
    }
}
