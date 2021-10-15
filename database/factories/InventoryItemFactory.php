<?php

namespace Database\Factories;

use App\Models\InventoryItem;
use Illuminate\Database\Eloquent\Factories\Factory;

class InventoryItemFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = InventoryItem::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'initialStock'        => $this->faker->numberBetween(101, 1000),
            'currentStock'        => $this->faker->numberBetween(2, 100),
            'boughtAt'            => $this->faker->randomFloat(2),
            'sellAt'              => $this->faker->randomFloat(2),
            'shop_id'             => $this->faker->numberBetween(1, 100),
            'product_id'          => $this->faker->numberBetween(1, 100),
        ];
    }
}
