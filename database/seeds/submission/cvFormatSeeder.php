<?php

use Illuminate\Database\Seeder;

class cvFormatSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('sub_cv_formats')->insert(['format_name' => 'PEC Format']);
        DB::table('sub_cv_formats')->insert(['format_name' => 'ADB Tech-6']);
    }
}
