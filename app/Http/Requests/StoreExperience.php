<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreExperience extends FormRequest
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
           
        'employer' => 'required|max:191',
        'position' => 'required|max:191',
        'country_id' => 'required',
        'from' => 'required|date',
        'to' => 'required|date|after:from',
        ];
    }
}
