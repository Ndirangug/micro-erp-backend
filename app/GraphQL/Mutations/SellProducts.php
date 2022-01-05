<?php

namespace App\GraphQL\Mutations;

use App\GraphQL\Utils\MakeSale;
use App\GraphQL\Utils\SendReceipts;

class SellProducts
{
    /**
     * @param  null  $_
     * @param  array<string, mixed>  $args
     */
    public function __invoke($_, array $args)
    {
        $order = MakeSale::makeSalesOrder($args['order']);

        //if its cash
        $transaction = MakeSale::recordTransaction($args['transaction']);

        //if mpesa send to mpesa api

        // if send receipts, send them
        if ($args['sendEmail']) {
           SendReceipts::sendEmailReceipt($order, $transaction);
        }

        if ($args['sendSms']) {
            SendReceipts::sendSmsReceipt($order, $transaction);
        }


        return ['order'=> $order, 'transaction'=> $transaction, 'transactionStatus'=> 'COMPLETE'];
    }
}
