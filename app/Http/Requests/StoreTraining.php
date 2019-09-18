<?php

namespace App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Foundation\Http\FormRequest;

class StoreTraining extends FormRequest
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
         'title' => 'required|max:255',
         'country_id' => 'required|max:255',
         'from' => 'nullable|date',
         'to' => 'nullable|date|after:from',
         'description' => 'required'

        ];
    }
}
