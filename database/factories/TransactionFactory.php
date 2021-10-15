<?php

namespace Database\Factories;

use App\Models\Transaction;
use Illuminate\Database\Eloquent\Factories\Factory;

class TransactionFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Transaction::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'amount'                           => $this->faker->randomFloat(2),
            'comment'                          => $this->faker->randomElement(['purchase', 'sale', 'customer_refund', 'supplier_refund']),
            'supplier_id'                      => $this->faker->numberBetween(1, 40),
            'shop_id'                          => $this->faker->numberBetween(1, 100),
            'customer_id'                      => $this->faker->numberBetween(1, 40),
            'purchase_order_id'                => $this->faker->numberBetween(1, 100),
            'sales_order_id'                   => $this->faker->numberBetween(1, 100),
        ];
    }
}
