<!DOCTYPE html>
<html lang="zxx">

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
    <link rel="stylesheet"  href="/shop/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet"  href="/shop/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet"  href="/shop/css/nice-select.css" type="text/css">
    <link rel="stylesheet"  href="/shop/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet"  href="/shop/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet"  href="/shop/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet"  href="/shop/css/style.css" type="text/css">
</head>

<body>

@include('shop.layouts.header')


@yield('content')

@include('shop.layouts.footer')


<!-- Js Plugins -->
<script src="/shop/js/jquery-3.3.1.min.js"></script>
<script src="/shop/js/cart.js"></script>
<script src="/shop/js/bootstrap.min.js"></script>
<script src="/shop/js/jquery.magnific-popup.min.js"></script>
<script src="/shop/js/jquery.slicknav.js"></script>
<script src="/shop/js/owl.carousel.min.js"></script>
<script src="/shop/js/jquery.nice-select.min.js"></script>
<script src="/shop/js/mixitup.min.js"></script>
<script src="/shop/js/main.js"></script>
<script src="/shop/js/register.js"></script>
<script src="/shop/js/findOrder.js"></script>

@yield('my_javascript')
</body>

</html>
