<?php

namespace Database\Factories;

use App\Models\Shop;
use Illuminate\Database\Eloquent\Factories\Factory;

class ShopFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Shop::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'                     => $this->faker->company(),
            'photoUrl'                 => 'https://ui-avatars.com/api/?background=random',
            'bio'                      => $this->faker->sentences(),
            'phone'                    => $this->faker->phoneNumber(),
            'email'                    => $this->faker->email(),
            'shop_owner_id'            => $this->faker->numberBetween(1, 100),
        ];
    }
}
