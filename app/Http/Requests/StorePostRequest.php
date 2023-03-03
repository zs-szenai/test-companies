<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Contracts\Validation\Validator;
use function response;

class StorePostRequest extends FormRequest {

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize() {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules() {
        return [
            "companyName" => 'required|string|max:100',
            "companyRegistrationNumber" => 'required|alpha_dash|max:20',
            "companyFoundationDate" => 'required|date',
            "country" => 'required|string|max:100',
            "zipCode" => 'required|string|max:20',
            "city" => 'required|string|max:50',
            "streetAddress" => 'required|string|max:100',
            "latitude" => 'required|numeric',
            "longitude" => 'required|numeric',
            "companyOwner" => 'required|string|max:50',
            "employees" => 'required|int',
            "activity" => 'required|string|max:50',
            "active" => 'required|string|max:5',
            "email" => 'required|email|max:100',
            "password" => 'required|string|max:20'
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
