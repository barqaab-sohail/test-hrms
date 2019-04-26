<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});
*/

Auth::routes();

Route::get('/dashboard', 'HomeController@index')->name('home');
Route::get('/newUser', 'HomeController@create')->name('newUser');
Route::post('/store', 'HomeController@store')->name('store');
Route::get('/listOfEmployees', 'HomeController@list')->name('list');

Route::get('/test', function (){

return view ('test');

});


