<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDistributorPendingTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('distributor_pending', function (Blueprint $table) {
            $table->id();
            $table->string('code_creation')->nullable();
            $table->string('distributor_form')->nullable();
            $table->string('business_infor')->nullable();
            $table->string('documents_comments')->nullable();
            $table->string('code_closure')->nullable();
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
        Schema::dropIfExists('distributor_pending');
    }
}
