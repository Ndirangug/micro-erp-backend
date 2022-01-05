<?php

namespace App\GraphQL\Utils;

use App\Models\CreditNote;
use App\Models\OrderItem;
use App\Models\SalesOrder;
use App\Models\InventoryItem;
use App\Models\Transaction;


class MakeSale
{
    public static function makeSalesOrder($orderDetails)
    {
        $orderNum = time();
        $orderItems = $orderDetails['items'];

        //Make a sales order
        $salesOrder = SalesOrder::create([
            'amount'         => $orderDetails['amount'],
            'order_no'       => $orderNum,
            'customer_id'    => $orderDetails['customer_id'],
            'shop_id'        => $orderDetails['shop_id'],
            // 'credit_note_id' => $credit_note->id,
        ]);

        //make a credit note if it exists
        if (array_key_exists('credit_note', $orderDetails)) {
            $credit_note = $orderDetails['credit_note'] + ['customer_id'  => $orderDetails['customer_id'],
                'shop_id'                                                 => $orderDetails['shop_id']];

            $credit_note = new CreditNote($credit_note);
            $salesOrder->creditNote()->save($credit_note);
        }

        //and insert the order items with the created purchase order d
        foreach ($orderItems as $key => $value) {
            //cretae an order item from inventory item
            $item = OrderItem::create($value + ['sales_order_id' => $salesOrder->id, 'customer_id' => $orderDetails['customer_id'],
                'shop_id'                                        => $orderDetails['shop_id'], ]);
            $orderItems[$key] = $item;

            //deduct from inventory item stock
            $inventoryItem = InventoryItem::find($value['inventory_item_id']);
            $inventoryItem->currentStock = $inventoryItem->currentStock - $value['quantity'];
            $inventoryItem->save();
        }

        return $salesOrder;
    }

    public static function recordTransaction($transaction)
    {
        return Transaction::create($transaction);
    }
}
