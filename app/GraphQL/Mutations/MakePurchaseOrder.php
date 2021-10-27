<?php

namespace App\GraphQL\Mutations;

use App\Models\DebitNote;
use App\Models\OrderItem;
use App\Models\PurchaseOrder;

class MakePurchaseOrder
{
    /**
     * @param null $_
     * @param array<string, mixed> $args
     */
    public function __invoke($_, array $args)
    {
        $orderNum =  time();
        $orderItems = $args['order']['items'];


        //make a debit note if it exists
        if ($args['order']['debit_note'] != null) {
            $debit_note = $args['order']['debit_note'] + ['supplier_id' => $args['order']['supplier_id'],
                    "shop_id" => $args['order']['shop_id']];

            $debit_note = DebitNote::create($debit_note);
        }

        //now make the purchase order
        $purchaseOrder = PurchaseOrder::create([
            'amount' => $args['order']['amount'],
            'order_no' => $orderNum,
            'supplier_id' => $args['order']['supplier_id'],
            'shop_id' => $args['order']['shop_id'],
            'debit_note_id' => $debit_note->id,
        ]);

        //and insert the order items with the created purchase order d
        foreach ($orderItems as $key => $value) {
            $item = OrderItem::create($value + ["purchase_order_id" => $purchaseOrder->id, 'supplier_id' => $args['order']['supplier_id'],
                    'shop_id' => $args['order']['shop_id'],]);
            $orderItems[$key] = $item;
        }

        return $purchaseOrder;
    }
}
