<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorePostRequest;
use App\Http\Requests\StorePutRequest;
use App\Models\Company;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Throwable;

class CompanyController extends Controller {

    /**
     * Get the specified company resources by a comma separated list of their ids.
     * 
     * Usage:
     * http://localhost/laravel_apps/companies/public/api/companies?ids=5,6,7
     *
     * @param Request $request
     * @return JSON of the specified companies or error status and message.
     */
    public function showMoreCompanies(Request $request) {
        try {
            $companyIds = explode(',', $request->input('ids'));

            $companies = Company::whereIn('companyId', $companyIds)
                    ->get();

            return response()->json($companies);
            
        } catch (Throwable $th) {
            return response()->json([
                        'status' => 'error',
                        'message' => $th->getMessage()
                            ], 500);
        }
    }

    /**
     * Store a newly created company resource in storage.
     *
     * @param StorePostRequest $request
     * @return JSON status and message or error status and message.
     */
    public function store(StorePostRequest $request) {

        try {
            $inputCompany = $request->json()->all();

            $company = Company::create([
                        "companyName" => $inputCompany['companyName'],
                        "companyRegistrationNumber" => $inputCompany['companyRegistrationNumber'],
                        "companyFoundationDate" => $inputCompany['companyFoundationDate'],
                        "country" => $inputCompany['country'],
                        "zipCode" => $inputCompany['zipCode'],
                        "city" => $inputCompany['city'],
                        "streetAddress" => $inputCompany['streetAddress'],
                        "latitude" => $inputCompany['latitude'],
                        "longitude" => $inputCompany['longitude'],
                        "companyOwner" => $inputCompany['companyOwner'],
                        "employees" => $inputCompany['employees'],
                        "activity" => $inputCompany['activity'],
                        "active" => $inputCompany['active'],
                        "email" => $inputCompany['email'],
                        "password" => $inputCompany['password']
            ]);

            return response()->json([
                        'status' => 'success',
                        'message' => 'Company created.'
                            ], 201)->header('Location', route('companies.show', ['company' => $company->companyId]));
            
        } catch (Throwable $th) {
            return response()->json([
                        'status' => 'error',
                        'message' => $th->getMessage()
                            ], 500);
        }
    }

    /**
     * Return the specified company resource.
     *
     * @param  Company  $company
     * @return JSON of the specified company or error status and message.
     */
    public function show(Company $company) {
        try {
            return response()->json($company);
        } catch (Throwable $th) {
            return response()->json([
                        'status' => 'error',
                        'message' => $th->getMessage()
                            ], 500);
        }
    }

    /**
     * Update the specified company resource in storage.
     *
     * @param StorePutRequest $request
     * @param  Company  $company
     * @return Response|JSON Returns Response without content or JSON error 
     * status and message.
     */
    public function update(StorePutRequest $request, Company $company) {
        try {
            $inputCompany = $request->json()->all();
            $company->update($inputCompany);
            return response('', 204);
        } catch (Throwable $th) {
            return response()->json([
                        'status' => 'error',
                        'message' => $th->getMessage()
                            ], 500);
        }
    }

}
