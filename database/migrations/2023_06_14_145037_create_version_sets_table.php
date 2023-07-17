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
        Schema::create('version_sets', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->date('due_date');
            $table->bigInteger('createdyBy')->unsigned();
            $table->bigInteger('workspace_id')->unsigned();
            $table->bigInteger('project_id')->unsigned();
            $table->timestamps();

            $table->foreign('createdyBy')
            ->references('id')
            ->on('users')
            ->onDelete('cascade');
            $table->foreign('workspace_id')
            ->references('id')
            ->on('workspaces')
            ->onDelete('cascade');
            $table->foreign('project_id')
            ->references('id')
            ->on('projects')
            ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('version_sets');
    }
};
