<?php

namespace App\GraphQL\Mutations;

use App\Models\CreditNote;
use App\Models\OrderItem;
use App\Models\SalesOrder;

class MakeSalesOrder
{
    /**
     * @param null $_
     * @param array<string, mixed> $args
     */
    public function __invoke($_, array $args)
    {
        // TODO implement the resolver

        $orderNum =  time();
        $orderItems = $args['order']['items'];


        //make a debit note if it exists
        if ($args['order']['credit_note'] != null) {
            $credit_note = $args['order']['credit_note'] + ['customer_id' => $args['order']['customer_id'],
                    "shop_id" => $args['order']['shop_id']];

            $credit_note = CreditNote::create($credit_note);
        }

        //now make the purchase order
        $salesOrder = SalesOrder::create([
            'amount' => $args['order']['amount'],
            'order_no' => $orderNum,
            'customer_id' => $args['order']['customer_id'],
            'shop_id' => $args['order']['shop_id'],
            'credit_note_id' => $credit_note->id,
        ]);

        //and insert the order items with the created purchase order d
        foreach ($orderItems as $key => $value) {
            $item = OrderItem::create($value + ["sales_order_id" => $salesOrder->id, 'customer_id' => $args['order']['customer_id'],
                    'shop_id' => $args['order']['shop_id'],]);
            $orderItems[$key] = $item;
        }

        return $salesOrder;

    }
}
