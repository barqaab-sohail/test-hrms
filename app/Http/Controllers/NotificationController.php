<?php


namespace App\Http\Controllers;
use Illuminate\Support\Collection;
use Illuminate\Http\Request;
use App\Notifications\DatabaseNotification;
use App\user;
use Notification;
use Illuminate\Support\Facades\Auth;

class NotificationController extends Controller
{
   
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){
    	return view ('hr.notification.notificationList');
    }

    public function create(){
    	return view ('hr.notification.createNotification');
    }

    public function store(request $request){

   	$letter = collect(['subject'=>$request->subject, 'message'=>$request->message]); 
   	$users = user::all();
   	Notification::send($users, new DatabaseNotification($letter));
    return redirect()->route('createNotification')->with('success', 'Notification saved succesfully');
    
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
