@extends('shop.layouts.main')
@section('content')
    <!-- Page Add Section Begin -->
    <section class="page-add cart-page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>Cart<span></span></h2>

                    </div>
                </div>
                <div class="col-lg-8">
                    <img src="shop/img/add.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->

    <!-- Cart Page Section Begin -->
    <div class="cart-page">
        @include('shop.components.cart');
    </div>
    <!-- Cart Page Section End -->

@endsection
