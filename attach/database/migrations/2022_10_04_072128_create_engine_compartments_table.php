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
        Schema::create('engine_compartments', function (Blueprint $table) {
            $table->id();
            $table->string('tapped_noise')->nullable();
            $table->string('engine_overheating')->nullable();
            $table->string('engine_oil_sludge')->nullable();
            $table->string('engine_oil_condition')->nullable();
            $table->string('coolent')->nullable();
            $table->string('timeing_side_noise')->nullable();
            $table->string('altmeter_condition')->nullable();
            $table->string('bettery_condition')->nullable();
            $table->string('ac_compressor')->nullable();
            $table->string('starter_motor_noise')->nullable();
            $table->string('air_fiter_assy')->nullable();
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
        Schema::dropIfExists('engine_compartments');
    }
};
