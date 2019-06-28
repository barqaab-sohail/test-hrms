<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEducationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('educations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('employee_id')->unsigned();
            $table->string('degree_name');
            $table->string('institute');
            $table->string('level');
            $table->year('completion');
            $table->string('from_month')->nullable();
            $table->string('from_year');
            $table->string('to_month')->nullable();
            $table->string('to_year');
            $table->float('total_marks');
            $table->float('marks_obtain');
            $table->string('grade');
            $table->string('country');
            $table->timestamps();
            $table->foreign('employee_id')->references('id')->on('employees');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('educations');
    }
}
