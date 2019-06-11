<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOtherInformationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('other_informations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('employee_id')->unsigned();
            $table->string('blood_group')->nullable();
            $table->string('driving_licence')->nullable();
            $table->date('licence_expiry')->nullable();
            $table->string('disability')->nullable();
            $table->string('passport_no')->nullable();
            $table->date('passport_expiry')->nullable();
            $table->string('domicile')->nullable();
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
        Schema::dropIfExists('other_informations');
    }
}
