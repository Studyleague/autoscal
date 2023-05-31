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
        Schema::create('exterior_rhs_sides', function (Blueprint $table) {
            $table->id();
            $table->string('rhs_side_appron')->nullable();
            $table->string('rhs_appron_photo')->nullable();
            $table->string('front_rhs_tyre_percentage')->nullable();
            $table->string('rhs_fender')->nullable();
            $table->string('rhs_tyre_fender_photo')->nullable();
            $table->string('a_piller')->nullable();
            $table->string('a_piller_photo')->nullable();
            $table->string('b_piller')->nullable();
            $table->string('b_piller_photo')->nullable();
            $table->string('front_rhs_window')->nullable();
            $table->string('front_rhs_door')->nullable();
            $table->string('front_rhs_photo')->nullable();
            $table->string('rear_rhs_door')->nullable();
            $table->string('rear_rhs_door_photo')->nullable();
            $table->string('rear_rhs_window')->nullable();
            $table->string('rear_running_board')->nullable();
            $table->string('rhs_window_photo')->nullable();
            $table->string('c_piller')->nullable();
            $table->string('c_piller_photo')->nullable();
            $table->string('rear_rhs_tyre_percentage')->nullable();
            $table->string('rear_quater_panel')->nullable();
            $table->string('rear_rhs_tyre_photo')->nullable();
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
        Schema::dropIfExists('exterior_rhs_sides');
    }
};
