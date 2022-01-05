<?php

namespace App\GraphQL\Mutations;

use App\GraphQL\Utils\MakeSale;

class MakeSalesOrder
{
    /**
     * @param null $_
     * @param array<string, mixed> $args
     */
    public function __invoke($_, array $args)
    {
        return MakeSale::makeSalesOrder($args['order']);
    }
}
