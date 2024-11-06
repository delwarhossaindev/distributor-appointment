<?php

namespace App\Http\Controllers;

use App\Models\CodeClosure;
use Illuminate\Http\Request;

class CodeClosureController extends Controller
{
    public function index()
    {
        try {
            $data = CodeClosure::all();

            return response()->json($data, 200);
        } catch (\Exception $e) {
            $data = [];
            $data['status'] = 'error';
            $data['message'] = $e;
            return response()->json($data, 400);
        }
    }

    public function store(Request $request)
    {

        try {
            $result = CodeClosure::create($request->all());
            $data['status'] = 'success';
            $data['message'] = "Data Store Successfully";

            return response()->json($data, 200);
        } catch (\Exception $e) {
            $data = [];
            $data['status'] = 'error';
            $data['message'] = "Data Store Unsuccessful";
            $data['error_message'] = $e->getMessage();
            return response()->json($data, 400);
        }
    }

    public function show($id)
    {
        return CodeClosure::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $codeClosure = CodeClosure::findOrFail($id);
        $codeClosure->update($request->all());

        return $codeClosure;
    }

    public function destroy($id)
    {
        $codeClosure = CodeClosure::findOrFail($id);
        $codeClosure->delete();

        return 204;
    }
}
