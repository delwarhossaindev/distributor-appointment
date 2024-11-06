<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCodeAmendmentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('code_amendment', function (Blueprint $table) {
            $table->id();
            $table->date('requisition_date')->nullable();
            $table->string('region')->nullable();
            $table->string('depot')->nullable();
            $table->string('business')->nullable();
            $table->string('customer_name')->nullable();
            $table->string('contact_person')->nullable();
            $table->string('address_one')->nullable();
            $table->string('address_two')->nullable();
            $table->string('phone')->nullable();
            $table->string('mobile')->nullable();
            $table->string('email')->nullable();
            $table->string('category')->nullable();
            $table->string('customer_type')->nullable();
            $table->string('payment_mode')->nullable();
            $table->string('metro')->nullable();
            $table->string('route')->nullable();
            $table->string('territory')->nullable();
            $table->string('district')->nullable();
            $table->string('upazilla')->nullable();
            $table->string('union')->nullable();
            $table->string('hat_bazar')->nullable();
            $table->string('nid')->nullable();
            $table->text('reason_amendment')->nullable();
            $table->string('field_name')->nullable();
            $table->string('current_data')->nullable();
            $table->string('amendment')->nullable();
            $table->bigInteger('created_by')->nullable();
            $table->bigInteger('updated_by')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('code_amendment');
    }
}