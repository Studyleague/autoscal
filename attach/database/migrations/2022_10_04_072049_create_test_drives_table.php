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
        Schema::create('test_drives', function (Blueprint $table) {
            $table->id();
            $table->string('front_suspension_noise')->nullable();
            $table->string('axie_noise')->nullable();
            $table->string('rear_suspension_noise')->nullable();
            $table->string('clutch_condition')->nullable();
            $table->string('automatic_gear_box')->nullable();
            $table->string('gear_box')->nullable();
            $table->string('gear_box_noise')->nullable();
            $table->string('gear_shifting')->nullable();
            $table->string('w_a')->nullable();
            $table->string('steering_noise')->nullable();
            $table->string('steering_column_noise')->nullable();
            $table->string('speedometer_knob')->nullable();
            $table->string('odometer_reading')->nullable();
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
        Schema::dropIfExists('test_drives');
    }
};
