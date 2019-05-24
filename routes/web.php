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

//User Routes
Route::get('/userList', 'UserController@index')->name('userList');
Route::post('/storeUser', 'UserController@store')->name('storeUser');
Route::get('/createUser', 'UserController@create')->name('createUser');
Route::get('/user/edit/{id?}', [
            'uses' => 'UserController@edit',
            'as' => 'user.edit'
        ]);
Route::post('/editUser/{id?}', 'UserController@update')->name('editUser');



//Education Routes
Route::get('/education', 'EducationController@create')->name('education');
Route::post('/storeEducation', 'EducationController@store')->name('storeEducation');
Route::get('/education/edit/{id?}', [
            'uses' => 'EducationController@edit',
            'as' => 'education.edit'
        ]);
Route::post('/editEducation/{id?}', 'EducationController@update')->name('editEducation');




//Salary
Route::get('/salary', 'SalaryController@create')->name('salary');
Route::post('/storeSalary', 'SalaryController@store')->name('storeSalary');
Route::get('/salary/edit/{id?}', [
            'uses' => 'SalaryController@edit',
            'as' => 'salary.edit'
        ]);
Route::post('/editSalary/{id?}', 'SalaryController@update')->name('editSalary');




Route::get('/', function (){

return view ('auth.login');

});


