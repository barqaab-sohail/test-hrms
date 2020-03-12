<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSubmissionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('submissions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('project_name');
            $table->date('submission_date');
            $table->string('submission_time');
            $table->string('submission_address');
            $table->text('scope_of_services')->nullable();
            $table->text('scope_of_work')->nullable();
            $table->integer('total_marks')->nullable();
            $table->string('evaluation_ratio')->nullable();
            $table->string('comments')->nullable();


            $table->bigInteger('sub_type_id')->unsigned();
            $table->foreign('sub_type_id')->references('id')->on('sub_types')->onDelete('cascade');
            $table->bigInteger('sub_contract_type_id')->unsigned();
            $table->foreign('sub_contract_type_id')->references('id')->on('sub_contract_types')->onDelete('cascade');
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
        Schema::dropIfExists('submissions');
    }
}
