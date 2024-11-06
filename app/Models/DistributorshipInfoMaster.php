<?php

// app/Models/DistributorshipInfoMaster.php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DistributorshipInfoMaster extends Model
{
    public $table = 'distributorship_info_master';
    protected $fillable = [
        'date',
        'region',
        'zone',
        'territory',
        'location_name',
        'business_type',
        'appointment_type',
        'replacement_reappointment',
        'inception_date',
        'reason_for_replacing',
        'business',
        'projected_monthly_business',
        'projected_roi_percent',
        'competes_evaluated',
        'current_relationship_details',
        'past_relationship_details',
        'workspace_office',
        'workspace_warehouse',
        'workspace_office_structure',
        'workspace_warehouse_structure',
        'existing_staff_market_operation',
        'mechanised',
        'non_mechanised',
        'trade_license_no',
        'vat_registration_no',
        'distributorship_companies',
        'current_finance_details',
        'pending_approval',
        'created_by',
        'updated_by',
    ];

    public function applicantDetail()
    {
        return $this->hasOne(ApplicantDetail::class);
    }

    public function officeInfo()
    {
        return $this->hasOne(OfficeInfo::class);
    }

    public function warehouseAddress()
    {
        return $this->hasOne(WarehouseAddress::class);
    }
}
