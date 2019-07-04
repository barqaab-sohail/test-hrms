<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreEducation extends FormRequest
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
        'degree_name' => 'required|max:255',
        'institute' => 'required|max:255',
        'marks_obtain' => 'nullable',
        'total_marks' => 'nullable|gte:marks_obtain',
        'level' => 'required',
        'to_year' => 'required',
        'from_year' => 'nullable|lte:to_year',
        'grade' => 'required',
        'country' => 'required',
        ];
    }
}
