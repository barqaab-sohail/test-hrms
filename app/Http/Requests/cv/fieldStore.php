<?php

namespace App\Http\Requests\cv;

use Illuminate\Foundation\Http\FormRequest;

class fieldStore extends FormRequest
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
        'field_name' => 'required|unique:cv_fields,field_name,'
        ];
    }

    public function messages()
    {
        
        return [
            'field_name.unique' => 'This Field is already exist'
            
        ];
    }
}
