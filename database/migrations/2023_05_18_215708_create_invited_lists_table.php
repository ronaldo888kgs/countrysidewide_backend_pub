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
        Schema::create('invited_lists', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('inviter')->unsigned();
            $table->bigInteger('invitee')->unsigned();
            $table->timestamps();

            $table->foreign('inviter')
            ->references('id')
            ->on('users')
            ->onDelete('cascade');

            $table->foreign('invitee')
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
        Schema::dropIfExists('invited_lists');
    }
};
