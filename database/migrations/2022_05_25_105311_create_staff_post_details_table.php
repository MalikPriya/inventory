<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStaffPostDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('staff_allowance', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('staff_id');
            $table->string('designation', 100)->nullable();
            $table->double('salary', 10, 2)->nullable()->default(0.0);
            $table->double('house_rent', 10, 2)->nullable()->default(0.0);
            $table->double('convenience', 10, 2)->nullable()->default(0.0);
            $table->double('dearness', 10, 2)->nullable()->default(0.0);
            $table->double('medical', 10, 2)->nullable()->default(0.0);
            $table->double('overtime', 10, 2)->nullable()->default(0.0);
            $table->double('city_compensatory', 10, 2)->nullable()->default(0.0);
            $table->double('project', 10, 2)->nullable()->default(0.0);
            $table->double('food', 10, 2)->nullable()->default(0.0);
            $table->double('special', 10, 2)->nullable()->default(0.0);

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
        Schema::dropIfExists('staff_post_details');
    }
}
