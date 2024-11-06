<?php

namespace App\Http\Controllers;

use App\Models\CodeAmendment;
use Illuminate\Http\Request;

class CodeAmendmentController extends Controller
{
    public function index()
    {
        return CodeAmendment::all();
    }

    public function store(Request $request)
    {
        try {
            $result = CodeAmendment::create($request->all());
            $data['status'] = 'success';
            $data['message'] = "Data Store Successfully";

            return response()->json($data, 200);
        } catch (\Exception $e) {
            $data = [];
            $data['status'] = 'error';
            $data['message'] = "Data Store Unsuccessful";
            return response()->json($data, 400);
        }
    }

    public function show($id)
    {
        return CodeAmendment::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $codeAmendment = CodeAmendment::findOrFail($id);
        $codeAmendment->update($request->all());

        return $codeAmendment;
    }

    public function destroy($id)
    {
        $codeAmendment = CodeAmendment::findOrFail($id);
        $codeAmendment->delete();

        return 204;
    }
}
