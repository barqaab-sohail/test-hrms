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
     $dt = \Carbon\Carbon::today();
     $dt->addDays(5); 

        return [
         'first_name' => 'required|max:191',
         'last_name' => 'required|max:191',
         'father_name' => 'required|max:191',
         'date_of_birth' =>'required',
         'gender' =>'required',
         'cnic' => 'required|numeric|digits:13|unique:employees,cnic,'.session('employee_id'),
         'cnic_expiry' => 'required|date|after:'.$dt,
         'employee_no' => 'unique:employees,employee_no,'.session('employee_id'),
         'marital_status' =>'required',
         'religon' =>'required',
         'nationality_name' =>'required',
         'nationality_name2' => 'nullable|different:nationality_name',
         'division_id' =>'required',

        ];
    }

    public function messages()
    {
        return [
            'cnic_expiry.after' => 'CNIC Expiry Date must be five days after today',
            
        ];
    }


}
