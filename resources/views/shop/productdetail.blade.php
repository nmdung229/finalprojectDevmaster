@extends('shop.layouts.main')
@section('content')
    <!-- Product Page Section Beign -->
    <section class="product-page">
        <div class="container">
            <div class="product-control">
{{--                <a href="#">Previous</a>--}}
{{--                <a href="#">Next</a>--}}
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="product-slider owl-carousel">
                        <div class="product-img">
                            <figure>
                                <img src="{{ asset($product->image) }}" alt="{{ $product->slug }}">
                                <div class="p-status">new</div>
                            </figure>
                        </div>

                    </div>

                </div>
                <div class="col-lg-6">
                    <div class="product-content">
                        <h2>{{ $product->name }}</h2>
                        <div class="pc-meta">
                            <h5>${{ $product->sale }}</h5>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo
                            viverra maecenas accumsan lacus vel facilisis.</p>
                        <ul class="tags">
                            <li><span>Category :</span>{{ $category->name }}</li>
                            <li><span>Tags :</span>@foreach($tags as $t) {{ strtolower($t->name) . " " }} @endforeach .</li>
                        </ul>
                        <div class="product-quantity">
                            <div class="pro-qty">
                                <input type="text" value="1">
                            </div>
                        </div>
                        <a href="{{ route('shop.cart.add-to-cart', ['id' => $product->id]) }}" class="primary-btn pc-btn">Add to cart</a>
                        <ul class="p-info">
                            <li>Product Information</li>
                            <li>Reviews</li>
                            <li>Product Care</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Page Section End -->

    <!-- Related Product Section Begin -->
    <section class="related-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>Related Products</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach($relatedProducts as $r_product)
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-product-item">
                            <figure>
                                <a href="{{ route('shop.productdetail', [ 'slug' => $r_product->slug, 'id' => $r_product->id ]) }}"><img src="{{ asset($r_product->image) }}" alt="{{ $r_product->slug }}"></a>
                                <div class="p-status">new</div>
                            </figure>
                            <div class="product-text">
                                <h6>{{ $r_product->name }}</h6>
                                <p>${{ $r_product->sale }}</p>
                            </div>
                        </div>
                    </div>
                @endforeach



            </div>
        </div>
    </section>
    <!-- Related Product Section End -->
@endsection
