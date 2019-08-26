<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Notifications\BirthDayEmailNotification;
use App\Notifications\DatabaseNotification;
use Notification;
use App\User;
use App\employee;


class BirthDaySchedule extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'BirthDay:message';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Birth Day Message';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        //Email for BirthDay
        $toDay = \Carbon\Carbon::now();
       
         $employees = employee::whereMonth('date_of_birth', '=', $toDay->month)->whereDay('date_of_birth', '=', $toDay->day)->get();
        
        foreach($employees as $employee){
        $userName = $employee->first_name ." ". $employee->middle_name ." ". $employee->last_name;
        $userEmail = User::where('email', $employee->user->email)->first();
        $userEmail->notify(New BirthDayEmailNotification($userName));
        }


        //Notification for BirthDay
         $employeeIds = employee::whereMonth('date_of_birth', '=', $toDay->month)->whereDay('date_of_birth', '=', $toDay->day)->pluck('id')->toArray();
         $users = User::all()->whereIn('employee_id',$employeeIds); 

        foreach($users as $user){
        $name = $user->employee->first_name ." ". $user->employee->middle_name ." ". $user->employee->last_name;
        
        $letter = collect(['subject'=>'Happy Birth Day', 'message'=>"Dear $name , May your birthday be the start of a year filled with good health and much happiness"]);

         Notification::send($user, new DatabaseNotification($letter));

        }

        
    }
}
