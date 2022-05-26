<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

// website
Route::name('front.')->group(function () {
    // home
    Route::get('/', 'Front\FrontController@index')->name('home');
    Route::post('/subscribe', 'Front\FrontController@mailSubscribe')->name('subscription');

    // store visit
    Route::name('store.')->group(function () {
        Route::get('/store', 'Front\StoreController@index')->name('index');
        // Route::get('/store/{slug}', 'Front\StoreController@detail')->name('detail');
        Route::get('/store/{id}', 'Front\StoreController@detail')->name('detail');
        Route::post('/store/filter', 'Front\StoreController@filter')->name('filter');
    });

    // order on call
    Route::name('store.order.call.')->group(function () {
        Route::get('/order-on-call', 'Front\OrderOnCallController@index')->name('index');
        // Route::get('/order-on-call/{slug}', 'Front\OrderOnCallController@detail')->name('detail');
        Route::get('/order-on-call/{id}', 'Front\OrderOnCallController@detail')->name('detail');
        // Route::post('/order/filter', 'Front\OrderOnCallController@filter')->name('filter');
    });

    // category detail
    Route::name('category.')->group(function () {
        Route::get('/category/{slug}', 'Front\CategoryController@detail')->name('detail');
        Route::post('/category/filter', 'Front\CategoryController@filter')->name('filter');
    });

    // sale
    Route::name('sale.')->group(function () {
        Route::get('/sale', 'Front\SaleController@index')->name('index');
    });

    // collection detail
    Route::name('collection.')->group(function () {
        Route::get('/collection/{slug}', 'Front\CollectionController@detail')->name('detail');
        Route::post('/collection/filter', 'Front\CollectionController@filter')->name('filter');
    });

    // product detail
    Route::name('product.')->group(function () {
        Route::get('/product/{slug}', 'Front\ProductController@detail')->name('detail');
        Route::post('/size', 'Front\ProductController@size')->name('size');
    });

    // wishlist
    Route::prefix('wishlist')->name('wishlist.')->group(function () {
        // Route::get('/', 'Front\WishlistController@viewByIp')->name('index');
        Route::post('/add', 'Front\WishlistController@add')->name('add');
        Route::get('/delete/{id}', 'Front\WishlistController@delete')->name('delete');
    });

    // catalouge
    Route::prefix('catalouge')->name('catalouge.')->group(function () {
        Route::get('/', 'Front\CategoryController@index')->name('index');
        Route::get('/{slug}', 'Front\CategoryController@detail')->name('detail');
    });

    // cart
    Route::prefix('cart')->name('cart.')->group(function () {
        Route::get('/', 'Front\CartController@viewByUserId')->name('index');
        Route::post('/coupon/check', 'Front\CartController@couponCheck')->name('coupon.check');
        Route::post('/coupon/remove', 'Front\CartController@couponRemove')->name('coupon.remove');
        Route::post('/add', 'Front\CartController@add')->name('add');
        Route::post('/add/bulk', 'Front\CartController@addBulk')->name('add.bulk');
        Route::get('/delete2/{id}', 'Front\CartController@delete')->name('delete');
        Route::get('/quantity/{id}/{type}', 'Front\CartController@qtyUpdate')->name('quantity');
    });

    // checkout
    Route::prefix('checkout')->name('checkout.')->group(function () {
        Route::get('/', 'Front\CheckoutController@index')->name('index');
        // Route::post('/coupon/check', 'Front\CheckoutController@coupon')->name('coupon.check');
        Route::post('/store', 'Front\CheckoutController@store')->name('store');
        Route::view('/complete', 'front.checkout.complete')->name('complete');
    });

    // faq
    Route::prefix('faq')->name('faq.')->group(function () {
        Route::get('/', 'Front\FaqController@index')->name('index');
    });

    // search
    Route::prefix('search')->name('search.')->group(function () {
        Route::get('/', 'Front\SearchController@index')->name('index');
    });

    // settings contents
    Route::name('content.')->group(function () {
        Route::get('/terms-and-conditions', 'Front\ContentController@termDetails')->name('terms');
        Route::get('/privacy-statement', 'Front\ContentController@privacyDetails')->name('privacy');
        Route::get('/security', 'Front\ContentController@securityDetails')->name('security');
        Route::get('/disclaimer', 'Front\ContentController@disclaimerDetails')->name('disclaimer');
        Route::get('/shipping-and-delivery', 'Front\ContentController@shippingDetails')->name('shipping');
        Route::get('/payment-voucher-promotion', 'Front\ContentController@paymentDetails')->name('payment');
        Route::get('/return-policy', 'Front\ContentController@returnDetails')->name('return');
        Route::get('/refund-policy', 'Front\ContentController@refundDetails')->name('refund');
        Route::get('/service-and-contact', 'Front\ContentController@serviceDetails')->name('service');
    });

    // user login & registration - guard
    Route::middleware(['guest:web'])->group(function () {
        Route::prefix('user/')->name('user.')->group(function () {
            Route::get('/user/register', 'Front\UserController@register')->name('register');
            Route::post('/create', 'Front\UserController@create')->name('create');
            // Route::get('/login', 'Front\UserController@login')->name('login');
            Route::post('/login/check', 'Front\UserController@check')->name('check');
            Route::post('/login/otp/check', 'Front\UserController@loginOtp')->name('login.otp');
            Route::post('/login/mobile/otp/check', 'Front\UserController@loginMobileOtp')->name('login.mobile.otp');
        });
    });

    // profile login & registration - guard
    Route::middleware(['auth:web'])->group(function () {
        Route::prefix('user/')->name('user.')->group(function () {
            Route::view('profile', 'front.profile.index')->name('profile');
            Route::view('manage', 'front.profile.edit')->name('manage');
            Route::post('manage/update', 'Front\UserController@updateProfile')->name('manage.update');
            Route::post('password/update', 'Front\UserController@updatePassword')->name('password.update');
            Route::get('order', 'Front\UserController@order')->name('order');
            Route::get('coupon', 'Front\UserController@coupon')->name('coupon');
            Route::get('address', 'Front\UserController@address')->name('address');
            Route::view('address/add', 'front.profile.address-add')->name('address.add');
            Route::post('address/add', 'Front\UserController@addressCreate')->name('address.create');
            Route::get('wishlist', 'Front\UserController@wishlist')->name('wishlist');
        });
    });

    // mail template test
    Route::view('/mail/1', 'front.mail.register');
    Route::view('/mail/2', 'front.mail.order-confirm');
});

