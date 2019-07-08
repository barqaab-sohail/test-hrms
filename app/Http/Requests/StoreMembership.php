<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;

class StoreMembership extends FormRequest
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
        $rules = [];

       if(Request::input('name') == 'PEC')
       {  
            $rules['name'] = 'required';
            $rules['expiry_date'] = 'required';
            $rules['membership_no'] = 'required';
       }else{
        $rules['name'] = 'required';
       }

       return $rules;

    }
}
