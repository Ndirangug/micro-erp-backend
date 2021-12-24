<?php

namespace App\GraphQL\Queries;

use App\Models\InventoryItem;
use App\Models\Product;
use Illuminate\Support\Facades\Log;

class InventoryItems
{
    /**
     * @param  null  $_
     * @param  array<string, mixed>  $args
     */
    public function __invoke($_, array $args)
    {
        $items = InventoryItem::where('shop_id', $args['shop_id'])->get();

        $results = [];

        foreach ($items as $item) {
            $product = $item->product;
            //$product = Product::find($item['product_id']);
            array_push($results, ['currentStock'=> $item['currentStock'], 'id'=> $item['id'], 'sellPrice'=> $item['sellAt'], 'buyPrice'=> $item['boughtAt'], 'product'=> $product]);
        }

        return $results;
    }
}
