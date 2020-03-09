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
            $table->string('full_name');
            $table->string('father_name')->nullable();
            $table->string('cnic')->unique()->nullable();
            $table->date('date_of_birth')->nullable();
            $table->date('job_starting_date');
            $table->date('cv_submission_date')->nullable();
            $table->tinyInteger('foreign_experience')->nullable();
            $table->tinyInteger('donor_experience')->nullable();
            $table->boolean('barqaab_employment')->comment('0 No, 1 Yes');
            $table->string('comments')->nullable();
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
