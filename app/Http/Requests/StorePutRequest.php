<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Contracts\Validation\Validator;
use function response;

class StorePutRequest extends FormRequest
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
            "companyName" => 'string|max:100',
            "companyRegistrationNumber" => 'alpha_dash|max:20',
            "companyFoundationDate" => 'prohibited',
            "country" => 'string|max:100',
            "zipCode" => 'string|max:20',
            "city" => 'string|max:50',
            "streetAddress" => 'string|max:100',
            "latitude" => 'numeric',
            "longitude" => 'numeric',
            "companyOwner" => 'string|max:50',
            "employees" => 'int',
            "activity" => 'string|max:50',
            "active" => 'string|max:5',
            "email" => 'email|max:100',
            "password" => 'string|max:20'
        ];
    }
    
    public function failedValidation(Validator $validator) {

        throw new HttpResponseException(response()->json([
                            'success' => false,
                            'message' => 'Validation errors',
                            'data' => $validator->errors()
        ]));
    }
}
