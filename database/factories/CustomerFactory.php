<?php

namespace Database\Factories;

use App\Models\Customer;
use Illuminate\Database\Eloquent\Factories\Factory;

class CustomerFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Customer::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'firstName'          => $this->faker->firstName(),
            'lastName'           => $this->faker->firstName(),
            'photoUrl'           => 'https://ui-avatars.com/api/?background=random',
            'user_id'            => $this->faker->unique()->numberBetween(1, 120),
        ];
    }
}
