<?php

namespace App\Http\Controllers;

use App\Models\DistributorPending;
use Illuminate\Http\Request;

class DistributorPendingController extends Controller
{
    public function index()
    {
        return DistributorPending::all();
    }

    public function store(Request $request)
    {

        try {
            $result = DistributorPending::create($request->all());
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
        return DistributorPending::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $distributorPending = DistributorPending::findOrFail($id);
        $distributorPending->update($request->all());

        return $distributorPending;
    }

    public function destroy($id)
    {
        $distributorPending = DistributorPending::findOrFail($id);
        $distributorPending->delete();

        return 204;
    }

    public function getDistributorPending ($id){

        return DistributorPending::where('distributorship_info_master_id',$id)->first();

    }


}
