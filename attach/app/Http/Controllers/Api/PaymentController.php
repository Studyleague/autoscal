<?php

namespace App\Http\Controllers\Api;

use App\Paytm;
use App\Models\User;
use App\Models\Order;
use App\Models\Payment;
use App\Models\PreOrder;
use App\Models\PrePayment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Anand\LaravelPaytmWallet\Facades\PaytmWallet;
date_default_timezone_set('Asia/Kolkata');

class PaymentController extends Controller
{

    // display a form for payment
    public function initiate()
    {
        return view('paytm');
    }

    public function pay(Request $request)
    {
        $order_id_array = array();
        $user_id = $request->user_id;

        $pay_info = Payment::select('user_id','order_id')->where(['status'=>'0','user_id'=>$user_id])->get();
        if($pay_info)
        {
            foreach($pay_info as $pay)
            {
                array_push($order_id_array,$pay->order_id);
            }

            Order::whereIn('id',$order_id_array)->delete();
        }

        Payment::where(['status'=>'0','user_id'=>$user_id])->delete();
        // Log::debug($request);

        $seller_name = $request->seller_name;
        $contact_no = $request->contact_no;
        $house_no = $request->house_no;
        $landmark = $request->landmark;
        $pincode = $request->pincode;
        $state = $request->state;
        $city = $request->city;
        $inspection_date = $request->inspection_date;
        $brand_id = $request->brand_id;
        $model_id = $request->model_id;
        $manfacturing_year = $request->manfacturing_year;
        $coupon_id = $request->coupon_id;
        $inspection_price = $request->inspection_price;
        $discount = $request->discount;
        $total = $request->total;

        $statement = DB::select("show table status like 'orders'");
        $auto_id = $statement[0]->Auto_increment;
        do
        {
            $order_ID =  rand(1111,9999).$auto_id;
            $check_record = Order::where('order_no',$order_ID)->get();
        }

        while(is_array($check_record));


        $order_conn = new Order;

        $order_conn->order_no = $order_ID;
        $order_conn->seller_name = $seller_name;
        $order_conn->contact_no = $contact_no;
        $order_conn->house_no = $house_no;
        $order_conn->landmark = $landmark;
        $order_conn->pincode = $pincode;
        $order_conn->state = $state;
        $order_conn->city = $city;
        $order_conn->inspection_date = $inspection_date;
        $order_conn->brand_id = $brand_id;
        $order_conn->model_id = $model_id;
        $order_conn->manfacturing_year = $manfacturing_year;
        $order_conn->coupon_id = $coupon_id;
        $order_conn->inspection_price = $inspection_price;
        $order_conn->discount = $discount;
        $order_conn->total = $total;
        $order_conn->user_id = $user_id;
        $order_conn->status = 1;

        $order_conn->save();
        $order_id = $order_conn->id;

        $porder_conn = new PreOrder;

        $porder_conn->order_id = $order_id;
        $porder_conn->order_no = $order_ID;
        $porder_conn->seller_name = $seller_name;
        $porder_conn->contact_no = $contact_no;
        $porder_conn->house_no = $house_no;
        $porder_conn->landmark = $landmark;
        $porder_conn->pincode = $pincode;
        $porder_conn->state = $state;
        $porder_conn->city = $city;
        $porder_conn->inspection_date = $inspection_date;
        $porder_conn->brand_id = $brand_id;
        $porder_conn->model_id = $model_id;
        $porder_conn->manfacturing_year = $manfacturing_year;
        $porder_conn->coupon_id = $coupon_id;
        $porder_conn->inspection_price = $inspection_price;
        $porder_conn->discount = $discount;
        $porder_conn->total = $total;
        $porder_conn->user_id = $user_id;
        $porder_conn->status = 1;

        $porder_conn->save();

        return response()->json([
            'success' => true,
            'message' => 'Order placed successfully!'
        ]);

        // $user_info = User::where('id',$user_id)->first();
        // $email = $user_info->email ?? 'test@gmail.com';
        // $userData = [
        //     'user_id' => $user_id, // user_id of user
        //     'order_id' => $order_id, // order_id of orders
        //     'name' => $seller_name, // Name of user
        //     'mobile' => $contact_no, //Mobile number of user
        //     'email' => $email, //Email of user
        //     'fee' => $total,
        //     'orderid' => time().$order_id.'-'.$order_id, //Order id
        //     // 'orderid' => $mobile."_".rand(1,1000)."-".$coupon_id."-".$discount."-".$price.'-'.$order_id.'-'.$user_id.'-'.$name.'-'.$mobile.'-'.$email //Order id
        // ];

        // $paytmuser = Payment::create($userData); // creates a new database record
        // $paytmuser1 = PrePayment::create($userData); // creates a new database record

        // $payment = PaytmWallet::with('receive');

        // $payment->prepare([
        //     'order' => $userData['orderid'],
        //     'user' => $user_id,
        //     'mobile_number' => $userData['mobile'],
        //     'email' => $userData['email'], // your user email address
        //     'amount' => $total, // amount will be paid in INR.
        //     'callback_url' => route('status') // callback URL
        // ]);
        // return $payment->receive();  // initiate a new payment
    }

    public function paymentCallback()
    {
        $transaction = PaytmWallet::with('receive');

        $response = $transaction->response();

        $order_id = $transaction->getOrderId(); // return a order id

        $transaction->getTransactionId(); // return a transaction id

        // update the db data as per result from api call
        if ($transaction->isSuccessful()) {
            $order_info = $response['ORDERID'];
            // dd($order_info);
            $order_info = explode('-',$order_info);
            $orderid = $order_info[0];
            $order_id = $order_info[1];

            Payment::where('order_id', $order_id)->update(['status' => 1, 'transaction_id' => $transaction->getTransactionId()]);
            Order::where('id', $order_id)->update(['payment_status' => 1]);
            PrePayment::where('order_id', $order_id)->update(['status' => 1, 'transaction_id' => $transaction->getTransactionId()]);
            PreOrder::where('order_id', $order_id)->update(['payment_status' => 1]);

            return redirect(route('success'));

        } else if ($transaction->isFailed()) {
            $order_info = $response['ORDERID'];
            // dd($order_info);
            $order_info = explode('-',$order_info);
            $orderid = $order_info[0];
            $order_id = $order_info[1];
            Payment::where('order_id',$order_id)->delete();
            Order::where('id',$order_id)->delete();
            // Paytm::where('order_id', $order_id)->update(['status' => 0, 'transaction_id' => $transaction->getTransactionId()]);
            return redirect(route('error',["msg"=> "Your payment is failed."]));

        } else if ($transaction->isOpen()) {
            $order_info = $response['ORDERID'];
            // dd($order_info);
            $order_info = explode('-',$order_info);
            $orderid = $order_info[0];
            $order_id = $order_info[1];
            Payment::where('order_id',$order_id)->update(['status'=>2]);
            PrePayment::where('order_id',$order_id)->update(['status'=>2]);
            // Order::where('id',$order_id)->delete();
            // Paytm::where('order_id', $order_id)->update(['status' => 2, 'transaction_id' => $transaction->getTransactionId()]);
            return redirect(route('error',['msg'=>'Your payment is processing.']));
        }
        $transaction->getResponseMessage(); //Get Response Message If Available
        Log::debug($transaction->getResponseMessage());
        // $transaction->getOrderId(); // Get order id
    }
}
