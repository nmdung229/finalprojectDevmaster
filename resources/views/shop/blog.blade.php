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
<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<header class="header-section">
    <div class="container-fluid">
        <div class="inner-header">
            <div class="logo">
                <a href="/"><img src="/shop/img/logo.png" alt=""></a>
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

<section id="Sec-1" class="fixload pad-sec">
		<div class="wrap">
			<div class="Top-first">
				<div class="Left-text">
					<div class="Box-img">
						<a href="" class="Lane">
							<img src="/shop/img/1.jpg">
							<div class="Text-pos">
								<a href="#">Rustic Mountain Home In A Breathtaking Landscape</a>
								<p>David Jones</p>
							</div>
						</a>
						<div class="Set-bg">
						</div>
					</div>
				</div>
				<div class="Right-text">
					<div class="pad-left">
						<div class="Post-top">
							<div class="Post-b-top">
								<a href="">
									<img src="/shop/img/2.jpg">
									<div class="Text-pos">
										<a href="#">Amazing Mountain Chalet Overlooking The Alps</a>
									</div>
								</a>
								<div class="Set-bg">
								</div>
							</div>
						</div>
						<div class="Post-bot fixload">
							<div class="div-1">
								<div class="Post-b-top">
									<a href="">
										<img src="/shop/img/3.jpg">
										<div class="Text-pos">
											<a href="#">Swedish Villa House with Modern Garden at Night Time</a>
										</div>
									</a>
									<div class="Set-bg">
									</div>
								</div>
							</div>
							<div class="div-1">
								<div class="Post-b-top">
									<div class="pad-left"></div>
									<a href="">
										<img src="/shop/img/4.jpg">
										<div class="Text-pos">
											<a href="#">Rustic Mountain Home In A Breathtaking Landscape</a>
										</div>
									</a>
									<div class="Set-bg">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</section>


<section id="sec-4" class="fixload pad-sec">
	<div class="wrap">
		<div class="Get_bot">
			<h2 class="under-line set-text">NEWS</h2>
			<div class="Box-post-hot">
				<div class="Margin-set fixload">
                    @foreach($articles as $post)
                        <div class="List-post-hot">
                            <div class="W-in">
                                <div class="Box-post-img">
                                    <a href="{{ route('shop.article.detail', [ 'slug' => $post->slug, 'id' => $post->id ]) }}">
                                        <img src="{{ $post->image }}" alt="{{ $post->slug }}" style="height: 278px">
                                    </a>
                                </div>
                                <div class="Meta-post">
{{--                                    <h3>CELEBRITY STYLE</h3>--}}
                                    <a href="{{ route('shop.article.detail', [ 'slug' => $post->slug, 'id' => $post->id ]) }}">
                                        <h2>
                                            @if(strlen($post->title) < 90)
                                                {{ $post->title }}
                                            @else
                                                {{ substr($post->title, 0, 70) . "..." }}
                                            @endif
                                        </h2>
                                    </a>
                                    <p><?php $create = date('M d, Y', strtotime($post->created_at)); echo $create ?></p>
                                    <p>Đăng tải bởi <b>{{ \App\User::findorFail($post->user_id)->name }}</b></p>
                                </div>
                            </div>
                        </div>
                    @endforeach

				</div>
			</div>
		</div>
	</div>
</section>
<section id="Sec-5 " class="pad-sec fixload">
	<p class="Cen">FOLLOW US ON INSTAGRAM <strong>@USERNAME</strong><p>
{{--		<div class="Box-out-img">--}}
{{--			<div class="List-img-bottom">--}}
{{--				<div class="pad-left">--}}
{{--					<img src="/shop/img/7.jpg">--}}
{{--					<div class="Bor-in">--}}
{{--					</div>--}}
{{--				</div>--}}
{{--			</div>--}}
{{--			<div class="List-img-bottom">--}}
{{--				<div class="pad-left">--}}
{{--					<img src="/shop/img/7.jpg">--}}
{{--					<div class="Bor-in">--}}
{{--					</div>--}}
{{--				</div>--}}
{{--			</div>--}}
{{--			<div class="List-img-bottom">--}}
{{--				<div class="pad-left">--}}
{{--					<img src="/shop/img/7.jpg">--}}
{{--					<div class="Bor-in">--}}
{{--					</div>--}}
{{--				</div>--}}
{{--			</div>--}}
{{--			<div class="List-img-bottom">--}}
{{--				<div class="pad-left">--}}
{{--					<img src="/shop/img/7.jpg">--}}
{{--					<div class="Bor-in">--}}
{{--					</div>--}}
{{--				</div>--}}
{{--			</div>--}}
{{--		</div>--}}
</section>
@include('shop.layouts.footer')
<!-- Js Plugins -->
<script src="/shop/js/jquery-3.3.1.min.js"></script>
<script src="/shop/js/bootstrap.min.js"></script>
<script src="/shop/js/jquery.magnific-popup.min.js"></script>
<script src="/shop/js/jquery.slicknav.js"></script>
<script src="/shop/js/owl.carousel.min.js"></script>
<script src="/shop/js/jquery.nice-select.min.js"></script>
<script src="/shop/js/mixitup.min.js"></script>
<script src="/shop/js/main.js"></script>
</body>

</html>

