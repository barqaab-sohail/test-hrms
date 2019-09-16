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
|*/

/*Route::get('/', function () {
    return view('welcome');
});

Route::get('/HRMS_Maintenance', function () {
Artisan::call('down --message="Upgrading Database" --retry=60');
    dd('OK Down');
});
Route::get('/HRMS_Up', function () {
Artisan::call('up');
    dd('OK Up');
});
*/

Route::get('/CnicExpiry', function () {
Artisan::call('CnicExpirySchedule:check');
    dd('OK');
});

Auth::routes();

//Route::get('/testing', 'PostingController@index');
Route::post('/login', [
    'uses'          => 'Auth\LoginController@login',
    'middleware'    => 'UserStatus',
]);

//notification
Route::get('/notificationList', 'NotificationController@index')->name('notificationList');
Route::get('/createNotification','NotificationController@create')->name('createNotification');
Route::get('/createUserNotification','NotificationController@createUser')->name('createUserNotification');
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
Route::get('reports/chart', 'ChartController@index')->name('chart');
Route::get('/genderChart', 'ChartController@gender')->name('genderChart');
Route::get('/dashboard', 'HomeController@index')->name('dashboard')->middleware('verified');
Route::post('/dashboard', 'HomeController@addEvent')->name('dashboard.add');

//Route::get('events', 'EventController@index')->name('events.index');
//Route::post('events', 'EventController@addEvent')->name('events.add');

//Reports
Route::get('/reports', 'ReportsController@index')->name('employeeReports');
Route::get('/reports/acitveEmployee', 'ReportsController@activeEmployee')->name('activeEmployee');
Route::get('/reports/allManagers', 'ReportsController@allManagers')->name('allManagers');



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
Route::get('/hrms/userDetail/{id?}', 'EmployeeController@show')->name('userDetail');
Route::post('/employeeStatus', 'EmployeeController@employeeStatus')->name('testingroute');

//Add Position
Route::get('/hrms/addDesignation', 'DesignationController@index')->name('addDesignation');
Route::post('/storeDesignation', 'DesignationController@store')->name('storeDesignation');
Route::get('/hrms/designation/edit/{id?}', [
            'uses' => 'DesignationController@edit',
            'as' => 'designation.edit'
        ]);
Route::post('/editDesignation/{id?}', 'DesignationController@update')->name('editDesignation');
Route::get('/deleteDesignation/{id?}', 'DesignationController@delete')->name('deleteDesignation');



//Picture Routes
Route::get('/hrms/picture/edit/{id?}',[
    'uses'=>'PictureController@showJqueryImageUpload',
    'as'=>'picture.edit']);
Route::post('/editPicture/{id?}','PictureController@saveJqueryImageUpload')->name('editPicture');



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
            'uses' => 'ContactController@editAddress',
            'as' => 'contact.edit'
        ]);
Route::post('/editPermanentAddress/{id?}', 'ContactController@updatePermanent')->name('editPermanentAddress');
Route::post('/editCurrentAddress/{id?}', 'ContactController@updateCurrent')->name('editCurrentAddress');

//Other Information
Route::get('/hrms/other/edit/{id?}', [
            'uses' => 'OtherController@edit',
            'as' => 'other.edit'
        ]);
Route::post('/editOther/{id?}', 'OtherController@update')->name('editOther');


//Education Routes
Route::resource('hrms/education', 'EducationController');

//Experience Routes
Route::resource('hrms/experience', 'ExperienceController');

//Training Routes
Route::resource('hrms/training', 'TrainingController');


//Publication Routes
/*Route::get('/hrms/publication/create', 'PublicationController@create')->name('publication.create');
Route::post('/hrms/publication', 'PublicationController@store')->name('publication.store');
Route::get('/hrms/publication/{id}/edit', 'PublicationController@edit')->name('publication.edit');
Route::patch('/hrms/publication/{id}', 'PublicationController@update')->name('publication.update');
Route::delete('/hrms/publication/{id}', 'PublicationController@destroy')->name('publication.destroy');*/
Route::resource('hrms/publication', 'PublicationController');


//Memebership Routes
Route::resource('hrms/membership', 'MembershipController');


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
Route::post('/storePromotion', 'PromotionController@store')->name('storePromotion');
Route::get('/hrms/promotion/edit/{id?}', [
            'uses' => 'PromotionController@edit',
            'as' => 'promotion.edit'
        ]);
Route::post('/editPromotion/{id?}', 'PromotionController@update')->name('editPromotion');
Route::get('/deletePromotion/{id?}', 'PromotionController@delete')->name('deletePromotion');


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
// Route::get('/hrms/bank/{id?}', 'BankController@create')->name('bank');
// Route::post('/storeBank', 'BankController@store')->name('storeBank');
// Route::get('/hrms/bank/edit/{id?}', [
//             'uses' => 'BankController@edit',
//             'as' => 'bank.edit'
//         ]);
// Route::post('/editBank/{id?}', 'BankController@update')->name('editBank');
// Route::get('/deleteBank/{id?}', 'BankController@delete')->name('deleteBank');

//bank
Route::resource('hrms/bank', 'BankController');

//dependent
Route::resource('hrms/dependent','DependentController');


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
Route::get('/deleteEmergency/{id?}', 'EmergencyController@delete')->name('deleteEmergency');


//Other Information
Route::get('/hrms/other/edit/{id?}', [
            'uses' => 'OtherController@edit',
            'as' => 'other.edit'
        ]);
Route::post('/hrms/editOther/{id?}', 'OtherController@update')->name('editOther');

//Agreement Detail
Route::get('/hrms/appointment/edit/{id?}', [
            'uses' => 'AppointmentController@edit',
            'as' => 'appointment.edit'
        ]);
Route::post('/hrms/editAppointment/{id?}', 'AppointmentController@update')->name('editAppointment');

//Project
Route::get('/project/projectList', 'ProjectController@index')->name('projectList');
Route::get('/project/createProject', 'ProjectController@create')->name('createProject');
Route::post('/storeProject', 'ProjectController@store')->name('storeProject');
Route::get('/project/edit/{id?}', [
            'uses' => 'ProjectController@edit',
            'as' => 'project.edit'
        ]);
Route::get('/deleteProject/{id?}', 'ProjectController@delete')->name('deleteProject');
Route::post('/editProject/{id?}', 'ProjectController@update')->name('editProject');


//Admin Routes
Route::get('/adminInfo/activeUsers', 'Admin\AdminController@activeUsers')->name('activeUsers');
Route::post('/adminInfo/updateUserRights/{id?}', 'Admin\AdminController@updateActiveUsers')->name('updateActiveUsers');
Route::get('/adminInfo/setUserRights', 'Admin\AdminController@setUserRights')->name('setUserRights');
Route::post('/deleteUser/{id?}', 'Admin\AdminController@deleteUser')->name('deleteUser');

//Personal Files
Route::get('personalFiles/list','PersonalFileController@index')->name('personalFileList');


//Leave Management
Route::get('leave/applyLeave','Leave\LeaveController@applyLeave')->name('applyLeave');
Route::get('leave/showInitialBalance','Leave\LeaveController@showInitialBalance')->name('showInitialBalance');
Route::post('leave/storeInitialBalance','Leave\LeaveController@storeInitialBalance')->name('storeInitialBalance');
Route::post('leave/deleteInitialBalance/{id?}','Leave\LeaveController@deleteInitialBalance')->name('deleteInitialBalance');
Route::get('leave/appendLeave','Leave\LeaveController@load_data')->name('load_data');



Route::get('/', function (){
return  redirect()->route('login');
//view ('auth.login');
});

