<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCvPhone extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cv_phones', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('phone');
            $table->bigInteger('cv_contact_id')->unsigned();
            $table->foreign('cv_contact_id')->references('id')->on('cv_contacts')->onDelete('cascade');
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
        Schema::dropIfExists('cv_phones');
    }
}
