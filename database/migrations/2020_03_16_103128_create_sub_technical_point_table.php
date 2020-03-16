<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSubTechnicalPointTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sub_technical_points', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->float('technical_points')->nullable();
            $table->bigInteger('sub_participant_id')->unsigned();
            $table->foreign('sub_participant_id')->references('id')->on('sub_participants')->onDelete('cascade');

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
        Schema::dropIfExists('sub_technical_points');
    }
}
