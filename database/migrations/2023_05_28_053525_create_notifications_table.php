<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('notifications', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('target')->unsigned();
            $table->bigInteger('createdyBy')->unsigned();
            $table->string('content');
            $table->integer('read');
            $table->timestamps();

            $table->foreign('target')
            ->references('id')
            ->on('users')
            ->onDelete('cascade');

            $table->foreign('createdyBy')
            ->references('id')
            ->on('users')
            ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('notifications');
    }
};
