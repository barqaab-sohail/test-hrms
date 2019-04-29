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

Route::get('/dashboard', 'HomeController@index')->name('dashboard');
Route::get('/createEmployee', 'HomeController@create')->name('createEmployee');
Route::post('/storeEmployee', 'HomeController@store')->name('storeEmployee');
Route::get('/employeeList', 'HomeController@employeeList')->name('employeeList');

Route::get('/', function (){

return view ('auth.login');

});


