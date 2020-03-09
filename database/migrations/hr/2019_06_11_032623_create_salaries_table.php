<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSalariesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salaries', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('employee_id')->unsigned();
            $table->double('basic_pay')->nullable();
            $table->double('house_rent')->nullable();
            $table->double('dearness_allowance')->nullable();
            $table->double('adhoc_2009')->nullable();
            $table->double('adhoc_2010')->nullable();
            $table->double('adhoc_2012')->nullable();
            $table->double('adhoc_2013')->nullable();
            $table->double('field_allowance')->nullable();
            $table->double('other_allowance')->nullable();
            $table->double('total');
            $table->bigInteger('promotion_id')->nullable();
            $table->text('salary_remarks')->nullable();
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
        Schema::dropIfExists('salaries');
    }
}
