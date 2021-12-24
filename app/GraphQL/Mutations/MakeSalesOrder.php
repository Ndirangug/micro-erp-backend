<?php

namespace App\GraphQL\Mutations;

use App\Models\CreditNote;
use App\Models\OrderItem;
use App\Models\SalesOrder;
use App\Models\InventoryItem;

class MakeSalesOrder
{
    /**
     * @param null $_
     * @param array<string, mixed> $args
     */
    public function __invoke($_, array $args)
    {
        // TODO implement the resolver

        $orderNum = time();
        $orderItems = $args['order']['items'];

        //Make a sales order
        $salesOrder = SalesOrder::create([
            'amount'         => $args['order']['amount'],
            'order_no'       => $orderNum,
            'customer_id'    => $args['order']['customer_id'],
            'shop_id'        => $args['order']['shop_id'],
            // 'credit_note_id' => $credit_note->id,
        ]);

        //make a credit note if it exists
        if (array_key_exists('credit_note', $args['order'])) {
            $credit_note = $args['order']['credit_note'] + ['customer_id' => $args['order']['customer_id'],
                'shop_id'                                                 => $args['order']['shop_id']];

            $credit_note = new CreditNote($credit_note);
            $salesOrder->creditNote()->save($credit_note);
        }

        //and insert the order items with the created purchase order d
        foreach ($orderItems as $key => $value) {
            //cretae an order item from inventory item
            $item = OrderItem::create($value + ['sales_order_id' => $salesOrder->id, 'customer_id' => $args['order']['customer_id'],
                'shop_id'                                        => $args['order']['shop_id'], ]);
            $orderItems[$key] = $item;

            //deduct from inventory item stock
            $inventoryItem = InventoryItem::find($value['inventory_item_id']);
            $inventoryItem->currentStock = $inventoryItem->currentStock - $value['quantity'];
            $inventoryItem->save();
        }

        return $salesOrder;
    }
}
