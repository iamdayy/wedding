<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'email',
        'phone',
        'alamat',
        'produk_id',
        'jumlah',
        'status',
    ];
    public function produk()
    {
        return $this->belongsTo(Produk::class);
    }
}
