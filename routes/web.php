<?php

use App\user;


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

//notification
Route::get('/notificationList', 'NotificationController@index')->name('notificationList');
Route::get('/createNotification','NotificationController@create')->name('createNotification');
Route::post('/storeNotification','NotificationController@store')->name('storeNotification');
Route::get ('/showNotification/{id?}','NotificationController@show')->name('showNotification');
Route::get('/deleteAllNotification/{id?}', 'NotificationController@deleteNotification')->name('deleteNotification');


//import data from excel
Route::post('/import_excel/import', 'ImportExcelController@import')->name('importExcel');

//Phone Contact Number
Route::post('/import_excel/phone', 'ContactNumberController@import')->name('importPhone');
Route::get('/phone/phoneList', 'ContactNumberController@index')->name('phoneList');
Route::get('/phone/edit/{id?}', [
            'uses' => 'ContactNumberController@edit',
            'as' => 'phone.edit'
        ]);


//Dashboard
Route::get('/chart', 'ChartController@index')->name('chart');
Route::get('/dashboard', 'HomeController@index')->name('dashboard');


//Employee & User Routes
Route::get('/hrms/employeeList', 'EmployeeController@index')->name('employeeList');
Route::post('/storeEmployee', 'EmployeeController@store')->name('storeEmployee');
Route::get('/hrms/createEmployee', 'EmployeeController@create')->name('createEmployee');
Route::get('/hrms/employee/edit/{id?}', [
            'uses' => 'EmployeeController@edit',
            'as' => 'employee.edit'
        ]);
Route::post('/editEmployee/{id?}', 'EmployeeController@update')->name('editEmployee');
Route::get('/inactiveEmployee/{id?}', 'EmployeeController@inactive')->name('inactiveEmployee');


//Picture Routes

Route::get('/hrms/picture/edit/{id?}', [
            'uses' => 'PictureController@edit',
            'as' => 'picture.edit'
        ]);
Route::post('/editPicture/{id?}', 'PictureController@update')->name('editPicture');


//User
Route::get('/hrms/user/edit/{id?}', [
            'uses' => 'UserController@edit',
            'as' => 'user.edit'
        ]);
Route::post('/editUser/{id?}', 'UserController@update')->name('editUser');

//Salary
Route::get('/hrms/salary/edit/{id?}', [
            'uses' => 'SalaryController@edit',
            'as' => 'salary.edit'
        ]);
Route::post('/editSalary/{id?}', 'SalaryController@update')->name('editSalary');

//Contact Detail
Route::get('/hrms/contact/edit/{id?}', [
            'uses' => 'AddressController@editAddress',
            'as' => 'contact.edit'
        ]);
Route::post('/editPermanentAddress/{id?}', 'AddressController@updatePermanent')->name('editPermanentAddress');
Route::post('/editCurrentAddress/{id?}', 'AddressController@updateCurrent')->name('editCurrentAddress');

//Other Information
Route::get('/hrms/other/edit/{id?}', [
            'uses' => 'OtherController@edit',
            'as' => 'other.edit'
        ]);
Route::post('/editOther/{id?}', 'OtherController@update')->name('editOther');


//Education Routes
Route::get('/hrms/education/{id?}', 'EducationController@create')->name('education');
Route::post('/storeEducation', 'EducationController@store')->name('storeEducation');
Route::get('/hrms/education/edit/{id?}', [
            'uses' => 'EducationController@edit',
            'as' => 'education.edit'
        ]);
Route::post('/editEducation/{id?}', 'EducationController@update')->name('editEducation');
Route::get('/deleteEducation/{id?}', 'EducationController@delete')->name('deleteEducation');


//Experience Routes
Route::get('/hrms/experience/{id?}', 'ExperienceController@create')->name('experience');
Route::post('/storeExperience', 'ExperienceController@store')->name('storeExperience');
Route::get('/hrms/experience/edit/{id?}', [
            'uses' => 'ExperienceController@edit',
            'as' => 'experience.edit'
        ]);
Route::post('/editExperience/{id?}', 'ExperienceController@update')->name('editExperience');
Route::get('/deleteExperience/{id?}', 'ExperienceController@delete')->name('deleteExperience');

//Training Routes
Route::get('/hrms/training/{id?}', 'TrainingController@create')->name('training');
Route::post('/storeTraining', 'TrainingController@store')->name('storeTraining');
Route::get('/hrms/training/edit/{id?}', [
            'uses' => 'TrainingController@edit',
            'as' => 'training.edit'
        ]);
Route::post('/editTraining/{id?}', 'TrainingController@update')->name('editTraining');

