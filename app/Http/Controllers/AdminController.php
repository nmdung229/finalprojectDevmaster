<?php

namespace App\Http\Controllers;

use App\Article;
use App\Order;
use App\Product;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function index()
    {
        $numOrder = Order::count();
        $numArticle = Article::count();
        $numProduct = Product::count();
        $numUser = User::count();

        return view('admin.dashboard', [
            'numOrder' => $numOrder,
            'numArticle' => $numArticle,
            'numProduct' => $numProduct,
            'numUser' => $numUser
        ]);
    }

    public function login()
    {
        if(!Auth::check()) {
            return view('admin.login');
        } else {
            $numOrder = Order::count();
            $numArticle = Article::count();
            $numProduct = Product::count();
            $numUser = User::count();

            return view('admin.dashboard', [
                'numOrder' => $numOrder,
                'numArticle' => $numArticle,
                'numProduct' => $numProduct,
                'numUser' => $numUser
            ]);
        }
    }

    public function postLogin(Request $request)
    {
        //validate du lieu
        $request->validate([
            'email' => 'required|string|email|max:255',
            'password' => 'required|string|min:6'
        ]);

        $data = [
            'email' => $request->input('email'),
            'password' => $request->input('password')
        ];


        // check success
        if (Auth::attempt($data, $request->has('remember'))) {
            $user = Auth::user();
            if($user->role_id == 1 ) {
                return redirect()->route('admin.order.index');
            } else if($user->role_id == 2) {
                return redirect('/');
            }
        }

        return redirect()->back()->with('msg', 'Email hoặc Password không chính xác');;
    }

    public function logout()
    {
        $user = Auth::user();
        Auth::logout();
        // chuyển về trang đăng nhập
        if($user->role_id == 1) {
            return redirect()->route('admin.login');
        }
        else if ($user->role_id == 2) {
            return redirect('/');
        }
    }
}
