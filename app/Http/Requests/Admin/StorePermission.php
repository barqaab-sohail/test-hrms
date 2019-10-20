<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class StorePermission extends FormRequest
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
             return [
        'name' => 'required|unique:permissions,name,'
        ];
    }
     public function messages()
    {
        
        return [
            'name.unique' => 'This Permission Name is already exist',
            
        ];
    }
}
