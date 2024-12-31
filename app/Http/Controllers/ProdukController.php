<?php

namespace App\Http\Controllers;

use App\Models\Produk;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProdukController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.produk.index', [
            'produk' => Produk::paginate(10),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.produk.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $produk = Produk::create([
            'judul' => $request->judul,
            'deskripsi' => $request->deskripsi,
            'image' => $request->file('image')->store('images/produk', 'public'),
            'kategori'  => $request->kategori,
            'harga' => $request->harga,

        ]);

        return redirect()->route('admin.produk.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Produk $produk)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Produk $produk)
    {
        return view('admin.produk.edit', [
            'produk' => $produk
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Produk $produk)
    {
        $produk->update([
            'judul' => $request->judul,
            'deskripsi' => $request->deskripsi,
            'image' => $request->file('image')->store('images/produk', 'public'),
            'kategori'  => $request->kategori,
        ]);

        return redirect()->route('admin.produk.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Produk $produk)
    {
        Storage::delete($produk->image);
        $produk->delete();

        return redirect()->route('admin.produk.index');
    }
}
