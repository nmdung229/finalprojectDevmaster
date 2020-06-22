



$( document ).ready(function() {
    // Handler for .ready() called.
   console.log("success find or der");
   $('.btn_find').click(function () {
        let code = $('.order-code').val();

       $.ajax({
           url: "/findOrder/" + code,
           type: "GET",
           dataType: "json",
           data: {
           },
           beforeSend: function () {
           },
           success: function (res) {
               console.log(res);
                if(res.status == true) {
                    let notif = `<div class="alert alert-success" role="alert">
                                    ${res.msg}
                                 </div>`;
                    $('.noti').html('');
                    $('.noti').html(notif);
                    let table = `   <thead>
            <tr >
                <td colspan="2"  scope="col" class="text-center"><b>Thông tin đơn hàng</b></td>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td width="30%">Mã đơn hàng : </td>
                <td>${res.order.code}</td>
            </tr>
            <tr>
                <td width="30%">Tên khách hàng :</td>
                <td>${res.order.fullname}</td>
            </tr>
            <tr>
                <td width="30%" >Sản phẩm đã đặt :</td>
                <td class="prd-list">

                </td>
            </tr>
            <tr>
                <td width="30%">Tổng số tiền :</td>
                <td>${res.order.total}$</td>
            </tr>
            <tr>
                <td width="30%">Trạng thái :</td>
                <td>${res.order_status}</td>
            </tr>
            </tbody>`;
                    $('.my_table').html(table);
                    $.each(res.list, function (index,val) {
                        let row = `<p style="color: #fff0f0"; >${val.name} x ${val.qty} = ${val.price*val.qty}$ </p>`
                        $('.prd-list').append(row);
                    });
                }
                else if (res.status == false) {
                    let notif = `<div class="alert alert-danger" role="alert">
                                    ${res.msg}
                                 </div>`;
                    $('.noti').html('');
                    $('.noti').html(notif);
                }
           },
           error: function () {
           },
           complete: function () {
           }
       });
   });

});

