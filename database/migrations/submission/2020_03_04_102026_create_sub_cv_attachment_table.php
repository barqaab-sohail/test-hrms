<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSubCvAttachmentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sub_cv_attachments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('cv_format');
            $table->string('file_name');
            $table->string('extension');
            $table->string('path');
            $table->string('size');
            $table->text('content')->nullable();
            $table->bigInteger('sub_cv_id')->unsigned();
            $table->foreign('sub_cv_id')->references('id')->on('sub_cvs')->onDelete('cascade');
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
        Schema::dropIfExists('sub_cv_attachments');
    }
}
