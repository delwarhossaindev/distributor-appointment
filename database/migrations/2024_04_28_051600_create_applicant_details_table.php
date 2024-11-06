<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('applicant_details', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('distributorship_info_master_id');
            $table->string('name')->nullable();
            $table->string('father_name')->nullable();
            $table->string('mother_name')->nullable();
            $table->string('present_address')->nullable();
            $table->string('permanent_address')->nullable();
            $table->bigInteger('nid_no')->nullable();
            $table->bigInteger('tin_no')->nullable();
            $table->string('business_name')->nullable();
            $table->string('ownership_type')->nullable();
            $table->string('operating_market')->nullable();
            $table->string('operating_business_type')->nullable();
            $table->bigInteger('operating_business_year')->nullable();
            $table->bigInteger('avg_annual_turnover')->nullable();
            $table->bigInteger('created_by')->nullable();
            $table->bigInteger('updated_by')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('applicant_details');
    }
};
