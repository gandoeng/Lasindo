<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAddSocmedsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('add_socmeds', function (Blueprint $table) {
            $table->id();
            $table->longText('address');
            $table->string('phone', 15);
            $table->string('fax', 150);
            $table->string('email', 150);
            $table->string('wa', 15);
            $table->string('fb', 150)->nullable();
            $table->string('in', 150)->nullable();
            $table->string('tw', 150)->nullable();
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
        Schema::dropIfExists('add_socmeds');
    }
}
