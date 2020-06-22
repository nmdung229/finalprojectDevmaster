@extends('shop.layouts.main')
@section('content')
    <section class="page-add cart-page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="page-breadcrumb">
                        <h3>Hiện không có sản phẩm nào trong giỏ hàng<span>.</span></h3>
                    </div>
                </div>
                <div class="col-lg-12 " style="margin-top: 60px;">
                    <a href="{{ route('shop.product') }}" class="primary-btn checkout-btn" style="background-color: #000">Xem sản phẩm</a>
                </div>

            </div>
        </div>
    </section>
@endsection
