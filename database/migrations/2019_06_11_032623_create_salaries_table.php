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
            $table->float('basic_pay');
            $table->float('house_rent')->nullable();
            $table->float('dearness_allowance')->nullable();
            $table->float('adhoc_2009')->nullable();
            $table->float('adhoc_2010')->nullable();
            $table->float('adhoc_2012')->nullable();
            $table->float('adhoc_2013')->nullable();
            $table->float('field_allowance')->nullable();
            $table->float('other_allowance')->nullable();
            $table->float('total');
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
