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
        Schema::create('pets', function (Blueprint $table) {
            $table->id();
            $table->foreignId('main_cat_id');
            $table->foreignId('sub_cat_id');
            $table->foreignId('user_id');
            $table->string('name');
            $table->string('image_path');
            $table->string('video_path')->nullable();
            $table->string('breed');
            $table->string('birth_year');
            $table->string('color');
            $table->string('sex');
            $table->string('kernal_certificate')->nullable();
            $table->string('remark')->nullable();
            $table->integer('status')->default(0);
            $table->integer('flag')->default(0);
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
        Schema::dropIfExists('pets');
    }
};
