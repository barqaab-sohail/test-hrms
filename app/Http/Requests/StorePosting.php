<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StorePosting extends FormRequest
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
         'position' => 'required|max:255',
         'project' => 'required|max:255',
         'manager_id' => 'required',
         'posting_date' => 'required|date', 
         'joining_date' => 'required|date', 
        ];
    }
}
