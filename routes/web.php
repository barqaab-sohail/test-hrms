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

Route::post('/storeEmployeeInformation', 'HrController@storeEmployeeInformation')->name('storeEmployeeInformation');
Route::get('/createEmployeeInformation', 'HrController@createEmployeeInformation')->name('createEmployeeInformation');
Route::get('/education', 'HrController@education')->name('education');
Route::get('/employeeList', 'HrController@employeeList')->name('employeeList');

Route::get('/', function (){

return view ('auth.login');

});


