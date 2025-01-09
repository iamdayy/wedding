<?php

namespace Database\Factories;

use App\Models\Produk;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Produk>
 */
class ProdukFactory extends Factory
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
            'judul' => $this->faker->sentence(),
            'kategori' => $this->faker->sentence(),
            'image' => 'images/produk/kSwECr1bcs6AIVvt6YCayqJoq1RK5DLVih6NViGA.jpg',
            'deskripsi' => $this->faker->paragraph(),
            'harga' => $this->faker->numberBetween(1000, 100000),
        ];
    }
}
