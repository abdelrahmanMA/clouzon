<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

use Illuminate\Support\Str;

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
        $price = $this->faker->randomFloat($nbMaxDecimals = 2, $min = 0.1, $max = 10);
        $name = $this->faker->words($nb = rand(1, 3), $asText = true);
        return [
            'name' => $name,
            'slug' => Str::slug($name),
            'description' => $this->faker->text(),
            'quantity' => $this->faker->numberBetween($min = 1, $max =1000),
            'weight' => $this->faker->randomFloat($nbMaxDecimals = 2, $min = 0.1, $max = 10),
            'price' => $price,
            'sale_price' => $this->faker->randomFloat($nbMaxDecimals = 2, $min = 0.1, $max = 1) * $price,
        ];
    }
}
