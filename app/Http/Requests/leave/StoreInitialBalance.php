<?php

namespace App\Http\Requests\leave;

use Illuminate\Foundation\Http\FormRequest;

class StoreInitialBalance extends FormRequest
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
         
         
        $id = request()->id;
        
        return [
            
             'leave_type_id' => "required|unique_with:leave_initial_balances,employee_id,$id",

            // 'name' => "required|unique_with:languages,employee_id,$id",
        ];
    }
    public function messages()
    {
        return [
            'leave_type_id.unique_with' => 'This Type of Leave is already Entered',
            
        ];
    }
}
