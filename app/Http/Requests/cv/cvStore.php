<?php

namespace App\Http\Requests\cv;

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
    public function rules()
    {
       
        $dt = \Carbon\Carbon::today();
        $dt->subYear(18); 
         //'cnic_expiry' => 'required|date|after:'.$dt,



        return [
            
            'full_name' => 'required',
            'cnic' => 'required|min:15|max:15|unique:cv_details,cnic,',
            'date_of_birth' => 'required|date|before:'.$dt,
            'job_starting_date' => 'required|date',
            'address' => 'required|max:191',
            'city' => 'required|max:191',
            'province' => 'required|max:191',
            'country' => 'required|max:191',
            'phone.*' => 'required',
            'degree_name.*' => 'required',
            'institute.*' => 'required',
            'passing_year.*' => 'required',
            'job_starting_date' => 'required',
            'speciality_name.*' => 'required',
            'field_name.*' => 'required',
            'year.*' => 'required',
            'barqaab_employment' => 'required',
            'cv' => 'required|file|max:1024|mimes:doc,docx,pdf',



        ];
    }

     public function messages()
    {
        return [
            'date_of_birth.before' => 'Minimum 18 years Age required',
            
        ];
    }
}
