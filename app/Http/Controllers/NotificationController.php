<?php


namespace App\Http\Controllers;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Collection;
use Illuminate\Http\Request;
use App\Notifications\DatabaseNotification;
use App\user;
use DB;
use App\employee;
use App\posting;
use Notification;
use Illuminate\Support\Facades\Auth;

class NotificationController extends Controller
{
   
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('updation')->only('create');
    }

    public function index(){
        
    	return view ('hr.notification.notificationList');
    }

    public function create(){
        $employees = employee::all();
    	return view ('hr.notification.createNotification',compact('employees'));
    }

     public function createUser(){
        
        return view ('hr.notification.createUserNotification');
    }

    public function store(request $request){

    $senderUser = User::where('id', $request->user_id)->first();
    $senderName = $senderUser->employee->first_name." ".$senderUser->employee->middle_name." ".$senderUser->employee->last_name;
    
    $letter = collect(['from'=>$senderName,'subject'=>$request->subject, 'message'=>$request->message]);
    
    if ($request->to=='all'){

        $users = user::all();

    }elseif($request->to=='HR'){
         $users = User::role('HR Manager')->get();
    }
    elseif($request->to=='allManagers'){
        $managerIds = posting::all()->pluck('manager_id')->toArray();
        $users = user::all()->whereIn('employee_id',$managerIds);
    }else{
        $users = user::all()->where('employee_id',$request->to);
    }
    
   	Notification::send($users, new DatabaseNotification($letter));
     
    return Redirect::back()->with('success', 'You messages has been send to HR sucessfuly ');
        
    }

    public function show($id){

    	$notification = auth()->user()
                            ->Notifications
                            ->where('id', $id)
                            ->first();
         $notification->markAsRead();
         
        //auth()->user()->notifications()->delete()->where('type', 'App\Notifications\LikedComment')->where('data->model', $comment->id)->delete();
    	return view ('hr.notification.showNotification',compact('notification'));

    }

     public function deleteNotification($id){
    	
        $notification=auth()->user()->Notifications->where('id', $id)->first();
        $notification->delete();
    	return redirect()->route('notificationList')->with('success', 'Notification Delete succesfully');
    }



}
