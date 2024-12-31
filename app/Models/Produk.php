<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produk extends Model
{
    use HasFactory;

    protected $fillable = [
        'judul',
        'kategori',
        'image',
        'deskripsi',
        'harga',

    ];
    public function getPictureAttribute()
    {
        return asset('storage/' . $this->image);
    }
    public function orders()
    {
        return $this->hasMany(Order::class);
    }
}
