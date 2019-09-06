<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLeaveCompensatoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leave_compensatories', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('employee_id')->unsigned();
            $table->date('from');
            $table->date('to');
            $table->string('reason');
            $table->bigInteger('manager_id')->unsigned();
            $table->tinyInteger('manager_confirmation')->defulat(0);
            $table->string('manager_remarks')->nullable();
            $table->timestamps();
            $table->foreign('manager_id')->references('id')->on('employees');
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
        Schema::dropIfExists('leave_compensatories');
    }
}
