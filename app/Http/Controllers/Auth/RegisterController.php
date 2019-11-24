<?php

namespace App\Http\Controllers\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use App\Http\Requests\Auth\StoreOTP;
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
            'cnic' => ['required','min:15','max:15'],
            'email' => ['required', 'string', 'email', 'max:255', ],
            //'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }
    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create()
    {

      return view('auth.codeConfirmation');
    }

    public function confirm(StoreOTP $request){

        $user = user::all()->where('email',$request->email)->first();
       
        if ($user->code == $request->otp){
         
            $user->update(['user_status' => 1, 'email_verified_at' =>  \Carbon\Carbon::now(),'password' => Hash::make($request->password) ]); 
        return redirect()->route('login')->with('success', 'You are sucessfully registered')->with(['email'=>$request->email]);

        }else{

            
            return back()->with( ['email'=>$request->email])->withErrors("code is not correct");
        }
    }

    public function register(Request $request)
    {
       $this->validator($request->all())->validate();
           
         $test = DB::table('users')
                    ->join('employees','employees.id','=','users.employee_id')
                    ->where('email', $request->email)->where('cnic',$request->cnic)->first();
        
        if ($test == null)
        {
            return view('auth.register')->withErrors("Your CNIC and Email is not matched. Please Contact to HR");

        }
        else
        {


            if($test->user_status==1)
            {

                 return view('auth.login')->withErrors("You are already Registered.  Please Enter Email and Password");

            }elseif($test->user_status==0)
            {
            $otpcode = rand (10000,65000);

            DB::table('users')
                ->where('email', $request->email)
                ->update(['code' => $otpcode]);

            $email = $request->email;

            $user = User::where('email', $request->email)->first();
            $user->notify(New MailNotification($otpcode));

            $message = 'Verification code is send to your email address.  Please enter below for varification';

              
            return Redirect::route('otp.create')->with( ['message' => $message, 'email'=>$email] );
            
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
