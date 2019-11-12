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

Route::get('/HRMS_LINK', function(){
Artisan::call('storage:link');
echo "Sucessfully Link Create";
});

Route::get ('/testing', 'HrController@testing');
Route::get ('/prime','HrController@prime');
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
Route::post('/phone/contactNumber', 'ContactNumberController@store')->name('contactNumber.store');
Route::patch('/phone/contactNumber/{id}', 'ContactNumberController@update')->name('contactNumber.update');
Route::get('/phone/contactNumber/{id}/edit', 'ContactNumberController@edit')->name('contactNumber.edit');
Route::get('/phone/contactNumber', 'ContactNumberController@index')->name('contactNumber.index');
Route::delete('/hrms/contactNumber/{id}', 'ContactNumberController@destroy')->name('contactNumber.destroy');


//Dashboard
Route::get('reports/chart/age','ChartController@age')->name('chart.age');
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
Route::resource('hrms/employee', 'EmployeeController');


Route::get('/inactiveEmployee/{id?}', 'EmployeeController@inactive')->name('inactiveEmployee');
Route::post('/employeeStatus', 'EmployeeController@employeeStatus')->name('testingroute');

//Add Position
Route::resource('hrms/designation', 'DesignationController');


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
Route::resource('hrms/salary', 'SalaryController');


//Contact Detail
Route::get('/hrms/contact/edit/{id?}', [
            'uses' => 'ContactController@editAddress',
            'as' => 'contact.edit'
        ]);
Route::post('/editPermanentAddress/{id?}', 'ContactController@updatePermanent')->name('editPermanentAddress');
Route::post('/editCurrentAddress/{id?}', 'ContactController@updateCurrent')->name('editCurrentAddress');


//Education Routes
Route::resource('hrms/education', 'EducationController');

//Experience Routes
Route::resource('hrms/experience', 'ExperienceController');

//Training Routes
Route::resource('hrms/training', 'TrainingController');


//Publication Routes
Route::resource('hrms/publication', 'PublicationController');


//Memebership Routes
Route::resource('hrms/membership', 'MembershipController');


//Posting Routes
Route::resource('hrms/posting', 'PostingController');

//Promotion Routes
Route::resource('hrms/promotion', 'PromotionController');


//Document Routes
Route::resource('hrms/document', 'DocumentController');
Route::resource('hrms/exit', 'ExitController');


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
Route::resource('hrms/language','LanguageController');


//Emergency Contact
Route::resource('hrms/emergency','EmergencyController');

/*Route::get('/hrms/emergency/create', 'EmergencyController@create')->name('emergency.create');
Route::post('/hrms/emergency', 'EmergencyController@store')->name('emergency.store');
Route::get('/hrms/emergency/{id}/edit', 'EmergencyController@edit')->name('emergency.edit');
Route::patch('/hrms/emergency/{id}', 'EmergencyController@update')->name('emergency.update');
Route::delete('/hrms/emergency/{id}', 'EmergencyController@destroy')->name('emergency.destroy');*/


//Other Information
Route::resource('hrms/otherInformation','OtherController');

//Agreement Detail
Route::resource('hrms/appointment','AppointmentController');


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


//Initial Balance
//Route::resource('leave/initialBalance','Leave\InitialBalanceController');


Route::resource('leave/leaveQuota','Leave\LeaveQuotaController');

Route::get('/', function (){
return  redirect()->route('login');
//view ('auth.login');
});

Route::resource('hrms/task','TaskController');
Route::resource('admin/role','Admin\RoleController');
Route::resource('admin/permission','Admin\PermissionController');