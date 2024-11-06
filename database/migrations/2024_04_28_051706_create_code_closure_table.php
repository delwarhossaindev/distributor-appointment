<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCodeClosureTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('code_closure', function (Blueprint $table) {
            $table->id();
            $table->date('requisition_date')->nullable();
            $table->date('code_closed_on')->nullable();
            $table->string('region')->nullable();
            $table->string('zone')->nullable();
            $table->string('territory')->nullable();
            $table->string('location')->nullable();
            $table->date('selection_distributor_date')->nullable();
            $table->string('customer_type')->nullable();
            $table->integer('salt')->nullable();
            $table->integer('flour')->nullable();
            $table->integer('edible_oil')->nullable();
            $table->integer('rice')->nullable();
            $table->integer('dairy')->nullable();
            $table->integer('tea')->nullable();
            $table->string('distribution_name')->nullable();
            $table->string('proprietor_name')->nullable();
            $table->text('reason_closure')->nullable();
            $table->string('business')->nullable();
            $table->date('claim_month')->nullable();
            $table->string('type_claim')->nullable();
            $table->text('claim_details')->nullable();
            $table->decimal('amount', 10, 2)->nullable();
            $table->decimal('grand_total', 10, 2)->nullable();
            $table->string('account_name')->nullable();
            $table->string('bank_name')->nullable();
            $table->string('ac_no')->nullable();
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
        Schema::dropIfExists('code_closure');
    }
}