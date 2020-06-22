<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Essential Shop | Register</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="/shop/css/login-register.css" type="text/css">
</head>
<body>
    <form role="form" action="{{ route('shop.postRegister') }}" method="post" class="login-form">
        @csrf
        <input type="text" class="login-username" id="name" name="name" autofocus="true" required="true" placeholder="Name" />
        <input type="email" class="login-username" id="email" name="email" autofocus="true" required="true" placeholder="Email" />
        <input type="password" class="login-password " id="password" name="password" required="true" placeholder="Password" />
        <input type="password" class="login-password" id="re-password" name="re-password" required="true" placeholder="Re-Password" />
        <p class="notification" ></p>
        <input type="submit" name="Register" value="Register" class="login-submit" id="submit-btn" />
    </form>
    <a href="/login" class="login-forgot-pass">Have An Account ?</a>
    <div class="underlay-black"></div>
</body>
<script src="/shop/js/jquery-3.3.1.min.js"></script>
<script src="/shop/js/bootstrap.min.js"></script>
<script src="/shop/js/jquery.magnific-popup.min.js"></script>
<script src="/shop/js/jquery.slicknav.js"></script>
<script src="/shop/js/owl.carousel.min.js"></script>
<script src="/shop/js/jquery.nice-select.min.js"></script>
<script src="/shop/js/mixitup.min.js"></script>
<script src="/shop/js/main.js"></script>
<script src="/shop/js/register.js"></script>
</html>


