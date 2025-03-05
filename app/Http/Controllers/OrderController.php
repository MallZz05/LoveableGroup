<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCheckBookingRequest;
use App\Http\Requests\StoreCustomerDataRequest;
use App\Http\Requests\StoreOrderRequest;
use App\Http\Requests\StorePaymentRequest;
use App\Models\ProductTransaction;
use App\Models\Book;
use App\Services\OrderService;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    //

    protected $orderService;


    public function __construct(OrderService $orderService)
    {
        $this->orderService = $orderService;
    }

    public function saveOrder(StoreOrderRequest $request, Book $book)
    {
        $validated = $request->validated();

        $validated['book_id'] = $book->id; // 2 3 4

        $this->orderService->beginOrder($validated);

        return redirect()->route('front.booking', $book->slug);
    }

    public function booking()
    {
        $data = $this->orderService->getOrderDetails();
        // dd($data);
        return view('order.order', $data);
    }

    public function customerData()
    {
        $data = $this->orderService->getOrderDetails();
        return view('order.customer_data', $data);
    }

    public function saveCustomerData(StoreCustomerDataRequest $request)
    {
        $validated = $request->validated();
        $this->orderService->updateCustomerData($validated);

        return redirect()->route('front.payment');
    }

    public function payment()
    {
        $data = $this->orderService->getOrderDetails();
        // dd($data);
        return view('order.payment', $data);
    }

    // public function paymentConfirm(StorePaymentRequest $request)
    // {
    //     $validated = $request->validated();
    //     $productTransactionId = $this->orderService->paymentConfirm($validated);

    //     if ($productTransactionId) { // 2312
    //         return redirect()->route('front.order_finished', $productTransactionId);
    //     }

    //     return redirect()->route('front.index')->withErrors(['error' => $result['error']]);
    //     // return redirect()->route('front.index')->withErrors(['error' => 'Payment failed. Please try again.']);
    // }

    public function paymentConfirm(StorePaymentRequest $request)
    {
        try {
            $validated = $request->validated();
            $productTransactionId = $this->orderService->paymentConfirm($validated);

            if ($productTransactionId) {
                return redirect()->route('front.order_finished', $productTransactionId);
            }

            return redirect()->route('front.index')->withErrors(['error' => 'Payment failed. Please try again.']);

        } catch (\Throwable $e) {
            return redirect()->route('front.index')->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function orderFinished(ProductTransaction $productTransaction)
    {
        dd($productTransaction);
        // return view('order.order_finished', compact('productTransaction'));
    }

    public function checkBooking(){
        return view('order.my_order');
    }

    public function checkBookingDetails(StoreCheckBookingRequest $request){
        $validated = $request->validated();

        $orderDetails = $this->orderService->getMyOrderDetails($validated);

        if ($orderDetails) {
            return view('order.my_order_details', compact('orderDetails'));
        }

        return redirect()->route('front.check_booking')->withErrors(['error' => 'Transaction not found']);
    }

}
