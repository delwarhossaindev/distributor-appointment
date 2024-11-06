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
        Schema::create('distributorship_info_master', function (Blueprint $table) {
            $table->id();
            $table->timestamp('date')->nullable();
            $table->string('region')->nullable();
            $table->string('zone')->nullable();
            $table->string('territory')->nullable();
            $table->string('location_name')->nullable();
            $table->string('business_type')->nullable();
            $table->string('appointment_type')->nullable();
            $table->string('replacement_reappointment')->nullable();
            $table->timestamp('inception_date')->nullable();
            $table->string('reason_for_replacing')->nullable();
            $table->string('business')->nullable();
            $table->bigInteger('projected_monthly_business')->nullable();
            $table->bigInteger('projected_roi_percent')->nullable();
            $table->string('competes_evaluated')->nullable();
            $table->string('current_relationship_details')->nullable();
            $table->string('past_relationship_details')->nullable();
            $table->string('workspace_office')->nullable();
            $table->string('workspace_warehouse')->nullable();
            $table->string('workspace_office_structure')->nullable();
            $table->string('workspace_warehouse_structure')->nullable();
            $table->string('existing_staff_market_operation')->nullable();
            $table->string('mechanised')->nullable();
            $table->string('non_mechanised')->nullable();
            $table->string('trade_license_no')->nullable();
            $table->string('vat_registration_no')->nullable();
            $table->string('distributorship_companies')->nullable();
            $table->string('current_finance_details')->nullable();
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
        Schema::dropIfExists('distributorship_info_master');
    }
};
