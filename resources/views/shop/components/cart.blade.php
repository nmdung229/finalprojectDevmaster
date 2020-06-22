<div class="container">
    <div class="cart-table">
        <table>
            <thead>
            <tr>
                <th class="product-h">Product</th>
                <th>Price</th>
                <th class="quan">Quantity</th>
                <th>Total</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            @if(session()->has('cart'))
                @php
                    $_cart = session('cart');
                    $totalPrice = 0;
                    foreach($_cart->products as $product) {
                        $totalPrice += $product['price'];
                    }
                    $_cart->totalPrice = $totalPrice;
                    session()->put('cart', $_cart);
                    $cart = session('cart');
                @endphp
                @foreach($cart->products as $product)
                    <tr id="product-{{ $product['item']->id }}">
                        <td class="product-col">
                            <img src="{{ asset($product['item']->image) }}" alt="{{ $product['item']->slug }}">
                            <div class="p-title">
                                <h5>{{ $product['item']->name }}</h5>
                            </div>
                        </td>
                        <td class="price-col">${{ $product['item']->sale }}</td>
                        <td class="quantity-col">
                            <div class="pro-qty">
                                <input type="number" class="item-qty" min="1" data-id="{{ $product['item']->id }}" data-num="{{ $product['qty'] }}"  value="{{ $product['qty'] }}">
                            </div>
                        </td>
                        <td class="total">${{ $product['price']}}</td>
                        <td class="product-close"><a data-id="{{ $product['item']->id }}" href="javascript:void(0)"
                                                     class="cart_quantity_delete remove-to-cart" title="Xóa sản phẩm" style="color: #000">
                                <i class="fa fa-trash-o"></i></a></td>
                    </tr>
                @endforeach
            @else
                <tr> Giỏ hàng hiện tại có 0 sản phẩm </tr>
            @endif
            </tbody>
        </table>
    </div>
    <div class="cart-btn">
        <form action="{{ route('shop.cart.check-coupon') }}" method="get">
            <div class="row">
                <div class="col-lg-6">
                    <div class="coupon-input">
                        <input type="text" name="coupon_code" placeholder="Enter coupon code">
                    </div>
                    @if($errors->any())
                        @foreach ($errors->all() as $error)
                            <p style="padding: 10px 0 0 35px;color: red;">{{ $error }}</p>
                        @endforeach
                    @endif
                    @if(isset($msg_success))
                        <p style="padding: 10px 0 0 35px;color: green;">{{ $msg_success }}</p>
                    @endif
                </div>
                <div class="col-lg-5 offset-lg-1 text-left text-lg-right">
                    <button type="submit" style="border: none; background: transparent;"><div class="site-btn clear-btn">Check Coupon</div></button>
                </div>

            </div>
        </form>

    </div>
</div>

<div class="shopping-method">
    <h1>some thing here</h1>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="shipping-info">
                    <h5>Choose a shipping</h5>
                    <div class="chose-shipping">
                        <div class="cs-item">
                            <input type="radio" name="cs" id="one">
                            <label for="one" class="active">
                                Free Standard shipping
                                <span>Estimate for New York</span>
                            </label>
                        </div>
                        <div class="cs-item">
                            <input type="radio" name="cs" id="two">
                            <label for="two">
                                Next Day delievery $10
                            </label>
                        </div>
                        <div class="cs-item last">
                            <input type="radio" name="cs" id="three">
                            <label for="three">
                                In Store Pickup - Free
                            </label>
                        </div>
                    </div>
                </div>
                <div class="total-info">
                    <div class="total-table">
                        <table>
                            <thead>
                            <tr>
                                <th>Total</th>
                                <th>Discount</th>
                                <th>Shipping</th>
                                <th class="total-cart">Total Cart</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                            
                                <td class="total">${{ $cart->totalPrice }}</td>
                                <td class="sub-total">${{ $cart->discount }}</td>
                                <td class="shipping">$10</td>
                                <td class="total-cart-p">${{ $cart->totalPrice-$cart->discount + 10 }}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 text-left">
                            <a href="{{ route('shop.cart.destroy') }}" class="primary-btn chechout-btn">Delete the cart</a>
                        </div>
                        <div class="col-lg-6 text-right">
                            <a href="{{ route('shop.cart.checkout') }}" class="primary-btn chechout-btn">Proceed to checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@section('my_javascript')
    <script type="text/javascript">
        $(function () {
            // xóa sản phẩm khỏi giỏ hàng
            $(document).on("click", '.remove-to-cart', function () {
                var result = confirm("Bạn có chắc chắn muốn xóa sản phẩm này khỏi giỏ hàng ?");
                if (result) {
                    var product_id = $(this).attr('data-id');
                    $.ajax({
                        url: '/dat-hang/xoa-sp-gio-hang/'+product_id,
                        type: 'get',
                        data: {
                            id : product_id
                        }, // dữ liệu truyền sang nếu có
                        dataType: "HTML", // kiểu dữ liệu trả về
                        success: function (res) {
                            console.log(res);
                            $('.cart-page').html(res);
                        },
                        error: function (e) { // lỗi nếu có
                            console.log(e);
                        }
                    });
                }
            });

            // cập nhật số lượng giỏ hàng
            //$('.item-qty').change(function () {
            $(document).on("change", '.item-qty', function () {
                var product_id = $(this).attr('data-id');
                var before_qty = $(this).attr('data-num');
                var qty = $(this).val();

                if (qty == 0) {
                    alert('Nhập số lượng phải lớn hơn 0');
                    $(this).val(before_qty);
                    return false;
                }

                $.ajax({
                    url: '/dat-hang/cap-nhat-gio-hang',
                    type: 'get',
                    data: {
                        id : product_id,
                        qty : qty
                    }, // dữ liệu truyền sang nếu có
                    dataType: "JSON", // kiểu dữ liệu trả về
                    success: function (response) {
                        // success
                        console.log(response);
                        // success
                        if (response.status == true) {
                            $('.cart-page').html(response.data);
                        }
                    },
                    error: function (e) { // lỗi nếu có
                        console.log(e.message);
                    }
                });
            });
        })
    </script>
@endsection
