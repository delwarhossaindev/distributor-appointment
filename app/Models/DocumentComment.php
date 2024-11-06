<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DocumentComment extends Model
{
    protected $table = 'document_comment';
    protected $fillable = [
        'distributorship_info_master_id',
        'sm_comment',
        'sm_distributor_type',
        'sm_distributor_description',
        'gm_comment',
        'gm_distributor_type',
        'gm_distributor_description',
        'passport_size_image_one',
        'passport_size_image_two',
        'passport_size_image_three',
        'vat_registration_details_file',
        'bank_statements_file_one',
        'bank_statements_file_two',
        'nid_file',
        'etin_file',
        'utility_bill_file',
        'office_warehouse_photo_file',
        'partnership_memorandum_file',
        'roi_file',
        'db_declaration_file',
        'pending_approval'
    ];
}
