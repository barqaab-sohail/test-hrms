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

//Picture Routes
Route::get('/createPicture', 'PictureController@create')->name('createPicture');
Route::post('/storePicture', 'PictureController@store')->name('storePicture');

Route::get('/picture/edit/{id?}', [
            'uses' => 'PictureController@edit',
            'as' => 'picture.edit'
        ]);
Route::post('/editPicture/{id?}', 'PictureController@update')->name('editPicture');


//User
Route::get('/user/edit/{id?}', [
            'uses' => 'UserController@edit',
            'as' => 'user.edit'
        ]);
Route::post('/editUser/{id?}', 'UserController@update')->name('editUser');

//Salary
Route::get('/salary/edit/{id?}', [
            'uses' => 'SalaryController@edit',
            'as' => 'salary.edit'
        ]);
Route::post('/editSalary/{id?}', 'SalaryController@update')->name('editSalary');

//Education Routes
Route::get('/education/{id?}', 'EducationController@create')->name('education');
Route::post('/storeEducation', 'EducationController@store')->name('storeEducation');
Route::get('/education/edit/{id?}', [
            'uses' => 'EducationController@edit',
            'as' => 'education.edit'
        ]);
Route::post('/editEducation/{id?}', 'EducationController@update')->name('editEducation');


//Experience Routes
Route::get('/experience/{id?}', 'ExperienceController@create')->name('experience');
Route::post('/storeExperience', 'ExperienceController@store')->name('storeExperience');
Route::get('/experience/edit/{id?}', [
            'uses' => 'ExperienceController@edit',
            'as' => 'experience.edit'
        ]);
Route::post('/editExperience/{id?}', 'ExperienceController@update')->name('editExperience');

//Training Routes
Route::get('/training/{id?}', 'TrainingController@create')->name('training');
Route::post('/storeTraining', 'TrainingController@store')->name('storeTraining');
Route::get('/training/edit/{id?}', [
            'uses' => 'TrainingController@edit',
            'as' => 'training.edit'
        ]);
Route::post('/editTraining/{id?}', 'TrainingController@update')->name('editTraining');










//Other Information
Route::get('/other/edit/{id?}', [
            'uses' => 'OtherController@edit',
            'as' => 'other.edit'
        ]);
Route::post('/editOther/{id?}', 'OtherController@update')->name('editOther');










Route::get('/', function (){

return view ('auth.login');

});


