<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCvExperience extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cv_experiences', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('cv_detail_id')->unsigned()->index();
            $table->foreign('cv_detail_id')->references('id')->on('cv_details')->onDelete('cascade');

            $table->bigInteger('cv_specialization_id')->unsigned()->index();
            $table->foreign('cv_specialization_id')->references('id')->on('cv_specializations');


            $table->bigInteger('cv_stage_id')->unsigned()->index();
            $table->foreign('cv_stage_id')->references('id')->on('cv_stages');

            $table->bigInteger('cv_discipline_id')->unsigned()->index();
            $table->foreign('cv_discipline_id')->references('id')->on('cv_disciplines');


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
        Schema::dropIfExists('cv_experiences');
    }
}
