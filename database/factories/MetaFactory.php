<?php

namespace Database\Factories;

use App\Models\Meta;
use Illuminate\Database\Eloquent\Factories\Factory;

class MetaFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Meta::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'key'                                          => $this->faker->word,
            'value'                                        => $this->faker->word,
            'for_type'                                     => '',
            'user_id'                                      => $this->faker->optional()->numberBetween(1, 100),
            'shop_id'                                      => $this->faker->optional()->numberBetween(1, 100),
            'customer_id'                                  => $this->faker->optional()->numberBetween(1, 40),
            'shop_owner_id'                                => $this->faker->optional()->numberBetween(1, 40),
            'supplier_id'                                  => $this->faker->optional()->numberBetween(1, 40),
            'product_id'                                   => $this->faker->optional()->numberBetween(1, 100),
            'brand_id'                                     => $this->faker->optional()->numberBetween(1, 100),
            'inventory_item_id'                            => $this->faker->optional()->numberBetween(1, 100),
            'supplier_item_id'                             => $this->faker->optional()->numberBetween(1, 100),
            'purchase_order_id'                            => $this->faker->optional()->numberBetween(1, 100),
            'sales_order_id'                               => $this->faker->optional()->numberBetween(1, 100),
            'credit_note_id'                               => $this->faker->optional()->numberBetween(1, 100),
            'debit_note_id'                                => $this->faker->optional()->numberBetween(1, 100),
            'transaction_id'                               => $this->faker->optional()->numberBetween(50, 149),
        ];
    }
}
