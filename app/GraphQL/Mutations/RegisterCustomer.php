<?php

namespace App\GraphQL\Mutations;

use App\Models\User;
use App\Models\Customer;

class RegisterCustomer
{
    /**
     * @param  null  $_
     * @param  array<string, mixed>  $args
     */
    public function __invoke($_, array $args)
    {
        $user;
        if (array_key_exists('user_id', $args['customer'])) {
            $user = User::find($args['customer']['user_id']);
        } else {
            $user = User::create([
                'email'    => $args['customer']['email'],
                'phone'    => $args['customer']['phone'],
                'password' => $args['customer']['password'],
            ]);
        }

        $customer = new Customer([
            'firstName'    => $args['customer']['firstName'],
            'lastName'     => $args['customer']['lastName'],
            'photoUrl'     => $args['customer']['photoUrl'],
        ]);

        $user->customer()->save($customer);

        return $user->toArray() + $user->customer->toArray();
    }
}
