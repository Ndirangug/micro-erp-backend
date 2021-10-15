<?php

namespace Database\Factories;

use App\Models\Brand;
use Illuminate\Database\Eloquent\Factories\Factory;

class BrandFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Brand::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'bio'      => $this->faker->paragraph(),
            'name'     => $this->faker->word(),
            'photoUrl' => 'https://ui-avatars.com/api/?background=random',
        ];
    }
}
