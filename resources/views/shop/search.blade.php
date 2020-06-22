@extends('shop.layouts.main')
@section('content')
    <!-- Page Add Section Begin -->
    <section class="page-add">

    </section>
    <!-- Page Add Section End -->

    <!-- Categories Page Section Begin -->
    <section class="categories-page spad">
        <div class="container">
            <div class="categories-controls">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="categories-filter">
                            <div class="cf-right">
                                <span>20 Products</span>
                                <a href="#">2</a>
                                <a href="#" class="active">4</a>
                                <a href="#">6</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @foreach($list as $item)
                <div class="row">
                    <div class="col-md-12">
                        <h4 style="padding: 15px 0;"> {{ $item['category']->name }} </h4>
                    </div>
                    
                    @foreach($products as $product)
                        <div class="col-lg-3 col-md-6">
                            <div class="single-product-item">
                                <figure>
                                    <img src="{{ asset($product->image) }}" alt="{{ $product->slug }}">
                                    <div class="p-status">new</div>
                                    <div class="hover-icon">
                                        <a href="" class="pop-up"><img src="/shop/img/icons/zoom-plus.png"
                                                                                             alt=""></a>
                                    </div>
                                </figure>
                                <div class="product-text">
                                    <a href="{{ route('shop.productdetail', [ 'slug' => $product->slug, 'id' => $product->id ]) }}">
                                        <h6>{{ $product->name }}</h6>
                                    </a>
                                    <p>${{ $product->sale }}</p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                
                </div>
            @endforeach

            <div class="more-product">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <a href="#" class="primary-btn">Load More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Page Section End -->
@endsection
