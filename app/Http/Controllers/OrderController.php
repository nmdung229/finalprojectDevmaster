<?php

namespace App\Http\Controllers;

use App\Order;
use App\OrderStatus;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use PhpParser\Node\Stmt\TryCatch;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // var_dump($_POST['order']);
        // die('123');
        $orders = Order::latest()->paginate(20);
        return view('admin.order.index', [
            'data' => $orders
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $order = Order::find($id);
        $order_status = OrderStatus::all();

        return view('admin.order.edit', [
            'order' => $order,
            'order_status' => $order_status
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $address2 = $request->address2;
        $note = $request->note;
        $id_status = $request->order_status_id;

        $order = Order::findorFail($id);
        $order->address2 = $address2;
        $order->note = $note;
        $order->order_status_id = $id_status;
        $order->save();

        return redirect()->back()->with('msg', 'Cập nhật đơn hàng thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function removeToCart(Request $request)
    {
        $order_detail_id = $request->input('order_detail_id');
        $order_id = $request->input('order_id');

        return response()->json([
            'status'  => true ,
            'data' => 'Xóa sản phẩm thành công'
        ]);
    }
    public function testorder($order){
       try
       {
            $_order = Order::where(['code'=>$order])->get();
       }
        // $_order = Order::where(['code'=>$order])->get();
        // // var_dump($_order); cais nay la vi cau query cua e luon ton tai array nen no chi chay vao 1 truong hop thoi ko co cach nao xu ly ha anh, co thi co nhung ma no bi dai dong
        // if(!empty($_order) && $_order != '')
        // {
        //     die('123');
            
        // }else
        // {
        //     echo($_order); die();   
        // }
        
    }
}
