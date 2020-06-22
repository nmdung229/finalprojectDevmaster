<?php
//blog

// use App\Order;
//  đây nhé ạ . kiểu em muốn check đơn hàng ấy ạ thì ne
//  ồ nhưng web site đ
//  oute em

//Route::get('/blog', 'BlogController@index');
////sản phẩm
Route::get('/product', 'ShopController@product')->name('shop.product');
// Trang chủ
Route::get('/', 'ShopController@index');

// Chi tiet sản phẩn
Route::get('/chi-tiet-san-pham/{slug}_{id}', 'ShopController@getProduct')->name('shop.productdetail');

Route::get('/tim-kiem', 'ShopController@search')->name('shop.search');

Route::get('/tin-tuc', 'ShopController@getListArticles')->name('shop.article');
// Chi tiet tin tuc
//Route::get('/blogdetail', 'ShopController@getArticle')->name('shop.blog.detail');

Route::get('/tin-tuc/{slug}_{id}', 'ShopController@getArticle')->name('shop.article.detail');

// Gio hang
Route::get('cart', 'CartController@index')->name('shop.cart');
Route::get('/cart/getData',['as' => 'cart.getData', 'uses' => 'CartController@getDatafromSession']);
Route::get('/cart/refresh',['as' => 'cart.refresh', 'uses' => 'CartController@refreshCart']);
Route::get('/cart/removeItemFromFlexCart/{id}',['as' => 'cart.removeItemFromFlexCart', 'uses' => 'CartController@removeItemFromFlexCart']);

// Thêm sản phẩm vào giỏ hàng
Route::get('/dat-hang/them-sp-vao-gio-hang/{id}', 'CartController@addToCart')->name('shop.cart.add-to-cart');


// Xóa SP khỏi giỏ hàng
Route::get('/dat-hang/xoa-sp-gio-hang/{id}', 'CartController@removeToCart')->name('shop.cart.remove-to-cart');

// Cập nhật giỏ hàng
Route::get('/dat-hang/cap-nhat-gio-hang', 'CartController@updateToCart')->name('shop.cart.update-to-cart');

// Áp dụng giảm giá
Route::get('/dat-hang/ma-giam-gia', 'CartController@checkCoupon')->name('shop.cart.check-coupon');

// Hủy đơn hàng
Route::get('/dat-hang/huy-don-hang', 'CartController@destroy')->name('shop.cart.destroy');
Route::get('/dat-hang/thanh-cong/{msg}', 'CartController@orderSuccess')->name('shop.cart.orderSuccess');
// Thanh toán
Route::get('/thanh-toan', 'CartController@checkout')->name('shop.cart.checkout');

Route::post('/thanh-toan', 'CartController@postCheckout')->name('shop.cart.checkout');

Route::get('/checkOrder', 'ShopController@checkOrder')->name('shop.checkOrder');
Route::get('/findOrder/{code}', 'ShopController@findOrder')->name('shop.findOrder');
// Liên Hệ
Route::resource('contact', 'ContactController');

// Đăng nhập
Route::get('/admin/login', 'AdminController@login')->name('admin.login');
Route::get('/login', 'ShopController@login')->name('shop.login');
// Đăng xuất
Route::get('/admin/logout', 'AdminController@logout')->name('admin.logout');

Route::post('/admin/postLogin', 'AdminController@postLogin')->name('admin.postLogin');
//Đăng ký
Route::get('/register', 'ShopController@register');
Route::post('/register', 'ShopController@postRegister')->name('shop.postRegister');
Route::get('/checkInvalidEmail/{email}', 'ShopController@checkInvalidGmail')->name('shop.register.checkEmail');



Route::group(['prefix' => 'admin','as' => 'admin.' ,'middleware' => ['checkLogin']], function() {

    Route::get('/', 'AdminController@index')->name('dashboard');
    Route::resource('category', 'CategoryController');
    Route::resource('product', 'ProductController');
    Route::resource('sizeproduct', 'SizeProductController');
    Route::resource('imagedetail', 'ImageDetailController');
    // QL Banner
    Route::resource('banner', 'BannerController');
    // QL Thương Hiệu
    Route::resource('brand', 'BrandController');
    // QL Nhà Cung Cấp
    Route::resource('vendor', 'VendorController');
    // Ql Người dùng
    Route::resource('user', 'UserController');

    // Ql Đơn hàng
    Route::post('order/remove-to-cart', 'OrderController@removeToCart')->name('order.remove');

    Route::resource('order', 'OrderController');
    // QL bài viết
    Route::resource('article', 'ArticleController');
    // Cau Hinh Website
    Route::resource('setting', 'SettingController');
});

//Auth::routes();

Route::get('/category/{slug}', 'ShopController@getProductsByCategory')->name('shop.category');

Route::get('/checkorder/{order}', 'OrderController@testorder');
