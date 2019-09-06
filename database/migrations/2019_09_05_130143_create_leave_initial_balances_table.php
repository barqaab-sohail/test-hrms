<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLeaveInitialBalancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leave_initial_balances', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('leave_type_id')->unsigned();
            $table->bigInteger('employee_id')->unsigned();
            $table->smallInteger('balance');
            $table->date('effective_date');
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
        Schema::dropIfExists('leave_initial_balances');
    }
}
