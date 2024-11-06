<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DistributorPending extends Model
{
    use HasFactory;

    protected $table = 'distributor_pending';

    protected $fillable = [
        'distributorship_info_master_id',
        'code_creation',
        'distributor_form',
        'business_infor',
        'documents_comments'
    ];
}
