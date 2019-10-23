<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLeaveTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leave_types', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name')->unique();
            $table->tinyInteger('annual_quota')->unsigned();
            $table->boolean('isAccumulate')->default(false);
            $table->tinyInteger('accumulate_limit')->default(0);
            $table->tinyInteger('starting');
            $table->tinyInteger('ending');
            $table->boolean('isEncashment')->default(false);
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
        Schema::dropIfExists('leave_types');
    }
}
