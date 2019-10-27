<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StorePromotion extends FormRequest
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
           'basic_pay' => 'nullable|numeric',
           'house_rent' => 'nullable|numeric',
           'dearness_allowance' => 'nullable|numeric',
           'adhoc_2009' => 'nullable|numeric',
           'adhoc_2010' => 'nullable|numeric',
           'adhoc_2012' => 'nullable|numeric',
           'adhoc_2013' => 'nullable|numeric',
           'field_allowance' => 'nullable|numeric',
           'other_allowance' => 'nullable|numeric',
           'total' => 'required|numeric',
           'effective_date'=>'required'
                    
        ];
    }
}
