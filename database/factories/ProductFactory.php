<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title'                 => $this->faker->sentence(2),
            'summary'               => $this->faker->sentence(3),
            'barcode'               => $this->faker->uuid(),
            'description'           => $this->faker->sentence(),
            'mainImage'             => 'https://ui-avatars.com/api/?background=random',
            'brand_id'              => $this->faker->numberBetween(1, 100),
        ];
    }
}
