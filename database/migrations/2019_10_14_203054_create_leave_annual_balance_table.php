<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLeaveAnnualBalanceTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leave_annual_balances', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('leave_type_id')->unsigned();
            $table->bigInteger('employee_id')->unsigned();
            $table->tinyInteger('quota')->unsigned();
            $table->year('year');
            $table->timestamps();
            $table->unique(['employee_id', 'leave_type_id','year']);
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
        Schema::dropIfExists('leave_annual_balances');
    }
}
