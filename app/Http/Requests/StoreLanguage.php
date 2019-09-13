<?php

namespace App\Http\Requests;
use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;
use App\language;

class StoreLanguage extends FormRequest
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
        
        $id = $this->route('id');
       
        return [
          
        'name' => "required|unique_with:languages,employee_id,$id",
        'speaking' => 'required',
        'writing' => 'required',
        'reading' => 'required',

        //'first_name' => 'required|unique_with:users,last_name,2',
             
        //'name'=>['required',Rule::unique('languages')->ignore(session('employee_id')),],

        ];
    }

    public function messages()
    {
        return [
            'name.unique_with' => 'This Language is already Entered',
            
        ];
    }
}