//Publication Routes
Route::get('/hrms/publication/{id?}', 'PublicationController@create')->name('publication');
Route::post('/storePublication', 'PublicationController@store')->name('storePublication');
Route::get('/hrms/publication/edit/{id?}', [
            'uses' => 'PublicationController@edit',
            'as' => 'publication.edit'
        ]);
Route::post('/editPublication/{id?}', 'PublicationController@update')->name('editPublication');
//Memebership Routes
Route::get('/hrms/membership/{id?}', 'MembershipController@create')->name('membership');
Route::post('/storeMembership', 'MembershipController@store')->name('storeMembership');
Route::get('/hrms/membership/edit/{id?}', [
            'uses' => 'MembershipController@edit',
            'as' => 'membership.edit'
        ]);
Route::post('/editMembership/{id?}', 'MembershipController@update')->name('editMembership');


//Posting Routes
Route::get('/hrms/posting/{id?}', 'PostingController@create')->name('posting');
Route::post('/storePosting', 'PostingController@store')->name('storePosting');
Route::get('/hrms/posting/edit/{id?}', [
            'uses' => 'PostingController@edit',
            'as' => 'posting.edit'
        ]);
Route::post('/editPosting/{id?}', 'PostingController@update')->name('editPosting');
Route::get('/deletePosting/{id?}', 'PostingController@delete')->name('deletePosting');


//Promotion Routes
Route::get('/hrms/promotion/{id?}', 'PromotionController@create')->name('promotion');




//Document Routes
Route::get('/hrms/document/{id?}', 'DocumentController@create')->name('document');
Route::post('/storeDocument', 'DocumentController@store')->name('storeDocument');
Route::get('/hrms/document/edit/{id?}', [
            'uses' => 'DocumentController@edit',
            'as' => 'document.edit'
        ]);
Route::post('/editDocument/{id?}', 'DocumentController@update')->name('editDocument');
Route::get('/deleteDocument/{id?}', 'DocumentController@delete')->name('deleteDocument');



//Bank
Route::get('/hrms/bank/{id?}', 'BankController@create')->name('bank');
Route::post('/storeBank', 'BankController@store')->name('storeBank');
Route::get('/hrms/bank/edit/{id?}', [
            'uses' => 'BankController@edit',
            'as' => 'bank.edit'
        ]);
Route::post('/editBank/{id?}', 'BankController@update')->name('editBank');

//Dependent
Route::get('/hrms/dependent/{id?}', 'DependentController@create')->name('dependent');
Route::post('/storeDependent', 'DependentController@store')->name('storeDependent');
Route::get('/hrms/dependent/edit/{id?}', [
            'uses' => 'DependentController@edit',
            'as' => 'dependent.edit'
        ]);
Route::post('/editDependent/{id?}', 'DependentController@update')->name('editDependent');

//Language
Route::get('/hrms/language/{id?}', 'LanguageController@create')->name('language');
Route::post('/storeLanguage', 'LanguageController@store')->name('storeLanguage');
Route::get('/hrms/language/edit/{id?}', [
            'uses' => 'LanguageController@edit',
            'as' => 'language.edit'
        ]);
Route::post('/editLanguage/{id?}', 'LanguageController@update')->name('editLanguage');
Route::get('/deleteLanguage/{id?}', 'LanguageController@delete')->name('deleteLanguage');

//Emergency Contact
Route::get('/hrms/emergency/{id?}', 'EmergencyController@create')->name('emergency');
Route::post('/storeEmergency', 'EmergencyController@store')->name('storeEmergency');
Route::get('/hrms/emergency/edit/{id?}', [
            'uses' => 'EmergencyController@edit',
            'as' => 'emergency.edit'
        ]);
Route::post('/editEmergency/{id?}', 'EmergencyController@update')->name('editEmergency');

//Other Information
Route::get('/hrms/other/edit/{id?}', [
            'uses' => 'OtherController@edit',
            'as' => 'other.edit'
        ]);
Route::post('/hrms/editOther/{id?}', 'OtherController@update')->name('editOther');

//Agreement Detail
Route::get('/hrms/agreement/edit/{id?}', [
            'uses' => 'AgreementController@edit',
            'as' => 'agreement.edit'
        ]);
Route::post('/hrms/editAgreement/{id?}', 'AgreementController@update')->name('editAgreement');

//Project
Route::get('/project/projectList', 'ProjectController@index')->name('projectList');
Route::get('/project/createProject', 'ProjectController@create')->name('createProject');
Route::post('/storeProject', 'ProjectController@store')->name('storeProject');
Route::get('/project/edit/{id?}', [
            'uses' => 'ProjectController@edit',
            'as' => 'project.edit'
        ]);
Route::post('/editProject/{id?}', 'ProjectController@update')->name('editProject');










Route::get('/', function (){

return  redirect()->route('login');

//view ('auth.login');

});


