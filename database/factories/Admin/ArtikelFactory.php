<?php

namespace Database\Factories\Admin;

use App\Models\Admin\Artikel;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class ArtikelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            //
            'title' => $this->faker->sentence(),
            'content' => $this->faker->paragraph(),
            'image' => 'images/artikel/KkmOWDlb5BLHQ6VTgf8ttlkbk6qyU0WMXNGvIWWQ.jpg',
            'slug' => $this->faker->slug(),
            'meta_deskripsi' => $this->faker->sentence(),
            'meta_keyword' => $this->faker->sentence(),
            'user_id' => 1,
        ];
    }
}
