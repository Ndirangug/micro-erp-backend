<?php

namespace App\GraphQL\Mutations;

use App\Models\User;
use App\Models\Supplier;

class RegisterSupplier
{
    /**
     * @param  null  $_
     * @param  array<string, mixed>  $args
     */
    public function __invoke($_, array $args)
    {
        $user;
        if (array_key_exists('user_id', $args['supplier'])) {
            $user = User::find($args['supplier']['user_id']);
        } else {
            $user = User::create([
                'email'    => $args['supplier']['email'],
                'phone'    => $args['supplier']['phone'],
                'password' => $args['supplier']['password'],
            ]);
        }

        $supplier = new supplier([
            'name'         => $args['supplier']['name'],
            'photoUrl'     => $args['supplier']['photoUrl'],
        ]);

        $user->supplier()->save($supplier);

        return $user->toArray() + $user->supplier->toArray();
    }
}
