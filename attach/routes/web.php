<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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
//     return view('home');
// });
Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('/');
Route::get('/privacy', function(){
    return view('privacy');
});
Route::get('/terms', function(){
    return view('terms');
});
Route::get('/error/{msg}', function(){
    return view('error');
})->name('error');
Route::get('/success', function(){
    return view('success');
})->name('success');
Route::get('/refund', function(){
    return view('refund');
});
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/sub_category/{service_id}', [App\Http\Controllers\HomeController::class, 'subCategory'])->name('sub_category');
Route::get('/cat_by_id/{service_id}', [App\Http\Controllers\HomeController::class, 'catById'])->name('cat_by_id');
Route::get('/child_cat_by_id/{sub_service_id}', [App\Http\Controllers\HomeController::class, 'childCatById'])->name('child_cat_by_id');
Route::get('/service_details/{vendor_service_id}', [App\Http\Controllers\HomeController::class, 'serviceDetails'])->name('service_details');

Route::get('/dashboard', [App\Http\Controllers\DashboardController::class, 'dashboard'])->name('dashboard');
Route::post('change-profile-photo', [App\Http\Controllers\DashboardController::class, 'changeProfilePhoto'])->name('change-profile-photo');
// Route::get('/home', function () {
//     return view('home');
// });




Route::group(['prefix'=>'QwertyAsdf'], function(){

    Route::middleware(['PreventBackHistory'])->group(function(){
        // Guest Users
        Route::group(['middleware'=>'admin.guest'], function(){
            Route::view('login', 'admin.login')->name('admin.login');
            Route::view('/', 'admin.login')->name('admin./');
            Route::post('login', [App\Http\Controllers\Admin\AdminController::class, 'login'])->name('admin.auth');
        });

        // Authenticated users
        Route::group(['middleware'=>'admin.auth'], function(){
            // Route::view('home', 'admin.home')->name('admin.home');
            Route::get('home', [App\Http\Controllers\Admin\HomeController::class, 'index'])->name('admin.home');
            Route::get('change_password', [App\Http\Controllers\Admin\AdminController::class, 'showChangePassword'])->name('admin.change_password');
            Route::post('change-password', [App\Http\Controllers\Admin\AdminController::class, 'changePassword'])->name('admin.change-password');
            Route::post('logout', [App\Http\Controllers\Admin\AdminController::class, 'logout'])->name('admin.logout');
            Route::get('otp', [App\Http\Controllers\Admin\HomeController::class, 'otp'])->name('admin.otp');

            //Models
            Route::post('add_model', [App\Http\Controllers\Admin\ModelsController::class, 'store'])->name('admin.add_model');
            Route::get('models',[App\Http\Controllers\Admin\ModelsController::class, 'index'])->name('admin.models');
            Route::post('edit_model',[App\Http\Controllers\Admin\ModelsController::class, 'update'])->name('admin.edit_model');
            Route::get('model_delete/{id}',[App\Http\Controllers\Admin\ModelsController::class, 'destroy'])->name('admin.model_delete');

            //Partner
            Route::post('partner_add', [App\Http\Controllers\Admin\PartnerController::class, 'store'])->name('admin.partner_add');
            Route::post('partner_edit', [App\Http\Controllers\Admin\PartnerController::class, 'update'])->name('admin.partner_edit');
            Route::get('add_partner', [App\Http\Controllers\Admin\PartnerController::class, 'index'])->name('admin.add_partner');
            Route::get('delete_partner/{id}', [App\Http\Controllers\Admin\PartnerController::class, 'destroy'])->name('admin.delete_partner');

            //sliders
            Route::get('sliders',[App\Http\Controllers\Admin\SliderController::class, 'index'])->name('admin.sliders');
            // Request Controller
            // Users Controller
            Route::get('orders',[App\Http\Controllers\Admin\OrderController::class, 'index'])->name('admin.orders');
            Route::get('cancel_orders',[App\Http\Controllers\Admin\OrderController::class, 'cancel_orders'])->name('admin.cancel_orders');
            Route::post('document_status',[App\Http\Controllers\Admin\OrderController::class, 'document_status'])->name('admin.document_status');
            Route::post('assign_partner',[App\Http\Controllers\Admin\OrderController::class, 'assign_partner'])->name('admin.assign_partner');
            Route::get('user_orders/{id}',[App\Http\Controllers\Admin\OrderController::class, 'user_orders'])->name('admin.user_orders');
            Route::view('user_orders','admin.user_orders')->name('admin.user_orders');
            Route::get('users', [App\Http\Controllers\Admin\UserController::class, 'index'])->name('admin.users');
            Route::get('user_pets/{id}', [App\Http\Controllers\Admin\UserController::class, 'user_pets'])->name('admin.user_pets');

            Route::get('pending_pets', [App\Http\Controllers\Admin\UserController::class, 'pending_pets'])->name('admin.pending_pets');
            Route::post('/deactivate-user',[App\Http\Controllers\Admin\CustomerController::class,'deactivateUser'])->name('admin.deactivate-user');
            Route::post('/activate-user',[App\Http\Controllers\Admin\CustomerController::class,'activateUser'])->name('admin.activate-user');

            // Partner Controller

            // Slider Controller
            // Route::get('sliders', [App\Http\Controllers\Admin\SliderController::class, 'index'])->name('admin.sliders');
            Route::post('add_slider', [App\Http\Controllers\Admin\SliderController::class, 'store'])->name('admin.add_slider');
            Route::get('delete_slider/{id}', [App\Http\Controllers\Admin\SliderController::class, 'destroy'])->name('admin.delete_slider');

            Route::get('car_insuarance', [App\Http\Controllers\Admin\InsuaranceController::class, 'insuarance'])->name('admin.car_insuarance');
            Route::get('car_loan', [App\Http\Controllers\Admin\InsuaranceController::class, 'loan'])->name('admin.car_loan');
            Route::get('car_transfer', [App\Http\Controllers\Admin\InsuaranceController::class, 'transfer'])->name('admin.car_transfer');

            Route::get('coupons', [App\Http\Controllers\Admin\CouponController::class, 'index'])->name('admin.coupons');
            Route::post('add_coupon', [App\Http\Controllers\Admin\CouponController::class, 'store'])->name('admin.add_coupon');
            Route::post('coupon_delete', [App\Http\Controllers\Admin\CouponController::class, 'delete'])->name('admin.coupon_delete');
            Route::post('edit_coupon', [App\Http\Controllers\Admin\CouponController::class, 'edit'])->name('admin.edit_coupon');
            Route::post('update_coupon', [App\Http\Controllers\Admin\CouponController::class, 'update'])->name('admin.update_coupon');

            // Transaction
            Route::get('transactions', [App\Http\Controllers\Admin\TransactionController::class, 'index'])->name('admin.transactions');


        });
    });
});



