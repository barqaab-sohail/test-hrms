<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInitialLeaveBalancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('initial_leave_balances', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('leave_type_id')->unsigned();
            $table->bigInteger('employee_id')->unsigned();
            $table->smallInteger('balance');
            $table->date('effective_date');
            $table->timestamps();
            $table->foreign('leave_type_id')->references('id')->on('leave_types');
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
        Schema::dropIfExists('initial_leave_balances');
    }
}
