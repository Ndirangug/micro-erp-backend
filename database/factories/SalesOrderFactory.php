<?php

namespace Database\Factories;

use App\Models\SalesOrder;
use Illuminate\Database\Eloquent\Factories\Factory;

class SalesOrderFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = SalesOrder::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'amount'                       => $this->faker->randomFloat(2),
            'customer_id'                  => $this->faker->numberBetween(1, 40),
            'shop_id'                      => $this->faker->numberBetween(1, 100),
            'credit_note_id'               => $this->faker->unique()->numberBetween(1, 100),
        ];
    }
}
