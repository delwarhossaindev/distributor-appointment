<?php

// app/Models/OfficeInfo.php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OfficeInfo extends Model
{
    protected $table = 'office_info';
    protected $fillable = [
        'distributorship_info_master_id',
        'address',
        'city',
        'post_code',
        'union_name',
        'thana',
        'telephone',
        'mobile',
        'fax',
        'contact_person',
        'email',
        'created_by',
        'updated_by',
    ];
    public function distributorshipInfoMaster()
    {
        return $this->belongsTo(DistributorshipInfoMaster::class, 'distributorship_info_master_id');
    }
}
