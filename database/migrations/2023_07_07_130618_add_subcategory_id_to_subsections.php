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
        Schema::table('sub_sections', function (Blueprint $table) {
            //
            $table->bigInteger('sub_category_id')->unsigned()->nullable();

            $table->foreign('sub_category_id')
            ->references('id')
            ->on('sub_categories')
            ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('sub_sections', function (Blueprint $table) {
            //
        });
    }
};
