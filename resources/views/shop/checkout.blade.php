@extends('shop.layouts.main')
@section('content')
    <!-- Page Add Section Begin -->
<section class="page-add">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="page-breadcrumb">
                    <h2>Checkout<span>.</span></h2>
                </div>
            </div>
            <div class="col-lg-8">
                <img src="img/add.jpg" alt="">
            </div>
        </div>
    </div>
</section>
<!-- Page Add Section End -->

<!-- Cart Total Page Begin -->
<section class="cart-total-page spad">
    <div class="container">
        <form method="post" action="{{ route('shop.cart.checkout') }}" class="checkout-form">
            @csrf
            <div class="row">
                <div class="col-lg-12">
                    <h3>Your Information</h3>
                </div>
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-lg-2">
                            <p class="in-name">Name*</p>
                        </div>
                        <div class="col-lg-10">
                            <input type="text" name="fullname" placeholder="Full Name">
                            @if ($errors->has('fullname'))
                                <span class="invalid-feedback" role="alert" style="color:red;">{{ $errors->first('fullname') }}</span>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-2">
                            <p class="in-name">Address*</p>

                        </div>
                        <div class="col-lg-10">
                            <input type="text" name="address" placeholder="Address">
                            @if ($errors->has('address'))
                                <span class="invalid-feedback" role="alert" style="color:red;">{{ $errors->first('address') }}</span>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-2">
                            <p class="in-name">Email*</p>
                        </div>
                        <div class="col-lg-10">
                            <input type="text" name="email" placeholder="Email">
                            @if ($errors->has('email'))
                                <span class="invalid-feedback" role="alert" style="color:red;">{{ $errors->first('email') }}</span>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-2">
                            <p class="in-name">Phone*</p>
                        </div>
                        <div class="col-lg-10">
                            <input type="text" name="phone" placeholder="Phone">
                            @if ($errors->has('phone'))
                                <span class="invalid-feedback" role="alert" style="color:red;">{{ $errors->first('phone') }}</span>
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-2">
                            <p class="in-name">Note</p>
                        </div>
                        <div class="col-lg-10">
                            <textarea style="height: 104px; width: 100%" class="contact-text" name="note"></textarea>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12 text-right">
                            <div class="diff-addr">
                                <input type="radio" id="one">
                                <label for="one">Ship to different address</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                   <div class="Title-pro">
                    <h2>Đơn hàng ({{ $cart->totalQty }} sản phẩm )</h2>
                </div>
                <div class="order-table fixload">
                    @foreach($cart->products as $product)
                        <div class="San-pham-list fixload">
                            <div class="Img-box">
                                <img src="{{ asset($product['item']->image) }}" style="width: 52px; height: 52px">
                            </div>
                            <div class="Meta-box">
                                <h2>{{ substr($product['item']->name, 0 ,20) . "..." }}</h2>
                                <p>{{ $product['qty'] . ' x ' . $product['item']->sale }}$</p>
                            </div>
                            <div class="Price-box">
                                <p>{{ $product['price'] }}$</p>
                            </div>
                        </div>
                    @endforeach

                    <div class="Ma-giam-gia">
                    <div class="form-group" >

                        <div class="field__input-btn-wrapper">

                        </div>
                    </div>
                </div>
                <div class="Meta-price">
                    <div class="M-price-left">
                      <p>Tạm tính</p>
                      <p>{{ $cart->totalPrice }}$</p>
                  </div>
                  <div class="M-price-left">
                    <p>Phí vận chuyển</p>
                    <p>10$</p>
                </div>
            </div>
            <div class="Meta-price-max">
                <div class="M-price-left">
                  <p>Tổng cộng</p>
                  <p>{{ $cart->totalPrice + 10 }}$</p>
              </div>
          </div>
          <div class="Dat-hang">
            <div class="M-price-left">
              <a class="btn-success btn" href="{{ route('shop.cart') }}">Quay về giỏ hàng</a>
{{--              <p><button  class="btn btn-primary event-voucher-apply" type="button">ĐẶT HÀNG</button></p>--}}
          </div>
              <h3 class="text-center">{{ session('msg_order_success') ? session('msg_order_success') : '' }}</h3>
      </div>
  </div>
</div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="payment-method">
            <h3>Payment</h3>
            <div class="Box-paypal">
                <div class="Top-paypal">
                    <input type="radio"  class="set-c" name=""></input> <label> Chuyển khoản qua ngân hàng </label>
                    <div class="content">
                        <p>Chủ tài khoản : Lê Việt Trúc</p>
                        <p>+ Ngân hàng Vietcombank - Hồ Chí Minh: 0071 00087 3650</p>
                        <p>+ Ngân hàng Agribank - Chi nhánh Phan Đình Phùng : 1607 2054 03470</p>
                        <p>+ Ngân hàng ACB - PGD Lý Chính Thắng - Hồ Chí Minh: 1901 50329</p>
                    </div>
                </div>
            </div>
            <div class="Box-paypal">
                <div class="Top-paypal">
                    <input type="radio"  class="set-c" name=""></input> <label> Chuyển khoản qua ngân hàng </label>
                    <div class="content">
                        <p>Bạn chỉ phải thanh toán khi nhận được hàng</p>
                    </div>
                </div>
            </div>
            <button type="submit">Place your order</button>
        </div>
    </div>
</div>

</form>
</div>
</section>
<!-- Cart Total Page End -->
@endsection
