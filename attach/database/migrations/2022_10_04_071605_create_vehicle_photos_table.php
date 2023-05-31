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
        Schema::create('vehicle_photos', function (Blueprint $table) {
            $table->id();
            $table->string('front_view')->nullable();
            $table->string('front_glass')->nullable();
            $table->string('engine_compartment')->nullable();
            $table->string('roof')->nullable();
            $table->string('front_rhs_side_tringle_view')->nullable();
            $table->string('front_rhs_tyre')->nullable();
            $table->string('rhs_side_view')->nullable();
            $table->string('rhs_side_interior_view')->nullable();
            $table->string('rear_rhs_tyre')->nullable();
            $table->string('back_side_view')->nullable();
            $table->string('dicky_floor_view')->nullable();
            $table->string('rear_glass')->nullable();
            $table->string('spare_wheel_tyre')->nullable();
            $table->string('rear_lhs_side_triangle_view')->nullable();
            $table->string('rear_lhs_tyre')->nullable();
            $table->string('lhs_side_view')->nullable();
            $table->string('rear_interior_view')->nullable();
            $table->string('front_lhs_tyre')->nullable();
            $table->string('dashboard_view')->nullable();
            $table->string('odometer_view')->nullable();
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
        Schema::dropIfExists('vehicle_photos');
    }
};
