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

Route::get('/test', 'HomeController@index')->name('home');
Route::get('/newUser', 'HomeController@create')->name('newUser');
Route::post('/store', 'HomeController@store')->name('store');
Route::get('/employeeList', 'HomeController@list')->name('employeeList');

Route::get('/', function (){

return view ('auth.login');

});


