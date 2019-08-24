<?php

namespace App\Http\Controllers\Auth;
use Illuminate\Support\Facades\DB;
use App\User;
use App\employee;
use App\Notifications\MailNotification;
use Illuminate\Http\Request;
use Illuminate\Auth\Events\Registered;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/dashboard';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'cnic' => ['required', 'digits:13'],
            'email' => ['required', 'string', 'email', 'max:255', ],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }
    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
     /*$user =  User::create([
            'cnic' => $data['cnic'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
        
        return $user;
        */
    }

    public function register(Request $request)
    {
       $this->validator($request->all())->validate();
           
         $test = DB::table('users')
                    ->join('employees','employees.id','=','users.employee_id')
                    ->where('email', $request->email)->where('cnic',$request->cnic)->first();


        
        
        
        if ($test == null)
        {
            return view('auth.register')->withErrors("Please Contact to HR");

        }
        else
        {


            if($test->user_status==1)
            {

                 return view('auth.login')->withErrors("You are already Registered.  Please Enter Email and Password");

            }elseif($test->user_status==0)
            {

            $user = User::where('email', $request->email)->first();
            $user->notify(New MailNotification);

            DB::table('users')
                ->where('email', $request->email)
                ->update(['user_status' => 1, 'password' => Hash::make($request->password) ]);
           
                         
                return redirect()->route('login')->with('success', 'You are Registered Sucessfully');
            }else{
                return view('auth.register')->withErrors("Please Contact to HR");
            }
        }
               
        //$this->validator($request->all())->validate();
        //event(new Registered($user = $this->create($request->all())));
        //$this->guard()->login($user);
        //return $this->registered($request, $user)
        //   ?: redirect($this->redirectPath());
    }
}
