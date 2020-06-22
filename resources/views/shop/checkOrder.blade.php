@extends('shop.layouts.main')
@section('content')

    <div class="container">
        <div class="input-group mb-3 mt-5">
            <input type="text" class="form-control order-code" placeholder="Mã đơn hàng" aria-label="Mã đơn hàng" aria-describedby="button-addon2">
            <div class="input-group-append">
                <button class="btn btn-outline-secondary btn_find" type="button" id="button-addon2">Tìm kiếm</button>
            </div>
        </div>
        <div class="noti">

        </div>

        <table class="table table-dark my-5 my_table">
            <thead>
            <tr >
                <td colspan="2"  scope="col" class="text-center"><b>Thông tin đơn hàng</b></td>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td width="25%">Mã đơn hàng : </td>
                <td></td>
            </tr>
            <tr>
                <td width="25%">Tên khách hàng :</td>
                <td></td>
            </tr>
            <tr>
                <td width="25%" ">Sản phẩm đã đặt :</td>
                <td class="pdr-list"></td>
            </tr>
            <tr>
                <td width="25%">Tổng số tiền :</td>
                <td></td>
            </tr>
            <tr>
                <td width="25%">Trạng thái :</td>
                <td></td>
            </tr>
            </tbody>
        </table>
    </div>
@endsection
