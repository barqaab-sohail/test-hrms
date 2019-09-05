<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLeaveRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('leave_requests', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('leave_type_id')->unsigned();
            $table->bigInteger('employee_id')->unsigned();
            $table->date('from');
            $table->date('to');
            $table->string('reason');
            $table->string('address');
            $table->string('contact_no');
            $table->tinyInteger('approval_status')->default(0);
            $table->bigInteger('recommended_by')->nullable();
            $table->bigInteger('approved_by');
            $table->string('recommendation_remarks')->nullable();
            $table->string('approval_remarks')->nullable();
            $table->timestamps();
            $table->foreign('leave_type_id')->references('id')->on('leave_types');
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
        Schema::dropIfExists('leave_requests');
    }
}
