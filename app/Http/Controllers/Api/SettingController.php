<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function getRegion()
    {
        $regions = DB::connection('sqlsrv')->select("select DISTINCT Level3, Level3Name as Region From SDMSCustomer");
        return response()->json(['regions' => $regions]);
    }

    public function getDistrict()
    {
        $district = DB::connection('sqlsrv')->select("select District as DistrictCode,DistrictName From District");
        return response()->json(['districts' => $district]);
    }

    public function getThana(Request $request)
    {
        $district = $request->district;
        $thanaData = DB::connection('sqlsrv')->select(
            "select * From Thana Where  DistrictCode=:district",
            ['district' => $district]
        );
        return response()->json(['thana' => $thanaData]);
    }

    public function getZone(Request $request)
    {

        $zone = $request->search;
        $zoneData = DB::connection('sqlsrv')->select(
            "select Distinct Level2, Level2Name as Zone from SDMSCustomer where Level3 = :zone",
            ['zone' => $zone]
        );
        return response()->json(['zone' => $zoneData]);
    }

    public function getTerritory(Request $request)
    {
        $territory = $request->search;
        $territoryData = DB::connection('sqlsrv')->select("select Distinct TTYCode,TTYName as Territory From SDMSCustomer Where Level2=:territory",
            ['territory' => $territory]
        );
        return response()->json(['territory' => $territoryData]);
    }

    public function getApplicationValues()
    {
        $applicationValues = [
            'Direct Distributorship (DD)',
            'Super Distributorship (SD)',
            'Modern Trade Distributorship (MT)',
            'Wholesale Dealership (WSD)',
        ];

        return response()->json(['application_values' => $applicationValues]);
    }

    public function getAppointmentTypes()
    {
        $appointmentTypes = [
            'Reappointment of old distributor (code re-open)',
            'Replacement of old distributor',
            'New distributor (coverage expansion)',
        ];

        return response()->json(['appointment_types' => $appointmentTypes]);
    }

    public function getReasonForReplacing()
    {
        $data = [
            'Under-performing DB',
            'Non-compliant DB (WC issue)',
            'Non-compliant DB (Service)',
            'DB Resigned',
            'DB Health Issue',
        ];

        return response()->json(['reason_for_replacing' => $data]);
    }

    public function getBusiness()
    {
        $data = [
            'All Business',
            'Salt',
            'Flour',
            'Edible Oil',
            'Rice',
            'Dairy',
            'Tea',
        ];

        return response()->json(['business' => $data]);
    }

    public function getOwnershipType()
    {
        $data = [
            'Private (Proprietorship - Trading)',
            'Partnership',
            'Private Limited Company',
        ];

        return response()->json(['ownership_type' => $data]);
    }

    public function getOfficeWarehouseStructure()
    {
        $data = [
            'Permanent (RCC Building)',
            'Semi-Permanent (Tin-shed building)',
            'Temporary (Tin-shade)',
        ];

        return response()->json(['office_warehouse_structure' => $data]);
    }

    public function getWorkspaceStructure()
    {
        $data = [
            'Permanent (RCC Building)',
            'Semi-Permanent (Tin-shed building)',
            'Temporary (Tin-shade)',
        ];

        return response()->json(['workspace_structure' => $data]);
    }

    public function getWarehouse()
    {
        $data = [
            'Permanent (RCC Building)',
            'Semi-Permanent (Tin-shed building)',
            'Temporary (Tin-shade)',
        ];

        return response()->json(['warehouse' => $data]);
    }

    public function getWarehouseCondition()
    {
        $data = [
            'Ventilation with Mesh and light',
            'Ventilation without mesh and lighting',
            'No Ventilation',
        ];

        return response()->json(['warehouse_condition' => $data]);
    }

    public function getElectricalWiring()
    {
        $data = [
            'Concealed wiring',
            'PVC pipe sealed wiring',
            'Unsealed wiring',
        ];

        return response()->json(['electrical_wiring' => $data]);
    }

    public function getInsuranceCoverage()
    {
        $data = [
            'Insurance Full Coverage',
            'Insurance Coverage (Fire)',
            'No Insurance Coverage',
        ];

        return response()->json(['insurance_coverage' => $data]);
    }

    public function getTeamSittingArrangement()
    {
        $data = [
            'Sitting Arrangement for ASM & SR',
            'Sitting Arrangement for ASM',
            'Sitting Arrangement for SR',
            'No sitting Arrangement for ASM & SR',
        ];

        return response()->json(['team_sitting_arrangement' => $data]);
    }

    public function getFireFightingFacilities()
    {
        $data = [
            'Fire extinguisher & Buckets (Sand & Water) available',
            'Buckets (Sand & Water) available',
            'No Facilities',
        ];

        return response()->json(['fire_fighting_facilities' => $data]);
    }

    public function getCodeClosure()
    {
        $data = [
            'Direct Distributorship (DD)',
            'Super Distributorship (SD)',
            'Modern Trade Distributorship (MT)',
            'Wholesale Dealership (WSD)',
        ];

        return response()->json(['code_closure' => $data]);
    }

    public function getCodeAmendment()
    {
        $data = [
            'Direct Distributorship (DD)',
            'Super Distributorship (SD)',
            'Modern Trade Distributorship (MT)',
            'Wholesale Dealership (WSD)',
        ];

        return response()->json(['code_amendment' => $data]);
    }

    public function getDropDownData()
    {
        try {
            $data = [];
            $data['values']['regions'] = DB::connection('sqlsrv')->select("select DISTINCT Level3, Level3Name as Region From SDMSCustomer");
             $data['values']['location'] = DB::connection('sqlsrv')->select("select MasterCode,DBLocation From DBMasterCode");

            $data['values']['application_values'] = [
                'Direct Distributorship (DD)',
                'Super Distributorship (SD)',
                'Modern Trade Distributorship (MT)',
                'Wholesale Dealership (WSD)',
            ];
            $data['values']['appointment_types'] = [
                'Reappointment of old distributor (code re-open)',
                'Replacement of old distributor',
                'New distributor (coverage expansion)',
            ];
            $data['values']['reason_for_replacing'] = [
                'Under-performing DB',
                'Non-compliant DB (WC issue)',
                'Non-compliant DB (Service)',
                'DB Resigned',
                'DB Health Issue',
            ];
            $data['values']['business'] = [
                'All Business',
                'Salt',
                'Flour',
                'Edible Oil',
                'Rice',
                'Dairy',
                'Tea',
            ];
            $data['values']['ownership_type'] = [
                'Private (Proprietorship - Trading)',
                'Partnership',
                'Private Limited Company',
            ];
            $data['values']['office_warehouse_structure'] = [
                'Permanent (RCC Building)',
                'Semi-Permanent (Tin-shed building)',
                'Temporary (Tin-shade)',
            ];
            $data['values']['workspace_structure'] = [
                'Permanent (RCC Building)',
                'Semi-Permanent (Tin-shed building)',
                'Temporary (Tin-shade)',
            ];
            $data['values']['warehouse'] = [
                'Permanent (RCC Building)',
                'Semi-Permanent (Tin-shed building)',
                'Temporary (Tin-shade)',
            ];

            $data['values']['warehouse_condition'] = [
                'Ventilation with Mesh and light',
                'Ventilation without mesh and lighting',
                'No Ventilation',
            ];

            $data['values']['electrical_wiring'] = [
                'Insurance Full Coverage',
                'Insurance Coverage (Fire)',
                'No Insurance Coverage',
            ];

            $data['values']['insurance_coverage'] = [
                'Sitting Arrangement for ASM & SR',
                'Sitting Arrangement for ASM',
                'Sitting Arrangement for SR',
                'No sitting Arrangement for ASM & SR',
            ];

            $data['values']['fire_fighting_facilities'] = [
                'Fire extinguisher & Buckets (Sand & Water) available',
                'Buckets (Sand & Water) available',
                'No Facilities',
            ];

            $data['values']['code_closure'] = [
                'Direct Distributorship (DD)',
                'Super Distributorship (SD)',
                'Modern Trade Distributorship (MT)',
                'Wholesale Dealership (WSD)',
            ];

            $data['values']['code_amendment'] = [
                'Direct Distributorship (DD)',
                'Super Distributorship (SD)',
                'Modern Trade Distributorship (MT)',
                'Wholesale Dealership (WSD)',
            ];

            $data['values']['sm_comment'] = [
                'Selected',
                'Rejected'
            ];

            $data['values']['gm_comment'] = [
                'Selected',
                'Rejected'
            ];

            $data['values']['customer_type'] = [
                "Whole Sales",
                "Super Store",
                "Institution",
                "Tender",
                "Govt",
                "Distributor",
                "Super Depot"
            ];

            $data['values']['claim_month'] = [
                'January',
                'February' ,
                'March',
                'April',
                'May',
                'June',
                'July',
                'August',
                'September',
                'October',
                'November',
                'December'
            ];

            $data['values']['type_of_claim'] = [
                'Free product Adjustment'
            ];

            $data['values']['payment_mode'] = [
                'Cash',
                'Credit'
            ];

            $data['values']['metro'] = [
                'Dhaka',
                'Chittagong',
                'Sylhet',
                'Comilla',
                'Barishal',
                'Khulna',
                'Jesshore',
                'Rajshashi'
            ];


            $data['values']['category'] = [
                "Logistics",
                "In house",
                "Distributor",
                "Super Store",
                "Institution"
            ];

            $data['values']['category'] = [
                "Logistics",
                "In house",
                "Distributor",
                "Super Store",
                "Institution"
            ];

            $data['values']['bank_name'] = [
                "AB Bank PLC",
                "Bangladesh Commerce Bank Limited",
                "Bank Asia PLC",
                "Bengal Commercial Bank Limited",
                "BRAC Bank PLC",
                "City Bank PLC",
                "Community Bank Bangladesh Limited",
                "Dhaka Bank PLC",
                "Dhaka Mercantile Co-Operative Bank Limited",
                "Dutch-Bangla Bank PLC",
                "Eastern Bank PLC",
                "IFIC Bank PLC",
                "Jamuna Bank Limited",
                "Meghna Bank PLC",
                "Mercantile Bank PLC",
                "Midland Bank Limited",
                "Modhumoti Bank Limited",
                "Mutual Trust Bank PLC",
                "National Credit & Commerce Bank PLC",
                "NRB Bank Limited",
                "NRBC Bank PLC",
                "ONE Bank PLC",
                "Premier Bank PLC",
                "Prime Bank PLC",
                "Pubali Bank PLC",
                "Shimanto Bank Limited",
                "Southeast Bank Limited",
                "South Bangla Agriculture and Commerce Bank Limited",
                "Trust Bank PLC",
                "United Commercial Bank PLC",
                "Uttara Bank PLC",
                "Agrani Bank PLC",
                "Janata Bank PLC",
                "Rupali Bank PLC",
                "Sonali Bank PLC",
                "Probashi Kallyan Bank",
                "Al-Arafah Islami Bank PLC",
                "First Security Islami Bank PLC",
                "Global Islami Bank PLC",
                "ICB Islamic Bank PLC",
                "Islami Bank Bangladesh PLC",
                "Shahjalal Islami Bank PLC",
                "Social Islami Bank PLC",
                "Standard Bank PLC",
                "Union Bank PLC",
                "Exim Bank PLC",
                "Bangladesh Krishi Bank",
                "Bank Al-Falah Limited",
                "Citibank N.A",
                "Commercial Bank of Ceylon PLC",
                "Habib Bank Limited",
                "HSBC",
                "National Bank of Pakistan",
                "Standard Chartered Bank",
                "State Bank of India",
                "Woori Bank"
            ];




            $data['status'] = 'success';
            $data['message'] = "Data Get Successfully";
            return response()->json($data, 200);
        } catch (\Exception $e) {
            dd($e->getMessage());
            $data = [];
            $data['status'] = 'error';
            $data['message'] = "Data Synchronized Unsuccessful";
            return response()->json($data, 400);
        }
    }

    public function getDistributorList()
    {

        try {

            $exceptData = DB::table('distributorship_info_master as dim')
            ->select('dim.id','ad.name')
            ->leftJoin('applicant_details as ad', 'ad.distributorship_info_master_id', '=', 'dim.id')
            ->leftJoin('business_information as bi', 'bi.distributorship_info_master_id', '=', 'dim.id')
            ->leftJoin('document_comment as dc', 'dc.distributorship_info_master_id', '=', 'dim.id')
            ->where('dim.pending_approval', 1)
            ->where('bi.pending_approval', 1)
            ->where('dc.pending_approval', 1)
            ->groupBy('ad.name', 'dim.id')
            ->pluck('dim.id')->all();

            $result = DB::table('distributorship_info_master as dim')
                ->select('dim.id', 'ad.name')
                ->leftJoin('applicant_details as ad', 'ad.distributorship_info_master_id', '=', 'dim.id')
                ->whereNotIn('dim.id', $exceptData)
                ->get();

            // $result = collect($result)->map(function ($data) {

            //     $data->distributorship_info = DB::table('distributorship_info_master as dim')
            //         ->where('dim.id', $data->id)
            //         ->get();

            //     $data->applicant_details = DB::table('applicant_details as ad')
            //         ->where('ad.distributorship_info_master_id', $data->id)
            //         ->get();

            //     $data->office_info = DB::table('office_info as oi')
            //         ->where('oi.distributorship_info_master_id', $data->id)
            //         ->get();

            //     $data->warehouse_address = DB::table('warehouse_address as wa')
            //         ->where('wa.distributorship_info_master_id', $data->id)
            //         ->get();

            //     $data->business_information = DB::table('business_information as bi')
            //         ->where('bi.distributorship_info_master_id', $data->id)
            //         ->get();

            //     $data->code_amendment = DB::table('code_amendment as ca')
            //         ->where('ca.distributorship_info_master_id', $data->id)
            //         ->get();

            //     $data->code_closure = DB::table('code_closure as cc')
            //         ->where('cc.distributorship_info_master_id', $data->id)
            //         ->get();

            //     $data->document_comment = DB::table('document_comment as dc')
            //         ->where('dc.distributorship_info_master_id', $data->id)
            //         ->get();

            //     return $data;

            // });

            $data['result'] = $result;
            $data['status'] = 'success';
            $data['message'] = "Data Get Successfully";

            return response()->json($data, 200);
        } catch (\Exception $e) {
            $data = [];
            $data['status'] = 'error';
            $data['message'] = $e->getMessage();
            return response()->json($data, 400);
        }
    }

    public function getTotalInfo(String $id)
    {

        try {

            $result = (object)[];

            $result->distributorship_info = DB::table('distributorship_info_master as dim')
                ->where('dim.id', $id)
                ->get();

            $tables = [
                'applicant_details' => 'applicant_details',
                'office_info' => 'office_info',
                'warehouse_address' => 'warehouse_address',
                'business_information' => 'business_information',
                'code_closure' => 'code_closure',
                'document_comment' => 'document_comment',
            ];

            foreach ($tables as $key => $table) {
                $result->$key = DB::table("$table as t")
                    ->where('t.distributorship_info_master_id', $id)
                    ->get();
            }

            $data['data'] = $result;
            $data['status'] = 'success';
            $data['message'] = "Data Get Successfully";

            return response()->json($data, 200);
        } catch (\Exception $e) {
            $data = [];
            $data['status'] = 'error';
            $data['message'] = $e->getMessage();
            return response()->json($data, 400);
        }
    }

    public function  getPendingApproval()
    {
        try {

        $result = DB::table('distributorship_info_master as dim')
            ->select('dim.id','ad.name')
            ->leftJoin('applicant_details as ad', 'ad.distributorship_info_master_id', '=', 'dim.id')
            ->leftJoin('business_information as bi', 'bi.distributorship_info_master_id', '=', 'dim.id')
            ->leftJoin('document_comment as dc', 'dc.distributorship_info_master_id', '=', 'dim.id')
            ->where('dim.pending_approval', 1)
            ->where('bi.pending_approval', 1)
            ->where('dc.pending_approval', 1)
            ->groupBy('ad.name', 'dim.id')
            ->get();

           $data['result'] = $result;
           $data['status'] = 'success';
           $data['message'] = "Data Get Successfully";
           return response()->json($data, 200);
        } catch (\Exception $e) {
            $data = [];
            $data['status'] = 'error';
            $data['message'] = $e->getMessage();
            return response()->json($data, 400);
        }

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
