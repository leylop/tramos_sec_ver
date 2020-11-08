<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('petition_id');  
            $table->unsignedInteger('operation_id');            
            $table->foreign('operation_id')->references('id')->on('operations');                
            $table->timestamps();
            $table->string('origin');  
            $table->unsignedInteger('corresponsal_id');            
            $table->foreign('corresponsal_id')->references('id')->on('corresponsales');
            $table->unsignedInteger('canal_id');            
            $table->foreign('canal_id')->references('id')->on('canales'); 
            $table->string('status');   
            $table->unsignedInteger('destination_id');
            $table->foreign('destination_id')->references('id')->on('destinos');
           
             
               
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('transactions');
    }
}