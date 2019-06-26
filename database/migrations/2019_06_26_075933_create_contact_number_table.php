<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateContactNumberTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contact_numbers', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('designation')->nullable();
            $table->string('mobile_1')->nullable();
            $table->string('mobile_2')->nullable();
            $table->string('mobile_3')->nullable();
            $table->string('office')->nullable();
            $table->string('fax')->nullable();
            $table->string('landline')->nullable();
            $table->string('email')->nullable();
            $table->string('address')->nullable();
            $table->text('remarks')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('contact_numbers');
    }
}
