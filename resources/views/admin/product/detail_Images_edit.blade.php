@extends('admin.layouts.main')
@section('content')
    <style>.w-50 { width: 50% }</style>
    <section class="content-header">
        <h1>
            Chỉnh sửa thông tin ảnh chi tiết sản phẩm <a href="{{route('admin.imagedetail.show', [ 'id' => $product_id ])}}" class="btn btn-success pull-right"><i
                    class="fa fa-list"></i> Danh Sách chi tiết ảnh sản phẩm </a>
        </h1>
    </section>

    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-6">
                <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thông tin sản phẩm</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="{{route('admin.imagedetail.update', ['id' => $image->id ])}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="box-body">

                            <div class="form-group">
                                <label for="exampleInputFile">Thay đổi ảnh sản phẩm</label>
                                <input type="file" id="new_image" name="new_image"><br>
                                @if ($image->image)
                                    <img src="{{asset($image->image)}}" width="200">
                                @endif
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Vị trí</label>
                                <input type="number" class="form-control w-50" id="position" name="position" value="{{ $image->position }}">
                            </div>
                            <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input {{ ($image->is_active) ? 'checked':'' }} type="checkbox" value="1" name="is_active"> <b>Trạng thái</b>
                                    </label>
                                </div>
                            </div>

                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Cập Nhật</button>
                            <input type="reset" class="btn btn-default pull-right" value="Reset">
                        </div>
                    </form>
                </div>
                <!-- /.box -->
            </div>

        </div>
        <!-- /.row -->
    </section>
@endsection

{{--@section('my_javascript')--}}
{{--    <script type="text/javascript">--}}
{{--        $(function () {--}}
{{--            // setup textarea sử dụng plugin CKeditor--}}
{{--            var _ckeditor = CKEDITOR.replace('editor1');--}}
{{--            _ckeditor.config.height = 500; // thiết lập chiều cao--}}
{{--            var _ckeditor = CKEDITOR.replace('editor2');--}}
{{--            _ckeditor.config.height = 200; // thiết lập chiều cao--}}
{{--        })--}}
{{--    </script>--}}
{{--@endsection--}}
