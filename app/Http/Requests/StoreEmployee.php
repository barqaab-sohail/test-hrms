<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreEmployee extends FormRequest
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
         'first_name' => 'required|max:191',
         'last_name' => 'required|max:191',
         'father_name' => 'required|max:191',
         'date_of_birth' =>'required',
         'gender' =>'required',
         'cnic' => 'required|numeric|digits:13|unique:employees,cnic,'.session('employee_id'),
         'cnic_expiry' => 'required|date|after:tomorrow',
         'employee_no' => 'unique:employees,employee_no,'.session('employee_id'),
         'marital_status' =>'required',
         'religon' =>'required',
         'nationality' =>'required',
         'department_id' =>'required',

        ];
    }
}
