<?php

// app/Models/ApplicantDetail.php


namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    protected $fillable = [
        'distributorship_info_master_id',
        'sm_comment',
        'sm_distributor_type',
        'sm_distributor_description'
    ];
}
