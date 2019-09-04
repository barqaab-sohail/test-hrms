<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('division_id')->unsigned();
            $table->string('first_name');
            $table->string('middle_name')->nullable();
            $table->string('last_name');
            $table->string('father_name');
            $table->date('date_of_birth')->nullable();
            $table->string('gender');
            $table->string('cnic')->unique();
            $table->date('cnic_expiry');
            $table->string('employee_no')->nullable()->unique();
            $table->string('marital_status_id');
            $table->string('religon')->nullable();
            $table->tinyInteger('employee_status')->default(0)->comment('0 onboard, 1 resigned, 2 terminated, 3 onleave, 4 manmonth ended' );
            $table->timestamps();
            $table->foreign('division_id')->references('id')->on('divisions');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employees');
    }
}
