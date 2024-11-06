<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CodeClosure extends Model
{
    use HasFactory;

    protected $table = 'code_closure';

    protected $fillable = [
        'distributorship_info_master_id',
        'requisition_date',
        'code_closed_on',
        'region',
        'zone',
        'territory',
        'location',
        'selection_distributor_date',
        'customer_type',
        'salt',
        'flour',
        'edible_oil',
        'rice',
        'dairy',
        'tea',
        'distribution_name',
        'proprietor_name',
        'reason_closure',
        'business',
        'claim_month',
        'type_claim',
        'claim_details',
        'amount',
        'grand_total',
        'account_name',
        'bank_name',
        'ac_no',
    ];
}
