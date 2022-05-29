<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Interfaces\UserInterface;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\Product;
use App\Models\PurchaseOrder;
use App\Models\Order;
use App\User;
use App\Models\Store;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    /**
     * This method is for admin login
     *
     */
     public function check(Request $request)
    {
        $request->validate([
            'email' => 'required | string | email | exists:admins',
            'password' => 'required | string'
        ]);

        $adminCreds = $request->only('email', 'password');

        if ( Auth::guard('admin')->attempt($adminCreds) ) {
            return redirect()->route('admin.home');
        } else {
            return redirect()->route('admin.login')->withInputs($request->all())->with('failure', 'Invalid credentials. Try again');
        }
    }
    /**
     * This method is for admin dashboard
     *
     */
    public function home(Request $request)
    {
        // $data = $userRepository->listAll();
        // dd($data->count());
        $data = (object)[];
        $data->users = User::count();
        $data->category = Category::count();
        $data->subcategory = SubCategory::count();
        $data->products = Product::latest('id')->get();
        $data->orders = PurchaseOrder::groupBy('unique_id')
                            ->selectRaw('*, sum(total_price) as amount')
                            ->with('supplier:id,name')                    
                            ->limit(5)
                            ->get();
        return view('admin.home', compact('data'));
    }
}
