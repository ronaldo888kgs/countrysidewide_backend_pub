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
        Schema::create('sheets', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('title')->nullable();
            $table->string('pdf_url')->nullable();
            $table->string('tag')->nullable();
            $table->bigInteger('version_set_id')->unsigned();
            $table->bigInteger('project_id')->unsigned();
            $table->bigInteger('workspace_id')->unsigned();
            $table->bigInteger('created_by')->unsigned();
            
            
            $table->timestamps();

            
            $table->foreign('version_set_id')
            ->references('id')
            ->on('version_sets')
            ->onDelete('cascade');
            $table->foreign('project_id')
            ->references('id')
            ->on('projects')
            ->onDelete('cascade');
            $table->foreign('workspace_id')
            ->references('id')
            ->on('workspaces')
            ->onDelete('cascade');
            $table->foreign('created_by')
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
        Schema::dropIfExists('sheets');
    }
};
