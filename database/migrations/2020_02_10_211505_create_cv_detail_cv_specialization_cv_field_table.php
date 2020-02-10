<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCvDetailCvSpecializationCvFieldTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cv_detail_cv_specialization_cv_field', function (Blueprint $table) {
            

            $table->bigInteger('cv_detail_cv_specialization_id','id')->unsigned()->index('cv_detail_cv_specialization_id','detail_specialization');
            $table->foreign('cv_detail_cv_specialization_id','detail_specialization')->references('id')->on('cv_detail_cv_specialization')->onDelete('cascade');

            $table->bigInteger('cv_field_id')->unsigned()->index();
            $table->foreign('cv_field_id')->references('id')->on('cv_fields')->onDelete('cascade');
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
        Schema::dropIfExists('cv_detail_cv_specialization_cv_field');
    }
}
