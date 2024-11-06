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
        Schema::create('warehouse_address', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('distributorship_info_master_id');
            $table->string('address')->nullable();
            $table->string('city')->nullable();
            $table->bigInteger('post_code')->nullable();
            $table->string('union_name')->nullable();
            $table->string('thana')->nullable();
            $table->bigInteger('telephone')->nullable();
            $table->bigInteger('mobile')->nullable();
            $table->bigInteger('fax')->nullable();
            $table->string('contact_person')->nullable();
            $table->string('email')->nullable();
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
        Schema::dropIfExists('warehouse_address');
    }
};
