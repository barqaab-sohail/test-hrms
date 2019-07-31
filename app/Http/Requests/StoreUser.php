<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\User;

class StoreUser extends FormRequest
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
        $user = User::where('employee_id',session('employee_id'))->first();
        if ($user==null)
        {
            $userId = null;
        }else{

            $userId = $user->id;
        }

        
        return [
            'email' => 'required|unique:users,email,'.$userId,
            'role_id' => 'nullable',

            ];
    }
}
