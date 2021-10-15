<?php

namespace Database\Factories;

use App\Models\CreditNote;
use Illuminate\Database\Eloquent\Factories\Factory;

class CreditNoteFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = CreditNote::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'amount'             => $this->faker->randomFloat(2),
            'deadline'           => $this->faker->dateTime(date_add(date_create(), date_interval_create_from_date_string('40 days'))),
            'customer_id'        => $this->faker->numberBetween(1, 40),
            'shop_id'            => $this->faker->numberBetween(1, 100),
        ];
    }
}
