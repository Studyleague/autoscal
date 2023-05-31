<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vehicle_details', function (Blueprint $table) {
            $table->id();
            $table->string('vehicle_state')->nullable();
            $table->string('vehicle_no')->nullable();
            $table->string('vehicle_make')->nullable();
            $table->string('vehicle_model')->nullable();
            $table->string('vehicle_color')->nullable();
            $table->string('veriant')->nullable();
            $table->string('mfg_year')->nullable();
            $table->string('reg_year')->nullable();
            $table->string('tax_validity')->nullable();
            $table->string('engine_cube_capacity')->nullable();
            $table->string('fuel_type')->nullable();
            $table->string('owner_serial_no')->nullable();
            $table->string('odometer_reading')->nullable();
            $table->string('special_comments')->nullable();
            $table->foreignId('order_id')->constrained();
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
        Schema::dropIfExists('vehicle_details');
    }
};
