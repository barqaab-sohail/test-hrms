<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCvSpecializationCvField extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cv_specialization_cv_field', function (Blueprint $table) {

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
        Schema::dropIfExists('cv_specialization_cv_field');
    }
}
