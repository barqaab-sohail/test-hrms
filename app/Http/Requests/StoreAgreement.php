<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreAgreement extends FormRequest
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
            
        'designation' => 'required|max:255',
        'joining_date' => 'required|max:255',
        'project' => 'required|max:255',
        'appointment_letter_type' => 'required|max:255',

        ];
    }
}
