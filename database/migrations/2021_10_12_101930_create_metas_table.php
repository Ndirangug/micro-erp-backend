<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMetasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('metas', function (Blueprint $table) {
            $table->id();
            $table->string('key');
            $table->string('value');
            $table->string('for_type');
            $table->integer('user_id')->unsigned()->nullable();
            $table->integer('shop_owner_id')->unsigned()->nullable();
            $table->integer('customer_id')->unsigned()->nullable();
            $table->integer('supplier_id')->unsigned()->nullable();
            $table->integer('shop_id')->unsigned()->nullable();
            $table->integer('product_id')->unsigned()->nullable();
            $table->integer('brand_id')->unsigned()->nullable();
            $table->integer('inventory_item_id')->unsigned()->nullable();
            $table->integer('supplier_item_id')->unsigned()->nullable();
            $table->integer('purchase_order_id')->unsigned()->nullable();
            $table->integer('sales_order_id')->unsigned()->nullable();
            $table->integer('credit_note_id')->unsigned()->nullable();
            $table->integer('debit_note_id')->unsigned()->nullable();
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
        Schema::dropIfExists('metas');
    }
}
