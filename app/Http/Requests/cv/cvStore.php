<?php

namespace App\Http\Requests\cv;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class cvStore extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(Request $request)
    {
         $expStart = \Carbon\Carbon::today()->subYear(18);
         $after = \Carbon\Carbon::today();
        if($request->filled('date_of_birth')){
             $dateOfBirth = \Carbon\Carbon::parse($request->date_of_birth);
              $expStart = $dateOfBirth->addYear(18);
              $after = $dateOfBirth->addYear(75);
        }
        
        $today = \Carbon\Carbon::today();
        $age = $today->subYear(18);
       
         //'cnic_expiry' => 'required|date|after:'.$dt,
        //dd(Request::input('membership_name'));

        return [
            
            'full_name' => 'required',
            'cnic' => 'nullable|min:15|max:15|unique:cv_details,cnic',
            'date_of_birth' => 'nullable|date|before:'.$age.'|after:'.$after,
            'job_starting_date' => 'required|date|after:'.$expStart,
            'address' => 'nullable|max:191',
            'city' => 'nullable|max:191',
            'province' => 'nullable|max:191',
            'country' => 'required|max:191',
            'email'=>'nullable|email|unique:cv_contacts,email',
            'phone.*' => 'required|distinct',
            'degree_name.*' => 'required|distinct',
            'institute.*' => 'nullable|MAX:191',
            'passing_year.*' => 'nullable|distinct',
            'speciality_name.*' => 'required',
            'field_name.*' => 'required',
            'year.*' => 'required',
            'membership_name.*'=>'nullable|distinct',
            //'number.*' => Rule::requiredIf($request->membership==1),
            //'membership_number.*'=>'required_if:membership_name.*,1',
            'barqaab_employment' => 'required',
            'cv_submission_date'=>'nullable|date|before_or_equal:'.$today,
            'cv' => 'required|file|max:1024|mimes:doc,docx,pdf',



        ];
    }

     public function messages()
    {
        return [
            'date_of_birth.before' => 'Date of Birth required minimum 18 years of Age',
             'date_of_birth.after' => 'More than 75 Years of Age is not allowed',
            'job_starting_date.after' => 'Job Startingg Date after 18 years of Age',
            'phone.*.distinct' => 'Two Phone Numbers must be different',
            'degree_name.*.distinct' => 'Two Degree Names must be different',
            'passing_year.*.distinct' => 'Two Degrees on same year is not allowed',
            'membership_number.*.required_if' => 'Pakistan Engineering Council Number is required',
            'cv_submission_date.before_or_equal'=>'The cv submission date must be a date before or equal today'

            
        ];
    }
}
