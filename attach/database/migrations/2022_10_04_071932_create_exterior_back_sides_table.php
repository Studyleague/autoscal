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
        Schema::create('exterior_back_sides', function (Blueprint $table) {
            $table->id();
            $table->string('dicky_door')->nullable();
            $table->string('dicky_door_photo')->nullable();
            $table->string('rear_glass')->nullable();
            $table->string('rear_glass_photo')->nullable();
            $table->string('dicky_floor_condition')->nullable();
            $table->string('dicky_floor_photo')->nullable();
            $table->string('spare_wheel_tyre_percentage')->nullable();
            $table->string('rear_bumper')->nullable();
            $table->string('spare_wheel_photo')->nullable();
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
        Schema::dropIfExists('exterior_back_sides');
    }
};
