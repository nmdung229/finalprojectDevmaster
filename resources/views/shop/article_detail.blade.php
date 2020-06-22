<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga Studio Template">
    <meta name="keywords" content="Yoga, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Essential Shop</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/shop/css/blog.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/shop/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/shop/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/shop/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/shop/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/shop/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/shop/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/shop/css/style.css" type="text/css">
</head>
<body style="background: #fff;">
<!-- Header Section Begin -->
<header class="header-section">
    <div class="container-fluid">
        <div class="inner-header">
            <div class="logo">
                <a href="./index.html"><img src="/shop/img/logo.png" alt=""></a>
            </div>
            <div class="user-access">
                <a href="register">Register</a>
                <a href="login" class="in">Login</a>
            </div>
            <nav class="main-menu mobile-menu">
                <ul>
                    <li><a class="active" href="/">Home</a></li>
                    <li><a href="/">Shop</a>
                        <ul class="sub-menu">
                            <li><a href="{{ route('shop.product') }}">All</a></li>
                            @foreach($categories as $category)
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
<!-- Header End -->



<section id="sec-sing" class="fixload">
    <div class="wrap">
        <div class="Left-text">
            <div class="Box-img">
                <a href="" class="Lane">
                    <img src="/shop/img/1.jpg">
                    <div class="Text-pos">
                        @if($post->is_hot == 1)
                        <b>Highlights</b>
                        @endif
                        <a href="#">{{ $post->title }}</a>
                        <p>Đăng tải bởi <b>{{ \App\User::findorFail($post->user_id)->name }}</b></p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>
<section id="Sec-2 Sec-ter" class="fixload pad-sec">
    <div class="Box-sec fixload">
        <div class="wrap">
            <div class="Box-img-left">
                <div class="content" style="padding: 0!important;">
                    {!! $post->description !!}
                </div>
                <div class="Relate-sing">
                    <h3>MORE FROM AUTHOR</h3>
                    <div class="mar-in">
                        @foreach($recent as $post)
                            <div class="List-post-hot">
                                <div class="W-in mar-in2">
                                    <div class="Box-post-img">
                                        <img src="{{ asset($post->image) }}" style="max-height: 200px">
                                    </div>
                                    <div class="Meta-post">
                                        <a href="{{ route('shop.article.detail', [ 'slug' => $post->slug, 'id' => $post->id ]) }}"><h2>{{ $post->title }}</h2></a>
                                    </div>
                                </div>
                            </div>

                        @endforeach

                    </div>

                </div>
            </div>

{{--            <div class="What-hot">--}}
{{--                <div class="What-hot-in fixload W-ter-sing">--}}
{{--                    <h2 class="under-line">RECENT ARTICLES</h2>--}}
{{--                    <div class="W-in Pad-der">--}}
{{--                        <div class="Box-post-img">--}}
{{--                            <img src="/shop/img/3.jpg">--}}
{{--                        </div>--}}
{{--                        <div class="Meta-post">--}}
{{--                            <h3>CELEBRITY STYLE</h3>--}}
{{--                            <h2>Tommy Hilfiger’s Florida Mansion Is The Funkiest Home Ever Seen</h2>--}}
{{--                            <p>David Jones</p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="W-in Pad-der">--}}
{{--                        <div class="Box-post-img">--}}
{{--                            <img src="/shop/img/3.jpg">--}}
{{--                        </div>--}}
{{--                        <div class="Meta-post">--}}
{{--                            <h3>CELEBRITY STYLE</h3>--}}
{{--                            <h2>Tommy Hilfiger’s Florida Mansion Is The Funkiest Home Ever Seen</h2>--}}
{{--                            <p>David Jones</p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="W-in Pad-der">--}}
{{--                        <div class="Box-post-img">--}}
{{--                            <img src="/shop/img/3.jpg">--}}
{{--                        </div>--}}
{{--                        <div class="Meta-post">--}}
{{--                            <h3>CELEBRITY STYLE</h3>--}}
{{--                            <h2>Tommy Hilfiger’s Florida Mansion Is The Funkiest Home Ever Seen</h2>--}}
{{--                            <p>David Jones</p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}

{{--                <div class="Box-social">--}}
{{--                    <h2 class="under-line">HELLO</h2>--}}
{{--                    <div class="Padding-social">--}}
{{--                        <div class="List-social fixload">--}}
{{--                            <a href="">--}}
{{--                                <div class="social-1">--}}
{{--                                    <span><i class="fa fa-facebook" aria-hidden="true"></i></span>--}}
{{--                                </div>--}}
{{--                                <div class="count-social">--}}
{{--                                    <div class="Border-n">--}}
{{--                                        <span><p>19.826</p></span>--}}
{{--                                        <span><p>Fans</p></span>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="Sub-social">--}}
{{--                                    <p>Like</p>--}}
{{--                                </div>--}}
{{--                            </a>--}}
{{--                        </div>--}}
{{--                        <div class="List-social fixload">--}}
{{--                            <a href="">--}}
{{--                                <div class="social-1">--}}
{{--                                    <span><i class="fa fa-facebook" aria-hidden="true"></i></span>--}}
{{--                                </div>--}}
{{--                                <div class="count-social">--}}
{{--                                    <div class="Border-n">--}}
{{--                                        <span><p>19.826</p></span>--}}
{{--                                        <span><p>Fans</p></span>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="Sub-social">--}}
{{--                                    <p>Like</p>--}}
{{--                                </div>--}}
{{--                            </a>--}}
{{--                        </div>--}}
{{--                        <div class="List-social fixload">--}}
{{--                            <a href="">--}}
{{--                                <div class="social-1">--}}
{{--                                    <span><i class="fa fa-facebook" aria-hidden="true"></i></span>--}}
{{--                                </div>--}}
{{--                                <div class="count-social">--}}
{{--                                    <div class="Border-n">--}}
{{--                                        <span><p>19.826</p></span>--}}
{{--                                        <span><p>Fans</p></span>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="Sub-social">--}}
{{--                                    <p>Like</p>--}}
{{--                                </div>--}}
{{--                            </a>--}}
{{--                        </div>--}}
{{--                        <div class="List-social fixload">--}}
{{--                            <a href="">--}}
{{--                                <div class="social-1">--}}
{{--                                    <span><i class="fa fa-facebook" aria-hidden="true"></i></span>--}}
{{--                                </div>--}}
{{--                                <div class="count-social">--}}
{{--                                    <div class="Border-n">--}}
{{--                                        <span><p>19.826</p></span>--}}
{{--                                        <span><p>Fans</p></span>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="Sub-social">--}}
{{--                                    <p>Like</p>--}}
{{--                                </div>--}}
{{--                            </a>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
        </div>
    </div>
</section>
</body>
</html>
