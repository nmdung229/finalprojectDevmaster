@extends('admin.layouts.main')
@section('content')

    <section class="content-header">
        <h1>
            Ảnh chi tiết của sản phẩm {{ $product->name }} <a href="{{ route('admin.imagedetail.create', [ 'product_id' => $product->id ]) }}" class="btn btn-info pull-right"><i class="fa fa-plus"></i> Thêm ảnh chi tiết sản phẩm </a>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <div class="box-tools">
                            <div class="input-group input-group-sm hidden-xs" style="width: 150px;">
                                <input type="text" name="table_search" class="form-control pull-right"
                                       placeholder="Search">

                                <div class="input-group-btn">
                                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th>Hình ảnh</th>
                                <th>Đường dẫn</th>
                                <th>Người đăng</th>
                                <th>Vị trí</th>
                                <th>Trạng thái</th>
                                <th class="text-center">Hành động</th>
                            </tr>
                            </tbody>
                            <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                            @foreach($data as $key => $item)
                                <tr class="item-{{ $item->id }}"> <!-- Thêm Class Cho Dòng -->
                                    <td><img src="{{asset($item->image)}}" width="70"></td>
                                    <td>{{ $item->image }}</td>
                                    <td>
                                        <?php $author = \App\User::findorFail($item->user_id); echo $author->name ?>
                                    </td>
                                    <td>{{ ($item->position != null ) ? "$item->position" : 'NULL' }}</td>
                                    <td>{{ ($item->is_active == 1) ? 'Hiển thị' : 'Không hiển thị' }}</td>
                                    <td class="text-center">
{{--                                        <a href="#" class="btn btn-default">Xem</a>--}}
                                        <a href="{{ route('admin.imagedetail.edit', [ 'id' => $item->id ]) }}" class="btn btn-info">Sửa</a>
                                        <!-- Thêm sự kiện onlick cho nút xóa -->
                                        <a href="javascript:void(0)" class="btn btn-danger" onclick="destroyDetailImage({{ $item->id }})" >Xóa</a>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
        <!-- /.row -->
    </section>
@endsection
