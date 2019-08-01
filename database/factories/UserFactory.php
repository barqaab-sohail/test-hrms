<?php

use App\User;
use App\employee;
use App\posting;
use App\appointment;
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
        'password' => bcrypt('great786'), // password
        'user_status'=>1,
        'employee_id' => App\Employee::all(['id'])->unique()->random(),
        'remember_token' => Str::random(10),
    ];
    
});

$factory->define(employee::class, function (Faker $faker) {
    return [
        'first_name' => $faker->name,
        'middle_name' => $faker->name,
        'last_name' => $faker->name,
        'father_name' => $faker->name,
        'gender' => $faker->randomElement(['Male', 'Female']),
        'division_id' => App\division::all(['id'])->random(),
        'marital_status' => App\marital_status::all(['id'])->random(),
        'date_of_birth' => $faker->date($format = 'Y-m-d'),
        'cnic' => $faker->unique()->ean13,
        'cnic_expiry' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'religon' => 'Islam',

     
    ];
});

$factory->define(appointment::class, function (Faker $faker) {
    return [
        'designation' => App\designation::orderByRaw("RAND()")->first()->name,
        'reference_no' => $faker->name,
        'category' => $faker->randomElement(['A', 'B','C']),
        'appointment_letter_type'=> $faker->randomElement(['1 Page', '2 Pages']),
        'employee_id' => App\Employee::all(['id'])->unique()->random(),
    ];
});

$factory->define(posting::class, function (Faker $faker) {
    return [
        'employee_id' => App\Employee::all(['id'])->random(),
        'joining_date' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'position' => App\designation::orderByRaw("RAND()")->first()->name,
        'posting_date' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'project' => App\project::orderByRaw("RAND()")->first()->name,
        'location' => $faker->city,
        'manager_id'=> App\employee::all(['id'])->random(),
    ];
});


