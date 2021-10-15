<?php

namespace Database\Factories;

use App\Models\ShopOwner;
use Illuminate\Database\Eloquent\Factories\Factory;

class ShopOwnerFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = ShopOwner::class;

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
            'user_id'            => $this->faker->unique()->numberBetween(1, 100),
        ];
    }
}
