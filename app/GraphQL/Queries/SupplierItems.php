<?php

namespace App\GraphQL\Queries;

use App\Models\SupplierItem;

class SupplierItems
{
    /**
     * @param  null  $_
     * @param  array<string, mixed>  $args
     */
    public function __invoke($_, array $args)
    {
        $items = SupplierItem::where('supplier_id', $args['supplier_id'])->get();

        $results = [];

        foreach ($items as $item) {
            $product = $item->product;
            //$product = Product::find($item['product_id']);
            array_push($results, ['unitsAvailable'=> $item['unitsAvailable'], 'id'=> $item['id'], 'supplyAt'=> $item['supplyAt'],  'product'=> $product]);
        }

        return $results;
    }
}
