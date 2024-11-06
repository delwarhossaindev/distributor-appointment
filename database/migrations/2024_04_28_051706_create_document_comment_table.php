<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDocumentCommentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('document_comment', function (Blueprint $table) {
            $table->id();
            $table->text('sm_comment')->nullable();
            $table->string('sm_distributor_type')->nullable();
            $table->text('sm_distributor_description')->nullable();
            $table->text('gm_comment')->nullable();
            $table->string('gm_distributor_type')->nullable();
            $table->text('gm_distributor_description')->nullable();
            $table->string('passport_size_image_one')->nullable();
            $table->string('passport_size_image_two')->nullable();
            $table->string('passport_size_image_three')->nullable();
            $table->string('vat_registration_details_file')->nullable();
            $table->string('bank_statements_file_one')->nullable();
            $table->string('bank_statements_file_two')->nullable();
            $table->string('nid_file')->nullable();
            $table->string('etin_file')->nullable();
            $table->string('utility_bill_file')->nullable();
            $table->string('office_warehouse_photo_file')->nullable();
            $table->string('partnership_memorandum_file')->nullable();
            $table->string('roi_file')->nullable();
            $table->string('db_declaration_file')->nullable();
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
        Schema::dropIfExists('document_comment');
    }
}

