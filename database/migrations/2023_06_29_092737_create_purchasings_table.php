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
        Schema::create('purchasings', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('submittals_id')->unsigned();

            $table->string('area');
            $table->string('order_status');
            $table->integer('net_qty');
            $table->integer('waste');
            $table->string('attic_stock');
            $table->integer('gross_qty');
            $table->string('remaining');
            $table->string('order_qty');
            $table->bigInteger('order_number');
            $table->string('payment_status');
            $table->string('lead_time');
            $table->string('notes');


            $table->bigInteger('workspace_id')->unsigned()->nullable();
            $table->bigInteger('user_id')->unsigned()->nullable();
            $table->bigInteger('project_id')->unsigned()->nullable();
            $table->timestamps();


            $table->foreign('submittals_id')
            ->references('id')
            ->on('submittals')
            ->onDelete('cascade');

            $table->foreign('workspace_id')
            ->references('id')
            ->on('workspaces')
            ->onDelete('cascade');
            $table->foreign('user_id')
            ->references('id')
            ->on('users')
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
        Schema::dropIfExists('purchasings');
    }
};