Route::group(['prefix'=>'vendor'], function(){
    // Guest Users
    Route::group(['middleware'=>'vendor.guest'], function(){
        // Route::view('login', 'vendors.login')->name('vendor.login');
        // Route::view('login', 'home')->name('vendor.login');
        Route::get('login', [App\Http\Controllers\Vendor\VendorController::class, 'showLogin'] )->name('vendor.login');
        Route::post('login', [App\Http\Controllers\Vendor\VendorController::class, 'login'])->name('vendor.auth');
    });

    // Authenticated users
    Route::group(['middleware'=>'vendor.auth'], function(){
        Route::view('home', 'vendors.home')->name('vendor.home');
        Route::post('logout', [App\Http\Controllers\Vendor\VendorController::class, 'logout'])->name('vendor.logout');


        Route::get('register-seller', [App\Http\Controllers\Vendor\DashboardController::class, 'viewForm'])->name('vendor.register-seller');
        Route::get('dashboard', [App\Http\Controllers\Vendor\DashboardController::class, 'dashboard'])->name('vendor.dashboard');
        Route::post('change-vendor-logo', [App\Http\Controllers\Vendor\DashboardController::class, 'changeVendorLogo'])->name('vendor.change-vendor-logo');
        Route::post('change-freelancer-logo', [App\Http\Controllers\Vendor\DashboardController::class, 'changeFreelancerLogo'])->name('vendor.change-freelancer-logo');
        Route::get('add-service', [App\Http\Controllers\Vendor\DashboardController::class, 'addService'])->name('vendor.add-service');
        Route::get('get-sub-category', [App\Http\Controllers\Vendor\DashboardController::class, 'getSubcategory'])->name('vendor.get-sub-category');
    });

});
