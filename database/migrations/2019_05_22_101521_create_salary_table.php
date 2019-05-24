<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSalaryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salary', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->unsigned();
            $table->float('basic_pay');
            $table->float('house_rent');
            $table->float('dearness_allowance');
            $table->float('adhoc_2009');
            $table->float('adhoc_2010');
            $table->float('adhoc_2012');
            $table->float('adhoc_2013');
            $table->float('field_allowance');
            $table->float('other_allowance');
            $table->float('total');
            $table->timestamps();
            $table->foreign('user_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('salary');
    }
}
