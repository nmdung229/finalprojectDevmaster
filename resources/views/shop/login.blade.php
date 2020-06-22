<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Essential Shop | Login</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="/shop/css/login-register.css" type="text/css">
</head>
<body>
    <form role="form" action="{{route('admin.postLogin')}}" method="post" class="login-form">
        @csrf
        <input type="email" class="login-username" name="email" autofocus="true" required="true" placeholder="Email" />
        <input type="password" class="login-password" name="password" required="true" placeholder="Password" />
        <input type="submit" name="Login" value="Login" class="login-submit" />
    </form>
    <a href="#" class="login-forgot-pass">Forgot Password ?</a>
    <div class="underlay-black"></div>
</body>
</html>


