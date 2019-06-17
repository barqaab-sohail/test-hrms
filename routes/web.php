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

//Contact Detail
Route::get('/contact/edit/{id?}', [
            'uses' => 'AddressController@editAddress',
            'as' => 'contact.edit'
        ]);
Route::post('/editPermanentAddress/{id?}', 'AddressController@updatePermanent')->name('editPermanentAddress');
Route::post('/editCurrentAddress/{id?}', 'AddressController@updateCurrent')->name('editCurrentAddress');




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

//Publication Routes
Route::get('/publication/{id?}', 'PublicationController@create')->name('publication');
Route::post('/storePublication', 'PublicationController@store')->name('storePublication');
Route::get('/publication/edit/{id?}', [
            'uses' => 'PublicationController@edit',
            'as' => 'publication.edit'
        ]);
Route::post('/editPublication/{id?}', 'PublicationController@update')->name('editPublication');
//Publication Routes
Route::get('/membership/{id?}', 'MembershipController@create')->name('membership');
Route::post('/storeMembership', 'MembershipController@store')->name('storeMembership');
Route::get('/membership/edit/{id?}', [
            'uses' => 'MembershipController@edit',
            'as' => 'membership.edit'
        ]);
Route::post('/editMembership/{id?}', 'MembershipController@update')->name('editMembership');


//Document Routes
Route::get('/document/{id?}', 'DocumentController@create')->name('document');
Route::post('/storeDocument', 'DocumentController@store')->name('storeDocument');
Route::get('/document/edit/{id?}', [
            'uses' => 'DocumentController@edit',
            'as' => 'document.edit'
        ]);
Route::post('/editDocument/{id?}', 'DocumentController@update')->name('editDocument');

//Bank
Route::get('/bank/{id?}', 'BankController@create')->name('bank');
Route::post('/storeBank', 'BankController@store')->name('storeBank');
Route::get('/bank/edit/{id?}', [
            'uses' => 'BankController@edit',
            'as' => 'bank.edit'
        ]);
Route::post('/editBank/{id?}', 'BankController@update')->name('editBank');

//Language
Route::get('/language/{id?}', 'LanguageController@create')->name('language');
Route::post('/storeLanguage', 'LanguageController@store')->name('storeLanguage');
Route::get('/language/edit/{id?}', [
            'uses' => 'LanguageController@edit',
            'as' => 'language.edit'
        ]);
Route::post('/editLanguage/{id?}', 'LanguageController@update')->name('editLanguage');

//Emergency Contact
Route::get('/emergency/{id?}', 'EmergencyController@create')->name('emergency');
Route::post('/storeEmergency', 'EmergencyController@store')->name('storeEmergency');
Route::get('/emergency/edit/{id?}', [
            'uses' => 'EmergencyController@edit',
            'as' => 'emergency.edit'
        ]);
Route::post('/editEmergency/{id?}', 'EmergencyController@update')->name('editEmergency');







//Other Information
Route::get('/other/edit/{id?}', [
            'uses' => 'OtherController@edit',
            'as' => 'other.edit'
        ]);
Route::post('/editOther/{id?}', 'OtherController@update')->name('editOther');










Route::get('/', function (){

return view ('auth.login');

});


