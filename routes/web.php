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
Route::get('/employeeList', 'EmployeeController@index')->name('employeeList');
Route::post('/storeEmployee', 'EmployeeController@store')->name('storeEmployee');
Route::get('/createEmployee', 'EmployeeController@create')->name('createEmployee');
Route::get('/employee/edit/{id?}', [
            'uses' => 'EmployeeController@edit',
            'as' => 'employee.edit'
        ]);
Route::post('/editEmployee/{id?}', 'EmployeeController@update')->name('editEmployee');



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


