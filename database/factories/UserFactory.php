<?php

use App\User;
use App\employee;
use App\notification;
use Illuminate\Support\Str;

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/


$factory->define(User::class, function (Faker $faker) {
    return [
        
        'email' => $faker->unique()->safeEmail,
        'email_verified_at' => now(),
        'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
        'employee_id' => App\Employee::all(['id'])->random(),
        'remember_token' => Str::random(10),
    ];
    
});

$factory->define(Employee::class, function (Faker $faker) {
    return [
        'first_name' => $faker->name,
        'middle_name' => $faker->name,
        'last_name' => $faker->name,
        'father_name' => $faker->name,
        'department_id' => App\department::all(['id'])->random(),
        'marital_status' => App\marital_status::all(['name'])->random(),
        'date_of_birth' => $faker->date($format = 'Y-m-d'),
        'cnic' => $faker->unique()->ean13,
        'cnic_expiry' => $faker->date($format = 'Y-m-d', $max = 'now'),
        
    ];
});



