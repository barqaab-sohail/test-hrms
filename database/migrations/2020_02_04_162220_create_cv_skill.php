<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCvSkill extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cv_skills', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('skill_name')->nullable();
            $table->bigInteger('cv_detail_id')->unsigned();
            $table->foreign('cv_detail_id')->references('id')->on('cv_details')->onDelete('cascade');
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
        Schema::dropIfExists('cv_skills');
    }
}
