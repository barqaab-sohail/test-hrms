<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCvSpecializationFieldTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cv_specialization_fields', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('cv_detail_id')->unsigned()->index();
            $table->foreign('cv_detail_id')->references('id')->on('cv_details')->onDelete('cascade');

            $table->bigInteger('cv_specialization_id')->unsigned()->index();
            $table->foreign('cv_specialization_id')->references('id')->on('cv_specializations')->onDelete('cascade');


            $table->bigInteger('cv_field_id')->unsigned()->index();
            $table->foreign('cv_field_id')->references('id')->on('cv_fields')->onDelete('cascade');
            $table->tinyInteger('year');
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
        Schema::dropIfExists('cv_specialization_fields');
    }
}
