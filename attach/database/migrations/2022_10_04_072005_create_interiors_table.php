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
        Schema::create('interiors', function (Blueprint $table) {
            $table->id();
            $table->string('airbag')->nullable();
            $table->string('abs')->nullable();
            $table->string('music_system')->nullable();
            $table->string('speaker')->nullable();
            $table->string('steering_wheel_condition')->nullable();
            $table->string('steering_wheel_audio_control_button')->nullable();
            $table->string('auto_ac_condition')->nullable();
            $table->string('ac_flow')->nullable();
            $table->string('ac_blower_moto_condition')->nullable();
            $table->string('ac_direction_mode')->nullable();
            $table->string('ac_heater')->nullable();
            $table->string('glow_box')->nullable();
            $table->string('gear_lever_knob')->nullable();
            $table->string('power_window')->nullable();
            $table->string('rhs_side_seat_condition')->nullable();
            $table->string('lhs_side_seat_condition')->nullable();
            $table->string('rear_seat_condition')->nullable();
            $table->string('all_seat_cover_available')->nullable();
            $table->string('all_mats_available')->nullable();
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
        Schema::dropIfExists('interiors');
    }
};
