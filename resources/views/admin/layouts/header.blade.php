<header class="main-header">
    <!-- Logo -->
    <a href="{{ route('admin.dashboard') }}" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>A</b>LT</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Essential </b>Shop</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        @if(Auth::user()->avatar)
                            <img src="{{ asset(Auth::user()->avatar) }}" class="user-image" alt="User Image">
                        @else
                            <img src="https://scontent.fhan2-2.fna.fbcdn.net/v/t1.0-9/p960x960/91861377_10213062701282248_9196926355550240768_o.jpg?_nc_cat=105&_nc_sid=110474&_nc_ohc=bRQrkwaRUakAX8KtRlB&_nc_ht=scontent.fhan2-2.fna&_nc_tp=6&oh=5186682eec67f80b4d6f6e2d2c0520ad&oe=5EBC8AB0" class="user-image" alt="User Image">
                        @endif
                        <span class="hidden-xs"> {{ Auth::user()->name }}</span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            @if(Auth::user()->avatar)
                                <img src="{{ asset(Auth::user()->avatar) }}" class="img-circle" alt="User Image">
                            @else
                                <img src="https://scontent.fhan2-2.fna.fbcdn.net/v/t1.0-9/p960x960/91861377_10213062701282248_9196926355550240768_o.jpg?_nc_cat=105&_nc_sid=110474&_nc_ohc=bRQrkwaRUakAX8KtRlB&_nc_ht=scontent.fhan2-2.fna&_nc_tp=6&oh=5186682eec67f80b4d6f6e2d2c0520ad&oe=5EBC8AB0" class="img-circle" alt="User Image">
                            @endif


                            <p>
                                {{ Auth::user()->name }}
                                <small>Member since <?php $create = date('M d, Y', strtotime(Auth::user()->created_at)); echo $create ?></small>
                            </p>
                        </li>
                        <!-- Menu Body -->
                    {{--                        <li class="user-body">--}}
                    {{--                            <div class="row">--}}
                    {{--                                <div class="col-xs-4 text-center">--}}
                    {{--                                    <a href="#">Followers</a>--}}
                    {{--                                </div>--}}
                    {{--                                <div class="col-xs-4 text-center">--}}
                    {{--                                    <a href="#">Sales</a>--}}
                    {{--                                </div>--}}
                    {{--                                <div class="col-xs-4 text-center">--}}
                    {{--                                    <a href="#">Friends</a>--}}
                    {{--                                </div>--}}
                    {{--                            </div>--}}
                    {{--                            <!-- /.row -->--}}
                    {{--                        </li>--}}
                    <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="{{ route('admin.user.show', [ 'id' => Auth::user()->id]) }}" class="btn btn-default btn-flat">Profile</a>
                            </div>
                            <div class="pull-right">
                                <a href="{{ route('admin.logout') }}" class="btn btn-default btn-flat">Sign out</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <!-- Control Sidebar Toggle Button -->
                <li>
                    <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                </li>
            </ul>
        </div>
    </nav>
</header>
