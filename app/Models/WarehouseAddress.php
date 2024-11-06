<?php

// app/Models/WarehouseAddress.php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WarehouseAddress extends Model
{
    protected $table = 'warehouse_address';
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
