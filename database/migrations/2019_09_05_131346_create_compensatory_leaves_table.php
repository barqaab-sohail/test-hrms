<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCompensatoryLeavesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('compensatory_leaves', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('employee_id')->unsigned();
            $table->date('from');
            $table->date('to');
            $table->string('reason');
            $table->bigInteger('supervisor_id')->unsigned();
            $table->tinyInteger('supervisor_confirmation')->defulat(0);
            $table->string('supervisor_remarks')->nullable();
            $table->timestamps();
            $table->foreign('supervisor_id')->references('id')->on('employees');
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
        Schema::dropIfExists('compensatory_leaves');
    }
}
