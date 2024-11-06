<?php

namespace App\Http\Controllers;

use App\Models\DistributorshipInfoMaster;
use Illuminate\Http\Request;

class DistributorshipInfoMasterController extends Controller
{
    public function index()
    {
        return DistributorshipInfoMaster::with(['applicantDetail', 'officeInfo', 'warehouseAddress'])->get();
    }

    public function store(Request $request)
    {

        try {

            $data = $request->all();



            $distributorshipInfoMaster = DistributorshipInfoMaster::create($data);

            // Create associated child records if available
            if (isset($data['applicant_detail'])) {

                $applicant_detail = json_decode($data['applicant_detail']);

                $applicant_detail_data = [
                    "name" => $applicant_detail->name,
                    "father_name" => $applicant_detail->father_name,
                    "mother_name" => $applicant_detail->mother_name,
                    "present_address" => $applicant_detail->present_address,
                    "permanent_address" => $applicant_detail->permanent_address,
                    "nid_no" => $applicant_detail->nid_no,
                    "tin_no" => $applicant_detail->tin_no,
                    "business_name" => $applicant_detail->business_name,
                    "ownership_type" => $applicant_detail->ownership_type,
                    "operating_market" => $applicant_detail->operating_market,
                    "operating_business_type" => $applicant_detail->operating_business_type,
                    "operating_business_year" => $applicant_detail->operating_business_year,
                    "avg_annual_turnover" => $applicant_detail->avg_annual_turnover
                ];

                $distributorshipInfoMaster->applicantDetail()->create($applicant_detail_data);
            }

            if (isset($data['office_info'])) {

                $office_info = json_decode($data['office_info']);



                $office_info_data = [
                    "address" => $office_info->address,
                    "city" => $office_info->city,
                    "post_code" => $office_info->post_code,
                    "union_name" => $office_info->union_name,
                    "thana" => $office_info->thana,
                    "telephone" => $office_info->telephone,
                    "mobile" => $office_info->mobile,
                    "fax" => $office_info->fax,
                    "contact_person" => $office_info->contact_person,
                    "email" => $office_info->email
                ];

                $distributorshipInfoMaster->officeInfo()->create($office_info_data);
            }

            if (isset($data['warehouse_address'])) {

                $warehouse_address = json_decode($data['warehouse_address']);

                $warehouse_address_data = [
                    "address" => $warehouse_address->address,
                    "city" => $warehouse_address->city,
                    "post_code" => $warehouse_address->post_code,
                    "union_name" => $warehouse_address->union_name,
                    "thana" => $warehouse_address->thana,
                    "telephone" => $warehouse_address->telephone,
                    "mobile" => $warehouse_address->mobile,
                    "fax" => $warehouse_address->fax,
                    "contact_person" => $warehouse_address->contact_person,
                    "email" => $warehouse_address->email
                ];

                $distributorshipInfoMaster->warehouseAddress()->create($warehouse_address_data);
            }

            $data1['status'] = 'success';
            $data1['message'] = "Data Store Successfully";

            return response()->json($data1, 200);
        } catch (\Exception $e) {

            $data1 = [];
            $data1['status'] = 'error';
            $data1['message'] = "Data Store Unsuccessful";
            return response()->json($data1, 400);
        }


    }

    public function show($id)
    {
        return DistributorshipInfoMaster::with(['applicantDetail', 'officeInfo', 'warehouseAddress'])->findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $distributorshipInfoMaster = DistributorshipInfoMaster::findOrFail($id);
        $distributorshipInfoMaster->update($request->all());

        // Update associated child records if available
        if ($request->has('applicant_detail')) {
            $distributorshipInfoMaster->applicantDetail()->update($request->input('applicant_detail'));
        }

        if ($request->has('office_info')) {
            $distributorshipInfoMaster->officeInfo()->update($request->input('office_info'));
        }

        if ($request->has('warehouse_address')) {
            $distributorshipInfoMaster->warehouseAddress()->update($request->input('warehouse_address'));
        }

        return $distributorshipInfoMaster;
    }

    public function destroy($id)
    {
        $distributorshipInfoMaster = DistributorshipInfoMaster::findOrFail($id);
        $distributorshipInfoMaster->delete();
        return 204;
    }
}
