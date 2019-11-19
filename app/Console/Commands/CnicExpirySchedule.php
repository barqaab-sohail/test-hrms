<?php

namespace App\Console\Commands;
use Illuminate\Console\Command;

use Illuminate\Support\Collection;
use Illuminate\Http\Request;
use App\Notifications\DatabaseNotification;
use App\User;
use DB;
use App\employee;
use Notification;
use Illuminate\Support\Facades\Auth;

class CnicExpirySchedule extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'CnicExpirySchedule:check';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Check CNIC Expiry of Employee';

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
        $expiryDays = \Carbon\Carbon::now()->addDays(300);
        $employeeIds = employee::whereDate('cnic_expiry', '<',$expiryDays)->pluck('id')->toArray(); 
        $users = User::all()->whereIn('employee_id',$employeeIds);

        foreach($users as $user){
        $name = $user->employee->first_name ." ". $user->employee->middle_name ." ". $user->employee->last_name;
        $expiryDate = $user->employee->cnic_expiry;
        $letter = collect(['from'=>'HRMS','subject'=>'CNIC Expiry', 'message'=>"Dear $name your CNIC is near to expiry on $expiryDate, please renew your CNIC and informed to HR"]);

         Notification::send($user, new DatabaseNotification($letter));
         
        $hrManager = User::role('HR Manager')->get();

        $message = collect(['from'=>'HRMS','subject'=>"$name, CNIC Expiry on $expiryDate", 'message'=>"Dear $name your CNIC is near to expiry on $expiryDate, please renew your CNIC and informed to HR"]);
        Notification::send($hrManager, new DatabaseNotification($message));


        }
    }
}
//Blue Host Command 
//cd /home1/barqaabc/public_html/hrms && php artisan schedule:run >> /dev/null 2>&1