<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSubRfpResultTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sub_rfp_results', function (Blueprint $table) {
            $table->bigIncrements('id');
             $table->float('technical_score')->nullable();
            $table->float('financial_score')->nullable();
            $table->double('financial_cost')->nullable();
            $table->float('overall_score')->nullable();
            $table->string('ranking')->nullable();
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
        Schema::dropIfExists('sub_rfp_results');
    }
}
