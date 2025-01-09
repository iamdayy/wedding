<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Produk;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $orders = Order::paginate(10);
        return view('admin.order.index', compact('orders'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        $produks = Produk::all();
        return view('admin.order.create', compact('produks'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        Order::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'alamat' => $request->alamat,
            'produk_id' => $request->produk_id,
            'jumlah' => $request->jumlah,
            'total' => $request->total,
            'status' => $request->status,
        ]);
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Order $order)
    {
        //
        $order = Order::find($order);
        $order->delete();
        return redirect()->route('admin.order.index');
    }
}
