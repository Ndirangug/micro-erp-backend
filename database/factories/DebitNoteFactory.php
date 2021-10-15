<?php

namespace Database\Factories;

use App\Models\DebitNote;
use Illuminate\Database\Eloquent\Factories\Factory;

class DebitNoteFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = DebitNote::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'amount'                => $this->faker->randomFloat(2),
            'deadline'              => $this->faker->dateTime(date_add(date_interval_create_from_date_string('40 days'), get_date())),
            'supplier_id'           => $this->faker->numberBetween(1, 100),
            'shop_id'               => $this->faker->numberBetween(1, 100),
            'purchase_order_id'     => $this->faker->numberBetween(1, 100),
        ];
    }
}
