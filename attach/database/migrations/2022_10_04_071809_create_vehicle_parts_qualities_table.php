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
        Schema::create('vehicle_parts_qualities', function (Blueprint $table) {
            $table->id();
            $table->string('bonnet')->nullable();
            $table->string('bonnet_photo')->nullable();
            $table->string('front_glass')->nullable();
            $table->string('front_glass_photo')->nullable();
            $table->string('roof')->nullable();
            $table->string('roof_photo')->nullable();
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
        Schema::dropIfExists('vehicle_parts_qualities');
    }
};
