<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePurchaseOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('purchase_orders', function (Blueprint $table) {
            $table->id();
            $table->double('amount');
            $table->integer('supplier_id')->unsigned();
            $table->integer('shop_id')->unsigned();
            $table->integer('debit_note_id')->unsigned()->unique();
            $table->timestamps();
            $table->foreign('supplier_id')->references('id')->on('suppliers')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('debit_note_id')->references('id')->on('debit_notes')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('purchase_orders');
    }
}
