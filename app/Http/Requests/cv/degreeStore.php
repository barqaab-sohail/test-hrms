<?php

namespace App\Http\Requests\cv;

use Illuminate\Foundation\Http\FormRequest;

class degreeStore extends FormRequest
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
        'degree_name' => 'required|unique:cv_educations,degree_name,',
        'level' => 'required'
        ];
    }

    public function messages()
    {
        
        return [
            'degree_name.unique' => 'This Degree Name is already exist'
            
        ];
    }
}
