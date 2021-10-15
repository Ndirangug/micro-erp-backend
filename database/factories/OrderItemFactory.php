<?php

namespace Database\Factories;

use App\Models\OrderItem;
use Illuminate\Database\Eloquent\Factories\Factory;

class OrderItemFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = OrderItem::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'quantity'                 => $this->faker->numberBetween(1, 10),
            'supplier_item_id'         => $this->faker->numberBetween(1, 100),
            'inventory_item_id'        => $this->faker->numberBetween(1, 100),
            'sales_order_id'           => $this->faker->numberBetween(1, 100),
            'purchase_order_id'        => $this->faker->numberBetween(1, 100),
        ];
    }
}
