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
        return [
            
            'full_name' => 'required',
            'cnic' => 'required',
            'date_of_birth' => 'required',
            'job_starting_date' => 'required',
            'address' => 'required',
            'city' => 'required',
            'province' => 'required',
            'country' => 'required',
            'phone' => 'required',
            'degree_name' => 'required',
            'institute' => 'required',
            'passing_year' => 'required',
            'job_starting_date' => 'required',
            'speciality_name' => 'required',
            'field_name' => 'required',
            'year' => 'required',
            'barqaab_employement' => 'required',
            'cv' => 'file|max:1000|mimes:doc,docx,pdf',



        ];
    }
}
