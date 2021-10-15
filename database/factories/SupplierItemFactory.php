<?php

namespace Database\Factories;

use App\Models\SupplierItem;
use Illuminate\Database\Eloquent\Factories\Factory;

class SupplierItemFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = SupplierItem::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'unitsAvailable'            => $this->faker->numberBetween(101, 1000),
            'supplyAt'                  => $this->faker->randomFloat(2),
            'supplier_id'               => $this->faker->numberBetween(1, 100),
            'product_id'                => $this->faker->numberBetween(1, 100),
        ];
    }
}
