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
        Schema::create('damages', function (Blueprint $table) {
            $table->id();
            $table->string('comment_1')->nullable();
            $table->string('comment_1_photo')->nullable();
            $table->string('comment_2')->nullable();
            $table->string('comment_2_photo')->nullable();
            $table->string('comment_3')->nullable();
            $table->string('comment_3_photo')->nullable();
            $table->string('comment_4')->nullable();
            $table->string('comment_4_photo')->nullable();
            $table->string('comment_5')->nullable();
            $table->string('comment_5_photo')->nullable();
            $table->string('comment_6')->nullable();
            $table->string('comment_6_photo')->nullable();
            $table->string('comment_7')->nullable();
            $table->string('comment_7_photo')->nullable();
            $table->string('comment_8')->nullable();
            $table->string('comment_8_photo')->nullable();
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
        Schema::dropIfExists('damages');
    }
};
