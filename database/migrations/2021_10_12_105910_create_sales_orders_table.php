<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSalesOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sales_orders', function (Blueprint $table) {
            $table->id();
            $table->double('amount');
            $table->string("order_no")->unique();
            $table->integer('customer_id')->unsigned();
            $table->integer('shop_id')->unsigned();
            $table->integer('credit_note_id')->unsigned()->unique();
            $table->timestamps();
            $table->foreign('customer_id')->references('id')->on('customers')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('credit_note_id')->references('id')->on('credit_notes')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('shop_id')->references('id')->on('shops')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sales_orders');
    }
}
