<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCvDetail extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cv_details', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('father_name');
            $table->string('cnic');
            $table->date('date_of_birth');
            $table->date('job_starting_date');
            $table->date('cv_submission_date');
            $table->tinyInteger('foreign_experience');
            $table->tinyInteger('donor_agency');
            $table->boolean('barqaab_employment');
            $table->string('skill');
            $table->string('comments');
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
        Schema::dropIfExists('cv_details');
    }
}
