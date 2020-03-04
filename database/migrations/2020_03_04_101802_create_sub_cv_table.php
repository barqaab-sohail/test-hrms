<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSubCvTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sub_cvs', function (Blueprint $table) {
            $table->bigIncrements('id');
             $table->string('position');
            $table->bigInteger('cv_detail_id')->unsigned();
            $table->foreign('cv_detail_id')->references('id')->on('cv_details')->onDelete('cascade');
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
        Schema::dropIfExists('sub_cvs');
    }
}
