<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Http\Requests\StoreOrderRequest;
use App\Http\Requests\UpdateOrderRequest;

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
        return view('order.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreOrderRequest $request)
    {
        //
        Order::create($request->validated(
            'name',
            'email',
            'phone',
            'address',
            'product_id',
            'quantity',
            'total'
        ));
        return redirect()->route('admin.order.index');
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
