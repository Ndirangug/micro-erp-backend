<?php

namespace App\GraphQL\Mutations;

use App\Models\User;
use App\Models\Product;

class CreateProducts
{
    /**
     * @param  null  $_
     * @param  array<string, mixed>  $args
     */
    public function __invoke($_, array $args)
    {
        $products = [];
        foreach ($args['products'] as  $product) {
            $result = Product::create($product);
            array_push($products, $result);
        }
        return $products;
    }
}
