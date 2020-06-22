@extends('shop.layouts.main')

@section('content')
    @include('shop.layouts.banner')
    <section class="features-section spad">
        <div class="features-ads">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-features-ads first">
                            <img src="shop/img/icons/f-delivery.png" alt="">
                            <h4>Free shipping</h4>
                            <p>Fusce urna quam, euismod sit amet mollis quis, vestibulum quis velit. Vesti bulum mal
                                esuada aliquet libero viverra cursus. </p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-features-ads second">
                            <img src="shop/img/icons/coin.png" alt="">
                            <h4>100% Money back </h4>
                            <p>Urna quam, euismod sit amet mollis quis, vestibulum quis velit. Vesti bulum mal esuada
                                aliquet libero viverra cursus. </p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-features-ads">
                            <img src="shop/img/icons/chat.png" alt="">
                            <h4>Online support 24/7</h4>
                            <p>Urna quam, euismod sit amet mollis quis, vestibulum quis velit. Vesti bulum mal esuada
                                aliquet libero viverra cursus. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Features Box -->
{{--        <div class="features-box">--}}
{{--            <div class="container">--}}
{{--                <div class="row">--}}
{{--                    <div class="col-lg-6">--}}
{{--                        <div class="row">--}}
{{--                            <div class="col-lg-12">--}}
{{--                                <div class="single-box-item first-box">--}}
{{--                                    <img src="shop/img/f-box-1.jpg" alt="">--}}
{{--                                    <div class="box-text">--}}
{{--                                        <span class="trend-year">2019 Party</span>--}}
{{--                                        <h2>Jewelry</h2>--}}
{{--                                        <span class="trend-alert">Trend Allert</span>--}}
{{--                                        <a href="#" class="primary-btn">See More</a>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="col-lg-12">--}}
{{--                                <div class="single-box-item second-box">--}}
{{--                                    <img src="shop/img/f-box-2.jpg" alt="">--}}
{{--                                    <div class="box-text">--}}
{{--                                        <span class="trend-year">2019 Trend</span>--}}
{{--                                        <h2>Footwear</h2>--}}
{{--                                        <span class="trend-alert">Bold & Black</span>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="col-lg-6">--}}
{{--                        <div class="single-box-item large-box">--}}
{{--                            <img src="shop/img/f-box-3.jpg" alt="">--}}
{{--                            <div class="box-text">--}}
{{--                                <span class="trend-year">2019 Party</span>--}}
{{--                                <h2>Collection</h2>--}}
{{--                                <div class="trend-alert">Trend Allert</div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
    </section>
    <!-- Latest Product Begin -->
    <section class="latest-products spad">
        <div class="container">
            <div class="product-filter">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>Latest Products</h2>
                        </div>
                        <ul class="product-controls">
                            <li data-filter="*">All</li>
                            @foreach($list as $item)
                                <li data-filter=".{{ strtolower($item['category']->name) }}">{{ $item['category']->name }}</li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row" id="product-list">
                @foreach($list as $item)
                    @foreach($item['products'] as $product)
                        <div class="col-lg-3 col-sm-6 mix all {{ strtolower($item['category']->name) }} ">
                            <div class="single-product-item">
                                <figure>
                                    <a href="{{ route('shop.productdetail', ['slug' => $product->slug , 'id' => $product->id]) }}"><img src="{{ asset($product->image) }}" alt="{{ $product->slug }}"></a>
                                    <div class="p-status">new</div>
                                </figure>
                                <div class="product-text">
                                    <h6>
                                        @if(strlen($product->name) < 28)
                                            {{ $product->name }}
                                        @else
                                            {{ substr($product->name, 0, 20) . "..." }}
                                        @endif
                                    </h6>
                                    <p>${{ $product->sale }}</p>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endforeach

{{--               --}}
            </div>
        </div>
    </section>
    <!-- Latest Product End -->

    <!-- Lookbok Section Begin -->
    <section class="lookbok-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4 offset-lg-1">
                    <div class="lookbok-left">
                        <div class="section-title">
                            <h3>{{ $newest_blog[0]->title }}</h3>
                        </div>
                        <p>
                            {!! $newest_blog[0]->summary !!}
                        </p>
                        <a href="{{ route('shop.article.detail', [ 'slug' => $newest_blog[0]->slug, 'id' => $newest_blog[0]->id ]) }}" class="primary-btn look-btn">See More</a>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1">
                    <div class="lookbok-pic">
                        <img src="{{ asset($newest_blog[0]->image) }}" alt="{{ $newest_blog[0]->slug }}">
                        <div class="pic-text"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Lookbok Section End -->
@endsection
