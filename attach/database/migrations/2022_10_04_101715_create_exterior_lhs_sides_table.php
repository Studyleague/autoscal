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
        Schema::create('exterior_lhs_sides', function (Blueprint $table) {
            $table->id();
            $table->string('lhs_side_appron')->nullable();
            $table->string('lhs_appron_photo')->nullable();
            $table->string('front_lhs_tyre_percentage')->nullable();
            $table->string('lhs_fender')->nullable();
            $table->string('lhs_tyre_fender_photo')->nullable();
            $table->string('a_piller')->nullable();
            $table->string('a_piller_photo')->nullable();
            $table->string('b_piller')->nullable();
            $table->string('b_piller_photo')->nullable();
            $table->string('front_lhs_window')->nullable();
            $table->string('front_lhs_door')->nullable();
            $table->string('front_lhs_photo')->nullable();
            $table->string('rear_lhs_door')->nullable();
            $table->string('rear_lhs_door_photo')->nullable();
            $table->string('rear_lhs_window')->nullable();
            $table->string('rear_running_board')->nullable();
            $table->string('lhs_window_photo')->nullable();
            $table->string('c_piller')->nullable();
            $table->string('c_piller_photo')->nullable();
            $table->string('rear_lhs_tyre_percentage')->nullable();
            $table->string('rear_quater_panel')->nullable();
            $table->string('rear_lhs_tyre_photo')->nullable();
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
        Schema::dropIfExists('exterior_lhs_sides');
    }
};
