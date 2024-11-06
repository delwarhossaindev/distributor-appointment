<?php

// app/Http/Controllers/DocumentCommentController.php

namespace App\Http\Controllers;

use App\Models\DocumentComment;
use Illuminate\Http\Request;

class DocumentCommentController extends Controller
{
    public function index()
    {
        return DocumentComment::all();
    }

    public function store(Request $request)
    {

        try {
            // Handle file uploads
            $filePaths = [];
            $fileFields = ['passport_size_image_one', 'passport_size_image_two', 'passport_size_image_three', 'vat_registration_details_file', 'bank_statements_file_one', 'bank_statements_file_two', 'nid_file', 'etin_file', 'utility_bill_file', 'office_warehouse_photo_file', 'partnership_memorandum_file', 'roi_file', 'db_declaration_file'];

            foreach ($fileFields as $field) {
                if ($request->hasFile($field)) {
                    $path = $request->file($field)->store('public');
                    $filePaths[$field] = $path;
                }
            }

            // Create the document comment record
            $documentComment = DocumentComment::create(array_merge(
                $request->except($fileFields), // Exclude file fields from the request data
                $filePaths // Add file paths to the request data
            ));
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
        return DocumentComment::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $documentComment = DocumentComment::findOrFail($id);
        $documentComment->update($request->all());

        return response()->json($documentComment, 200);
    }

    public function destroy($id)
    {
        DocumentComment::findOrFail($id)->delete();

        return response()->json(null, 204);
    }
}
