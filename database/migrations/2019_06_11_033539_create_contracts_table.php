<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateContractsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contracts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('employee_id')->unsigned();
            $table->string('designation');
            $table->date('joining_date')->nullable();
            $table->string('category');
            $table->string('grade')->nullable();
            $table->string('project')->nullable();
            $table->string('contract_type');
            $table->string('appointment_letter_type');
            $table->date('expiry_date')->nullable();
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
        Schema::dropIfExists('contracts');
    }
}
