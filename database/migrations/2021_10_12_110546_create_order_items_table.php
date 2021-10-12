<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_items', function (Blueprint $table) {
            $table->id();
            $table->integer('quantity');
            $table->integer('supplier_item_id')->unsigned();
            $table->integer('inventory_item_id')->unsigned();
            $table->integer('sales_order_id')->unsigned();
            $table->integer('purchase_order_id')->unsigned();
            $table->timestamps();
            $table->foreign('supplier_item_id')->references('id')->on('supplier_items')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('sales_order_id')->references('id')->on('sales_orders')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('purchase_order_id')->references('id')->on('purchase_orders')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('inventory_item_id')->references('id')->on('inventory_items')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('order_items');
    }
}
