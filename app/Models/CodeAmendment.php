<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CodeAmendment extends Model
{
    use HasFactory;

    protected $table = 'code_amendment';

    protected $fillable = [
        'requisition_date',
        'region',
        'depot',
        'business',
        'customer_name',
        'contact_person',
        'address_one',
        'address_two',
        'phone',
        'mobile',
        'email',
        'category',
        'customer_type',
        'payment_mode',
        'metro',
        'route',
        'territory',
        'district',
        'upazilla',
        'union',
        'hat_bazar',
        'nid',
        'reason_amendment',
        'field_name',
        'current_data',
        'amendment',
    ];
}
