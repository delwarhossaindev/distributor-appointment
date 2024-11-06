<?php

// app/Models/ApplicantDetail.php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ApplicantDetail extends Model
{
    protected $fillable = [
        'distributorship_info_master_id',
        'name',
        'father_name',
        'mother_name',
        'present_address',
        'permanent_address',
        'nid_no',
        'tin_no',
        'business_name',
        'ownership_type',
        'operating_market',
        'operating_business_type',
        'operating_business_year',
        'avg_annual_turnover',
        'created_by',
        'updated_by',
    ];

    public function distributorshipInfoMaster()
    {
        return $this->belongsTo(DistributorshipInfoMaster::class, 'distributorship_info_master_id');
    }
}
