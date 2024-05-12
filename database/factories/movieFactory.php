<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Movie>
 */
class movieFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name'=>fake()->name(),
            'description'=>fake()->sentence(10),
            'rate'=>fake()->randomNumber(1),
            'director'=>fake()->name(),
            'production_date'=>fake()->date(),
            'duration'=>fake()->randomDigit(),
            'image'=>fake()->image(),
            'genre_id'=>\App\Models\Genre::factory(),
        ];
    }
}
