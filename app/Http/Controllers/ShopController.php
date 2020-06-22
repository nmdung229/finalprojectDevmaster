<?php

namespace App\Http\Controllers;

use App\Article;
use App\Banner;
use App\Cart;
use App\Category; // cần thêm dòng này nếu chưa có
use App\Order;
use App\OrderDetail;
use App\OrderStatus;
use App\Product;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ShopController extends GeneralController
{

    public function __construct()
    {
        parent::__construct();
    }

    // trang chủ
    public function index()
    {
        $categories = $this->categories;

        // 3. Lấy danh sách phẩm theo thể loại
        $list = []; // chứa danh sách sản phẩm  theo thể loại

        foreach($categories as $key => $category) {
            if($category->parent_id == 0) { // check danh mục cha
                $ids = [$category->id]; // $ids = array($category->id);

                foreach($categories as $child) {
                    if ($child->parent_id == $category->id) {
                        $ids[] = $child->id; // thêm phần tử vào mảng
                    }
                } // ids = [1,7,8,9,..]

                $list[$key]['category'] = $category;

                $list[$key]['products'] = Product::where(['is_active' => 1])
                                                        ->whereIn('category_id' , $ids)
                                                        ->limit(4)->orderBy('id', 'desc')
                                                        ->get();
            }
        }
        $newest_blog = Article::where([ 'is_active' => 1])->orderBy('created_at', 'desc')->limit(1)->get();
//        dd($newest_blog);
        return view('shop.home',[
            'list' => $list,
            'newest_blog' => $newest_blog,
        ]);
    }
    public function product(){
        $categories = $this->categories;

        // 3. Lấy danh sách phẩm theo thể loại
        $list = []; // chứa danh sách sản phẩm  theo thể loại

        foreach($categories as $key => $category) {
            if($category->parent_id == 0) { // check danh mục cha
                $ids = [$category->id]; // $ids = array($category->id);

                foreach($categories as $child) {
                    if ($child->parent_id == $category->id) {
                        $ids[] = $child->id; // thêm phần tử vào mảng
                    }
                } // ids = [1,7,8,9,..]

                $list[$key]['category'] = $category;

                $list[$key]['products'] = Product::where(['is_active' => 1])
                    ->whereIn('category_id' , $ids)
                    ->orderBy('id', 'desc')
                    ->get();
            }
        }
        return view('shop.product',[
            'list' => $list
        ]);

    }
    // Get san phan theo the loai
    public function getProductsByCategory($slug)
    {
        // step 1 : lấy chi tiết thể loại
        $cate = Category::where(['slug' => $slug])->first();
        $product_1st = Product::where(['category_id' => $cate->id, 'is_active' => 1, 'is_hot' => 1])->first();
        if ($cate) {
            $categories = $this->categories;
            // step 1.1 Check danh mục cha -> lấy toàn bộ danh mục con để where In
            $ids = [];
            foreach($categories as $key => $category) {
                if($category->id == $cate->id) {
                    $ids[] = $cate->id;

                    foreach ($categories as $child) {
                        if ($child->parent_id == $cate->id) {
                            $ids[] = $child->id; // thêm phần tử vào mảng
                        }
                    }
                }
            }

            // step 2 : lấy list sản phẩm theo thể loại
            $products = Product::where(['is_active' => 1, 'is_hot' => 0])
                                    ->whereIn('category_id' , $ids)
                                    ->limit(10)->orderBy('id', 'desc')
                                    ->get();

            return view('shop.products-by-category',[
                'category' => $category,
                'products' => $products,
                'product_1st' => $product_1st,
            ]);
        } else {
            return $this->notfound();
        }
    }

    // Chi tiet san pham
    public function getProduct($slug , $id)
    {
        // get chi tiet sp
        $product = Product::find($id);
        if (!$product) {
            return $this->notfound();
        }

        $category = Category::find($product->category_id);

        $tags = Category::where([
                                ['id' , '<>', 0],
                                ['is_active' , '=', 1]
                            ])->get();


        // step 2 : lấy list SP liên quan
        $relatedProducts = Product::where([
                                ['is_active' , '=', 1],
                                ['category_id', '=' , $category->id ],
                                ['id', '<>' , $id]
                            ])->orderBy('id', 'desc')->limit(4)->get();

        return view('shop.productdetail',[
            'category' => $category,
            'product' => $product,
            'relatedProducts' => $relatedProducts,
            'tags' => $tags
        ]);
    }


    public function search(Request $request)
    {
        $keyword = $request->input(' ');
        $slug = str_slug($keyword);
        $totalResult = 0;

        $products = [];

        //$sql = "SELECT * FROM products WHERE is_active = 1 AND (name like '%?%' OR slug like '%?%' OR summary like '%?%')";
        //$results = DB::select($sql, [
        //    $keyword, $slug , $keyword
        //]);

        $products = Product::where([
            ['name', 'like', '%' . $keyword . '%'],
            ['is_active', '=', 1]
        ])->orWhere([
            ['slug', 'like', '%' . str_slug($keyword) . '%'],
            ['is_active', '=', 1]
        ])->orWhere([
            ['summary', 'like', '%' . $keyword . '%'],
            ['is_active', '=', 1]
        ])->paginate(20);

        $totalResult = $products->total();

        return view('shop.search', [
            'products' => $products,
            'totalResult' => $totalResult,
            'keyword' => $keyword ? $keyword : ''
        ]);
    }

    // Danh sach bai viet
    public function getListArticles()
    {
        $articles = Article::all();
        $categories = Category::all();
        return view('shop.blog',[
            'articles' => $articles,
            'categories' => $categories,
        ]);
    }

    // Chi tiet bai viet
    public function getArticle($slug , $id)
    {
        $article = Article::find($id);

        if (!$article) {
            return $this->notfound();
        }
        $categories = Category::all();
        $recent3articles = Article::where(['user_id' => $article->user_id])->orderBy('created_at', 'DESC')->limit(3)->get();
        return view('shop.article_detail',[
            'post' => $article,
            'recent' => $recent3articles,
            'categories' => $categories,
        ]);
    }

    public function login()
    {
        if(!Auth::check()) {
            return view('shop.login');
        } else {
            return redirect('/');
        }
    }
    public function register()
    {
        return view('shop.register');
    }
    public function  postRegister(Request $request)
    {
        //validate
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email',
            'password' => 'required|min:6',
        ]);

        $is_active = 1;

        //luu vào csdl
        $user = new User();
        $user->name = $request->input('name'); // họ tên
        $user->email = $request->input('email'); // email
        $user->password = bcrypt($request->input('password')); // mật khẩu
        $user->role_id = 2; // phần quyền

        if ($request->hasFile('avatar')) {
            // get file
            $file = $request->file('avatar');
            // get ten
            $filename = time().'_'.$file->getClientOriginalName();
            // duong dan upload
            $path_upload = 'uploads/user/';
            // upload file
            $request->file('avatar')->move($path_upload,$filename);

            $user->avatar = $path_upload.$filename;
        }

        $user->is_active = $is_active;
        $user->save();

        // chuyen dieu huong trang
        return redirect()->route('admin.user.index');
    }


    public function checkInvalidGmail($gmail)
    {
        $users = User::all();
        $result = true;
        foreach ($users as $user) {
            if($gmail == $user->email) {
                $result = false;
            }
        }
        return json_encode($result);
    }

    public function checkOrder()
    {
        return view('shop.checkOrder');
    }

    public function findOrder($code)
    {

        $_order = Order::where(['code' => $code])->get();
        if($_order->isEmpty()) {
            return response()->json([
                'status' => false,
                'msg' => "Đơn hàng của bạn không tồn tại",
            ]);
        }
        else {
            $order = $_order['0'];

            $order_status = OrderStatus::find($order->order_status_id)->name;

            $list = OrderDetail::where(['order_id' => $order->id])->get();
            return response()->json([
                'status' => true,
                'msg' => "Tìm kiếm đơn hàng thành công !",
                'order' => $order,
                'order_status' => $order_status,
                'list' => $list,
            ]);
        }

    }
}
