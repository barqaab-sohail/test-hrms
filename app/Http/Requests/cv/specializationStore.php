<?php

namespace App\Http\Requests\cv;

use Illuminate\Foundation\Http\FormRequest;

class specializationStore extends FormRequest
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
        'specialization_name' => 'required|unique:cv_specializations,specialization_name,'
        ];
    }

    public function messages()
    {
        
        return [
            'specialization_name.unique' => 'This Specialization is already exist'
            
        ];
    }
}
