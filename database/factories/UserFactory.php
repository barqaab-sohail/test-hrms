<?php

use App\User;
use App\Contact;
use App\Education;
use App\Experience;
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
        'first_name' => $faker->name,
        'middle_name' => $faker->name,
        'last_name' => $faker->name,
        'cnic' => $faker->unique()->ean13,
        'cnic_expiry' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'email' => $faker->unique()->safeEmail,
        'email_verified_at' => now(),
        'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
        'remember_token' => Str::random(10),
    ];


});

$factory->define(Contact::class, function (Faker $faker) {
    return [
       'user_id' => App\User::all(['id'])->random(),
        'address' => $faker->address,
        'city' => $faker->city,
        'province' => $faker->state,
        'country' => $faker->country,
    ];
    });


$factory->define(Education::class, function (Faker $faker) {
    $faker = \Faker\Factory::create();
    $faker->addProvider(new \Bezhanov\Faker\Provider\Educator($faker));

    return [
       'user_id' => App\User::all(['id'])->random(),
        'degree_name' => $faker->course,
        'equal_to' => $faker->numberBetween($min = 10, $max = 18),
        'institute' => $faker->university,
        'passing_year' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'total_marks' => $faker->numberBetween($min = 2, $max = 4),
        'marks_obtain' => $faker->numberBetween($min = 2, $max = 4),
                
    ];
    });





    $factory->define(Experience::class, function (Faker $faker) {
    return [
         'user_id' => App\User::all(['id'])->random(),
        'company_name' => $faker->company,
        'position' => $faker->jobTitle,
        'from' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'to' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'activities' => $faker->text($maxNbChars = 190),
                
    ];
 


});
