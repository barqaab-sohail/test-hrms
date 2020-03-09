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
            $table->bigInteger('employee_id')->unsigned();
            $table->bigInteger('leave_type_id')->unsigned();
            $table->date('from');
            $table->date('to');
            $table->text('reason')->nullable();
            $table->string('address')->nullable();
            $table->string('contact_no')->nullable();
            $table->bigInteger('recommended_by')->unsigned();
            $table->bigInteger('approved_by')->unsigned();
            $table->string('recommended_remarks')->nullable();
            $table->string('approved_remarks')->nullable();
            $table->year('leave_status')->default(1)->comment('1 Pending, 2 Approved, 3 Rejected, 4 Cancel');
            $table->foreign('leave_type_id')->references('id')->on('leave_types');
            $table->foreign('employee_id')->references('id')->on('employees');
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
        Schema::dropIfExists('leave_requests');
    }
}