Auth::routes();

Route::get('login', 'Front\UserController@login')->name('login');
Route::get('/login/otp', 'Front\UserController@loginOtpMobile')->name('front.user.login.mobile');

// common & user guard
Route::prefix('user')->name('user.')->group(function() {
    Route::middleware(['guest:web'])->group(function() {
        Route::view('/register', 'auth.register')->name('register');
        Route::post('/create', 'User\UserController@create')->name('create');
        Route::view('/login', 'auth.login')->name('login');
        Route::post('/check', 'User\UserController@check')->name('check');

    });

    Route::middleware(['auth:web'])->group(function() {
        Route::view('/home', 'user.home')->name('home');
    });
});

// admin guard
Route::prefix('admin')->name('admin.')->group(function() {
    Route::middleware(['guest:admin'])->group(function() {
        Route::view('/login', 'admin.auth.login')->name('login');
        Route::post('/check', 'Admin\AdminController@check')->name('login.check');
        Route::get('forget-password', 'Admin\ForgotPasswordController@showForgetPasswordForm')->name('forget.password.get');
        Route::post('forget-password', 'Admin\ForgotPasswordController@submitForgetPasswordForm')->name('forget.password.post');
        Route::get('reset-password/{token}', 'Admin\ForgotPasswordController@showResetPasswordForm')->name('reset.password.get');
        Route::post('reset-password', 'Admin\ForgotPasswordController@submitResetPasswordForm')->name('reset.password.post');
    });

    Route::middleware(['auth:admin'])->group(function() {
        // dashboard
        Route::get('/home', 'Admin\AdminController@home')->name('home');
        Route::get('/profile', 'Admin\ProfileController@index')->name('admin.profile');
		Route::post('/profile', 'Admin\ProfileController@update')->name('admin.profile.update');
		Route::post('/changepassword', 'Admin\ProfileController@changePassword')->name('admin.profile.changepassword');

        // category
        Route::prefix('category')->name('category.')->group(function () {
            Route::get('/', 'Admin\CategoryController@index')->name('index');
            // Route::get('/active', 'Admin\CategoryController@activeCategory')->name('active');
            // Route::get('/inactive', 'Admin\CategoryController@inactiveCategory')->name('inactive');
            Route::post('/store', 'Admin\CategoryController@store')->name('store');
            Route::get('/{id}/view', 'Admin\CategoryController@show')->name('view');
            Route::post('/{id}/update', 'Admin\CategoryController@update')->name('update');
            Route::get('/{id}/status', 'Admin\CategoryController@status')->name('status');
            Route::get('/{id}/delete', 'Admin\CategoryController@destroy')->name('delete');
            Route::get('/bulkDelete', 'Admin\CategoryController@bulkDestroy')->name('bulkDestroy');
        });

       // sub-category
        Route::prefix('subcategory')->name('subcategory.')->group(function () {
            Route::get('/', 'Admin\SubCategoryController@index')->name('index');
            Route::post('/store', 'Admin\SubCategoryController@store')->name('store');
            Route::get('/{id}/view', 'Admin\SubCategoryController@show')->name('view');
            Route::post('/{id}/update', 'Admin\SubCategoryController@update')->name('update');
            Route::get('/{id}/status', 'Admin\SubCategoryController@status')->name('status');
            Route::get('/{id}/delete', 'Admin\SubCategoryController@destroy')->name('delete');
            Route::get('/bulkDelete', 'Admin\SubCategoryController@bulkDestroy')->name('bulkDestroy');
        });

        // collection
        Route::prefix('collection')->name('collection.')->group(function () {
            Route::get('/', 'Admin\CollectionController@index')->name('index');
            Route::post('/store', 'Admin\CollectionController@store')->name('store');
            Route::get('/{id}/view', 'Admin\CollectionController@show')->name('view');
            Route::post('/{id}/update', 'Admin\CollectionController@update')->name('update');
            Route::get('/{id}/status', 'Admin\CollectionController@status')->name('status');
            Route::get('/{id}/delete', 'Admin\CollectionController@destroy')->name('delete');
            Route::get('/bulkDelete', 'Admin\CollectionController@bulkDestroy')->name('bulkDestroy');
        });

        // coupon
        Route::prefix('coupon')->name('coupon.')->group(function() {
            Route::get('/', 'Admin\CouponController@index')->name('index');
            Route::post('/store', 'Admin\CouponController@store')->name('store');
            Route::get('/{id}/view', 'Admin\CouponController@show')->name('view');
            Route::post('/{id}/update', 'Admin\CouponController@update')->name('update');
            Route::get('/{id}/status', 'Admin\CouponController@status')->name('status');
            Route::get('/{id}/delete', 'Admin\CouponController@destroy')->name('delete');
        });

        // offer
        Route::prefix('offer')->name('offer.')->group(function() {
            Route::get('/', 'Admin\OfferController@index')->name('index');
            Route::post('/offer', 'Admin\OfferController@store')->name('store');
            Route::get('/{id}/view', 'Admin\OfferController@show')->name('view');
            Route::post('/{id}/update', 'Admin\OfferController@update')->name('update');
            Route::get('/{id}/status', 'Admin\OfferController@status')->name('status');
            Route::get('/{id}/delete', 'Admin\OfferController@destroy')->name('delete');
        });

        // order
        Route::prefix('order')->name('order.')->group(function () {
            Route::get('/', 'Admin\OrderController@index')->name('index');
            Route::post('/store', 'Admin\OrderController@store')->name('store');
            Route::get('/{id}/view', 'Admin\OrderController@show')->name('view');
            Route::post('/{id}/update', 'Admin\OrderController@update')->name('update');
            Route::get('/{id}/status/{status}', 'Admin\OrderController@status')->name('status');
        });


        // transaction
        Route::prefix('transaction')->name('transaction.')->group(function() {
            Route::get('/', 'Admin\TransactionController@index')->name('index');
            Route::get('/{id}/view', 'Admin\TransactionController@show')->name('view');
        });

        // store
        Route::prefix('store')->name('store.')->group(function() {
            Route::get('/', 'Admin\StoreController@index')->name('index');
            Route::post('/store', 'Admin\StoreController@store')->name('store');
            Route::get('/{id}/view', 'Admin\StoreController@show')->name('view');
            Route::post('/{id}/update', 'Admin\StoreController@update')->name('update');
            Route::get('/{id}/status', 'Admin\StoreController@status')->name('status');
            Route::get('/{id}/delete', 'Admin\StoreController@destroy')->name('delete');
        });

        // user
        Route::prefix('user')->name('user.')->group(function() {
            Route::get('/list/{userType}', 'Admin\UserController@index')->name('index');
            Route::view('/create', 'admin.user.create')->name('create');
            Route::post('/store', 'Admin\UserController@store')->name('store');
            Route::get('/{id}/view', 'Admin\UserController@show')->name('view');
            Route::post('/{id}/update', 'Admin\UserController@update')->name('update');
            Route::get('/{id}/status', 'Admin\UserController@status')->name('status');
            Route::get('/{id}/verification', 'Admin\UserController@verification')->name('verification');
            Route::get('/{id}/delete', 'Admin\UserController@destroy')->name('delete');
        });

        // staff
        Route::prefix('staff')->name('staff.')->group(function() {
            Route::get('/', 'Admin\UserController@staffList')->name('index');
            Route::view('/create', 'admin.staff.create')->name('create');
            Route::post('/store', 'Admin\UserController@storeStaff')->name('store');
            Route::get('/{id}/view', 'Admin\UserController@showStaff')->name('view');
            Route::get('/{id}/edit', 'Admin\UserController@editStaff')->name('edit');

            Route::post('/{id}/update', 'Admin\UserController@updateStaff')->name('update');
            Route::get('/{id}/delete', 'Admin\UserController@destroyStaff')->name('delete');
        });

        //user activity
        Route::prefix('useractivity')->name('useractivity.')->group(function() {
            Route::get('/', 'Admin\ActivityController@index')->name('index');
            Route::get('/{id}/view', 'Admin\ActivityController@show')->name('view');
        });

        // product
        Route::prefix('product')->name('product.')->group(function () {
            Route::get('/list', 'Admin\ProductController@index')->name('index');
            Route::get('/create', 'Admin\ProductController@create')->name('create');
            Route::post('/store', 'Admin\ProductController@store')->name('store');
            Route::get('/{id}/view', 'Admin\ProductController@show')->name('view');
            Route::post('/size', 'Admin\ProductController@size')->name('size');
            Route::get('/{id}/edit', 'Admin\ProductController@edit')->name('edit');
            Route::post('/update', 'Admin\ProductController@update')->name('update');
            Route::get('/{id}/status', 'Admin\ProductController@status')->name('status');
            Route::get('/{id}/sale', 'Admin\ProductController@sale')->name('sale');
            Route::get('/{id}/trending', 'Admin\ProductController@trending')->name('trending');
            Route::get('/{id}/delete', 'Admin\ProductController@destroy')->name('delete');
            Route::get('/{id}/image/delete', 'Admin\ProductController@destroySingleImage')->name('image.delete');
            Route::get('/bulkDelete', 'Admin\ProductController@bulkDestroy')->name('bulkDestroy');
        });

        // address
        Route::prefix('address')->name('address.')->group(function() {
            Route::get('/', 'Admin\AddressController@index')->name('index');
            Route::post('/store', 'Admin\AddressController@store')->name('store');
            Route::get('/{id}/view', 'Admin\AddressController@show')->name('view');
            Route::post('/{id}/update', 'Admin\AddressController@update')->name('update');
            Route::get('/{id}/status', 'Admin\AddressController@status')->name('status');
            Route::get('/{id}/delete', 'Admin\AddressController@destroy')->name('delete');
        });

        // faq
        Route::prefix('faq')->name('faq.')->group(function() {
            Route::get('/', 'Admin\FaqController@index')->name('index');
            Route::post('/store', 'Admin\FaqController@store')->name('store');
            Route::get('/{id}/view', 'Admin\FaqController@show')->name('view');
            Route::post('/{id}/update', 'Admin\FaqController@update')->name('update');
            Route::get('/{id}/status', 'Admin\FaqController@status')->name('status');
            Route::get('/{id}/delete', 'Admin\FaqController@destroy')->name('delete');
        });

        // settings
        Route::prefix('settings')->name('settings.')->group(function () {
            Route::get('/', 'Admin\SettingsController@index')->name('index');
            Route::post('/store', 'Admin\SettingsController@store')->name('store');
            Route::get('/{id}/view', 'Admin\SettingsController@show')->name('view');
            Route::post('/{id}/update', 'Admin\SettingsController@update')->name('update');
            Route::get('/{id}/status', 'Admin\SettingsController@status')->name('status');
            Route::get('/{id}/delete', 'Admin\SettingsController@destroy')->name('delete');
            Route::get('/bulkDelete', 'Admin\SettingsController@bulkDestroy')->name('bulkDestroy');
        });

        // order
        Route::prefix('order')->name('order.')->group(function() {
            Route::get('/', 'Admin\OrderController@index')->name('index');
            Route::post('/store', 'Admin\OrderController@store')->name('store');
            Route::get('/{id}/view', 'Admin\OrderController@show')->name('view');
            Route::post('/{id}/update', 'Admin\OrderController@update')->name('update');
            Route::get('/{id}/status/{status}', 'Admin\OrderController@status')->name('status');
        });

        // transaction
        Route::prefix('transaction')->name('transaction.')->group(function() {
            Route::get('/', 'Admin\TransactionController@index')->name('index');
            Route::get('/{id}/view', 'Admin\TransactionController@show')->name('view');
        });
    });
});

Route::get('/home', 'HomeController@index')->name('home');
