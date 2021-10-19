<?php

namespace App\GraphQL\Queries;

use App\Models\User;

class Customer
{
    /**
     * @param  null  $_
     * @param  array<string, mixed>  $args
     */
    public function __invoke($_, array $args)
    {
        $user = User::where('email', $args['email'])->first();
        $customer = $user->customer;

        //return array_merge($user, $customer);
        return $user->toArray() + $customer->toArray();
    }
}
