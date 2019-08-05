<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreOther extends FormRequest
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
          
            'blood_group'=>'required',
            'driving_licence'=>'nullable',
            'licence_expiry'=>'required_with:driving_licence',
            'passport_no'=>'nullable',
            'passport_expiry'=>'required_with:passport_no',
            

        ];
    }
}
