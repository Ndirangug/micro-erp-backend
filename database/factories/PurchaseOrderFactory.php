<?php

namespace Database\Factories;

use App\Models\PurchaseOrder;
use Illuminate\Database\Eloquent\Factories\Factory;

class PurchaseOrderFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = PurchaseOrder::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'amount'                      => $this->faker->randomFloat(2),
            'supplier_id'                 => $this->faker->numberBetween(1, 40),
            'shop_id'                     => $this->faker->numberBetween(1, 100),
            'debit_note_id'               => $this->faker->unique()->numberBetween(2, 100),
        ];
    }
}
