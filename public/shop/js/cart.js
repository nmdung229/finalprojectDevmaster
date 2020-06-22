var cart = [];
// console.log('1234');
function addCart() {
    $('.btn-add-card').click(function(){
        let obj = new Object();
        obj.id = $(this).attr('data-id');
        // alert(obj.id);
        $.ajax({
            url: "/cart/add",
            type: "GET",
            dataType: "json",
            data: {
                id: obj.id
            },
            beforeSend: function () {
            },
            success: function (res) {
                $('.cart-count').text(Object.keys(res).length);
                addListCartHtml(res);
            },
            error: function () {
            },
            complete: function () {
            }
        });

        // $('.cart-count').text(cart.length);
        // addListCartHtml(cart);
        showCartBox();
    })
}
addCart();
function removeItemfromCart (id) {

    var result = confirm("Bạn có chắc chắn muốn bỏ sản phẩm khỏi giỏ hàng?");
    if (result) { // neu nhấn == ok , sẽ send request ajax, dc r.
        $.ajax({
            url: "/cart/delete", // base_url được khai báo ở đầu page == http://webshop.local
            type: 'GET',
            // data: {}, // dữ liệu truyền sang nếu có
            data: { id: id }, // dữ liệu truyền sang nếu có
            dataType: "json", // kiểu dữ liệu trả về
            success: function (response) { // success : kết quả trả về sau khi gửi request ajax


                // console.log(response);
                // dữ liệu trả về là một object nên để gọi đến status chúng ta sẽ gọi như bên dưới
                if (response.status != 'undefined' && response.status == true) {
                    // xóa dòng vừa được click delete
                    var quantity = $('.cart-count').html();
                    quantity--;
                    $('.cart-count').text(quantity);
                    $('.product-'+id).remove(); // class .item- ở trong class của thẻ td đã khai báo trong file index

                }
            },
            error: function (e) { // lỗi nếu có
                console.log(e.message);
            }
        });
    }
}

function removeItemfromFlexCart (product_id) {
    var result = confirm("Bạn có chắc chắn muốn bỏ sản phẩm khỏi giỏ hàng?");
    if (result) { // neu nhấn == ok , sẽ send request ajax, dc r.
        $.ajax({
            url: "/cart/removeItemFromFlexCart/" + product_id, // base_url được khai báo ở đầu page == http://webshop.local
            type: 'GET',
            // data: {}, // dữ liệu truyền sang nếu có
            data: {  }, // dữ liệu truyền sang nếu có
            dataType: "json", // kiểu dữ liệu trả về
            success: function (response) { // success : kết quả trả về sau khi gửi request ajax
                console.log(response);
                console.log("xoa thanh cong flex");
                addListCartHtml(response);
            },
            error: function (e) { // lỗi nếu có
                console.log(e.message);
            }
        });
    }
}

function removeCartBox(){
    $('.product .delete').click(function(){
        $(this).parent().remove();
    })
}
function showCartBox(){



    $('.cart-box').css({
        'display': 'block'
    });

    removeCartBox();
}
function cartTest() {
    console.log("test thanh cong");
}

function showCartIndex() {

    $.ajax({
        url: "/cart/getData",
        type: "GET",
        dataType: "json",
        data: {
        },
        beforeSend: function () {
        },
        success: function (res) {
            $('.total-quantity').text(Object.keys(res).length);
            addListCartHtml(res);
            // showCartBox();
        },
        error: function () {
        },
        complete: function () {
        }
    });
}

function hiddenCartBox(){
    $(document).mouseup(function(e)
    {
        var container = $(".cart-box .box-left");

        if (!container.is(e.target) && container.has(e.target).length === 0)
        {
            $('.cart-box').css({
                'display': 'none'
            });
        }
    });
}
function addListCartHtml(cart){
    $('.list-products').html('');
    let total = 0;
    $.each( cart , function( index, el ){
        addCartHtml(el);
        total += el.product.sale*el.quantity;
    });

    $('.temp-price').html('');
    $('.temp-price').text(total + '$');
    changeQuantity();
}
function addCartHtml(obj){
    let rose = `<div class="San-pham-list fixload">
                        <div class="Img-box">
                            <img src="${obj.product.image}" style="width: 70px; height: 70px">
                        </div>
                        <div class="Meta-box">
                            <h2>${obj.product.name}</h2>
                            <p style="font-size: 14px; color: #ff4500;">${obj.quantity} x ${obj.product.sale}$ = ${obj.product.sale*obj.quantity}$</p>
                        </div>
                        <div class="Price-box">
                            <a data-id="" href="javascript:void(0)" onclick="removeItemfromFlexCart(${obj.product.id})"  class="cart_quantity_delete" title="Xóa sản phẩm" style="color: #000; float:right">
                                            <i class="fa fa-trash-o"></i></a>
                        </div>
                    </div>`;
    $('.list-products').append(rose);
}

function changeQuantity(){
    $('.quantity .plus').click(function(){
        let id  = $(this).attr('data-id');
        let result = cart.find( x => x.id == id);
        if( result != undefined){
            result.quantity++;
        }

        let quantity = eval($(this).siblings('input').val());
        quantity = quantity + 1;
        $(this).siblings('input').val(quantity);
    })
    $('.quantity .minus').click(function(){
        let id  = $(this).attr('data-id');

        let result = cart.find( x => x.id == id);
        if( result != undefined){
            result.quantity--;
            if( result.quantity < 0 ) result.quantity = 0 ;
        }

        let quantity = eval($(this).siblings('input').val());
        quantity = quantity - 1;
        if( quantity < 0  ) quantity = 0 ;
        $(this).siblings('input').val(quantity);
    })
}
changeQuantity();
showCartIndex();
