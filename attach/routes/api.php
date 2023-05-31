<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\BrandController;
use App\Http\Controllers\Api\HomeController;
use App\Http\Controllers\Api\CouponController;
use App\Http\Controllers\Api\NotificationController;
use App\Http\Controllers\Api\OrderController;
use App\Http\Controllers\Api\PartnerController;
use App\Http\Controllers\Api\VehicleController;
use App\Http\Controllers\Api\InsuaranceController;
use App\Http\Controllers\Api\PaymentController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/* Customer App Apis Start Customer Authantication */

Route::post('sendOTP', [AuthController::class, 'sendOtp']);
Route::post('resendOTP', [AuthController::class, 'resendOtp']);
Route::post('verifyOTP', [AuthController::class, 'verifyOtp']);
Route::post('signup', [AuthController::class, 'register']);
Route::post('signin', [AuthController::class, 'login']);
Route::post('change_mobile', [AuthController::class, 'change_mobile']);
Route::post('get_profile', [AuthController::class, 'get_profile']);
Route::post('edit_profile', [AuthController::class, 'update']);
Route::post('update_password', [AuthController::class, 'update_password']);
Route::post('forgot_password', [AuthController::class, 'forgot_password']);

Route::post('home', [HomeController::class, 'index']);
Route::get('get_brands', [BrandController::class, 'index']);
Route::post('get_model', [BrandController::class, 'get_model']);
Route::post('get_price', [BrandController::class, 'get_price']);

// Coupon
Route::get('get_coupons', [CouponController::class, 'index']);
Route::post('apply_coupon', [CouponController::class, 'apply_coupon']);

// Order
Route::get('place_order', [PaymentController::class, 'pay'])->name('place_order');
Route::post('my_orders', [OrderController::class, 'index']);
Route::post('/payment/status', [PaymentController::class,'paymentCallback'])->name('status');

//Notification
Route::post('get_notification', [NotificationController::class, 'index']);


//Enquiry Form
Route::post('car_insuarance', [InsuaranceController::class, 'insuarance_store']);
Route::post('car_loan', [InsuaranceController::class, 'loan_store']);
Route::post('car_transfer', [InsuaranceController::class, 'transfer_store']);
Route::post('customer_order_cancel', [OrderController::class, 'customer_order_cancel']);


// <!------------------------ PARTNER APP ROUTER ------------------------!>


Route::post('partner_sendOtp', [AuthController::class, 'partner_sendOtp']);
Route::post('partner_verifyOtp', [AuthController::class, 'partner_verifyOtp']);
Route::post('partner_change_mobile', [AuthController::class, 'partner_change_mobile']);

// Profile
Route::post('get_partner_profile', [PartnerController::class, 'show']);
Route::post('edit_partner_profile', [PartnerController::class, 'edit']);
Route::post('update_document', [PartnerController::class, 'update']);
Route::post('partner_orders', [OrderController::class, 'my_orders']);

Route::post('get_partner_notification', [NotificationController::class, 'partner_notification']);
Route::get('pdf', [VehicleController::class, 'generatePdf']);

// Vehicle Details
Route::post('update_vehicle_details', [VehicleController::class, 'store']);
Route::post('edit_vehicle_details', [VehicleController::class, 'edit']);

// Order
Route::post('partner_order_cancel', [OrderController::class, 'partner_order_cancel']);
Route::post('start_inspection', [OrderController::class, 'start_inspection']);
Route::post('order_details', [OrderController::class, 'show']);

// Route::get('/initiate',[PaymentController::class,'initiate'])->name('initiate.payment');
// Route::get('/payment',[PaymentController::class,'pay'])->name('make.payment');
// Route::post('/payment/status', [PaymentController::class,'paymentCallback'])->name('status');

