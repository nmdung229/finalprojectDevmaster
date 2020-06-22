@php
    $list_category = \App\Category::all();
@endphp

<div class="container">
    <div class="modal" id="myModal">
        <div class="modal-dialog Set-box-pro" style="width : 35%;">
            <div class="modal-content">
                <div class="Title-pro">
                    <h2 >Đơn hàng (<span class="total-quantity"></span> sản phẩm )</h2>
                </div>
                <div class="order-table fixload">
                    <div class="list-products">
                        Giỏ hàng hiện chưa có sản phẩm nào
                    </div>

                    <div class="Meta-price-max" style="border-top: 1px solid #000">
                        <div class="M-price-left">
                            <p>Tạm tính</p>
                            <p class="temp-price">0$</p>
                        </div>
                    </div>
                    <div class="Dat-hang">
                        <div class="M-price-left">
                            <p><button  class="btn btn-primary event-voucher-apply" type="button"><a href="{{ route('shop.cart.checkout') }}" style="color: #fff;">ĐẶT HÀNG</a></button>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Search model -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form" action="{{ route('shop.search') }}" method="GET" >
            <input type="text" id="search-input" placeholder="Search here....." value="{{ isset($keyword) ? $keyword : '' }}" name="tu-khoa">
        </form>
    </div>
</div>
<!-- Search model end -->

<!-- Header Section Begin -->
<header class="header-section">
    <div class="container-fluid">
        <div class="inner-header">
            <div class="logo">
                <a href="/"><img src="/shop/img/logo.png" alt=""></a>
            </div>
            <div class="header-right">
                <img src="/shop/img/icons/search.png" alt="" class="search-trigger">
                <img src="/shop/img/icons/man.png" alt="">
                <a href="#">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                        <img src="/shop/img/icons/bag.png" alt="">
                        <span class="total-quantity">0</span>
                    </button>
                </a>
            </div>
            <div class="user-access">
                <a href="register">Register</a>
                <a href="{{ route('shop.login') }}" class="in">Login</a>
            </div>
            <nav class="main-menu mobile-menu">
                <ul>
                    <li><a class="active" href="/">Home</a></li>
                    <li><a href="/">Shop</a>
                        <ul class="sub-menu">
                            <li><a href="product">All</a></li>
                            @foreach($list_category as $category)
                                <li><a href="{{ route('shop.category', [ 'slug' => $category->slug]) }}">{{ $category->name }}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    <li><a href="{{ route('shop.cart') }}">Cart</a></li>
                    <li><a href="{{ route('shop.article') }}">Blog</a></li>
                    <li><a href="contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<!-- Header Info Begin -->
<div class="header-info">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="header-item">
                    <img src="/shop/img/icons/delivery.png" alt="">
                    <p>Free shipping on orders over $30 in Vietnam</p>
                </div>
            </div>
            <div class="col-md-4 text-left text-lg-center">
                <div class="header-item">
                    <img src="/shop/img/icons/voucher.png" alt="">
                    <p>20% Student Discount</p>
                </div>
            </div>
            <div class="col-md-4 text-left text-xl-right">
                <div class="header-item">
                    <img src="/shop/img/icons/sales.png" alt="">
                    <p>30% off on tops. Use code: 30OFFTOP</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Header Info End -->
<!-- Header End -->
