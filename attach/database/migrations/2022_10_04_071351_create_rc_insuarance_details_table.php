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
        Schema::create('rc_insuarance_details', function (Blueprint $table) {
            $table->id();
            $table->string('rc_type')->nullable();
            $table->string('rc_photo')->nullable();
            $table->string('zero_dep_insuarance')->nullable();
            $table->string('insuarance_photo')->nullable();
            $table->string('expiry_date')->nullable();
            $table->string('exiry_photo')->nullable();
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
        Schema::dropIfExists('rc_insuarance_details');
    }
};
