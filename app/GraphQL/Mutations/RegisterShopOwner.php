<?php

namespace App\GraphQL\Mutations;

use App\Models\User;
use App\Models\ShopOwner;

class RegisterShopOwner
{
    /**
     * @param  null  $_
     * @param  array<string, mixed>  $args
     */
    public function __invoke($_, array $args)
    {
        $user;
        if (array_key_exists('user_id', $args['shopOwner'])) {
            $user = User::find($args['shopOwner']['user_id']);
        } else {
            $user = User::create([
                'email'    => $args['shopOwner']['email'],
                'phone'    => $args['shopOwner']['phone'],
                'password' => $args['shopOwner']['password'],
            ]);
        }

        $shopOwner = new shopOwner([
            'firstName'    => $args['shopOwner']['firstName'],
            'lastName'     => $args['shopOwner']['lastName'],
            'photoUrl'     => $args['shopOwner']['photoUrl'],
        ]);

        $user->shopOwner()->save($shopOwner);

        return $user->toArray() + $user->shopOwner->toArray();
    }
}
