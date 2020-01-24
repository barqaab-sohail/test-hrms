<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCvDetailCvSpecialization extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cv_detail_cv_specialization', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->bigInteger('cv_detail_id')->unsigned()->index();
            $table->foreign('cv_detail_id')->references('id')->on('cv_details')->onDelete('cascade');

            $table->bigInteger('cv_specialization_id')->unsigned()->index();
            $table->foreign('cv_specialization_id')->references('id')->on('cv_specializations')->onDelete('cascade');

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
        Schema::dropIfExists('cv_detail_cv_specialization');
    }
}
