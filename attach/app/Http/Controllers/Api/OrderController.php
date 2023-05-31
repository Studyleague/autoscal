<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\OrderResource;
use App\Http\Resources\OrderDetailsReource;
use App\Http\Resources\PartnerOrderResource;
use Illuminate\Support\Facades\Validator;
use DB;
use Carbon\Carbon;
use App\Models\Order;
use App\Models\Payment;
use App\Models\Notification;
use Log;
date_default_timezone_set('Asia/Kolkata');

class OrderController extends Controller
{
    function sendnotification($uuid, $title, $message)
    {
        $title = array(
            "en" => $title
        );
        $content = array(
            "en" => $message
        );
        $fields = array(
            'app_id' => 'fc3e9961-69d8-442b-858c-bc2a20defc7d',
            'headings' => $title,
            'include_player_ids' => array(
                $uuid
            ) ,
            'content_available' => true,
            'contents' => $content,
            // 'data' => array('page_type' => $page_type_value),
        );
        $headers = array(
            'Authorization: key= ZmY0MmM3ZDgtYTE5NC00YjNhLTllNDQtMzEwNjZjZjdlZmNj',
            'Content-Type: application/json; charset=utf-8'
        );
        $fields = json_encode($fields);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json; charset=utf-8',
            'Authorization: Basic ZmY0MmM3ZDgtYTE5NC00YjNhLTllNDQtMzEwNjZjZjdlZmNj'
        ));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $response = curl_exec($ch);
        curl_close($ch);

        return $response;
    }
    public function index(Request $request)
    {
        $user_id = $request->user_id;
        // Log::debug($request);
        $order_id_array = array();
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

        $orders = Order::with(['brand:id,name','model:id,model_no'])->where(['user_id'=>$user_id,])->orderBy('id','desc')->get();
        // dd($orders->toArray());
        return OrderResource::collection($orders);
        // return $orders;

    }

    public function show(Request $request)
    {
        $id = $request->id;
        // Log::debug($request);

        $orders = Order::with(['user:id,name,email,mobile','brand:id,name','model:id,model_no'])
                    ->where('id',$id)
                    ->first();

        return new OrderDetailsReource($orders);
        // return $orders;

    }

    public function store(Request $request)
    {
        // Log::debug($request);

        $user_id = $request->user_id;
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

        $response = array("error"=>false,"message"=>"Order placed successfully");

        return $response;
    }


    public function my_orders(Request $request)
    {
        $user_id = $request->user_id;
        $uuid = $request->uuid;
        $date = $request->date;

        $validator = Validator::make($request->all(), [
            'user_id' => 'required',
        ]);

        if ($validator->fails())
        {
            $response = array(
                'error' => true,
                'message' => 'All fields required',
            );

            return $response;
        }
        $count = 0;
        if(isset($date))
        {
            $notification = Notification::where(function ($query) use ($user_id) {
                    $query->where('partner_id', $user_id)
                          ->orWhere('type', '=', 0);
                })->where('created_at','>',$date)->get();

            $count = count($notification);
        }

        if($uuid)
        {
            Partner::where('id',$user_id)
            ->update(['uuid',$uuid]);
        }
        $order_id_array = array();
        $pay_info = Payment::select('order_id')->where(['status'=>'0'])->get();
        if($pay_info)
        {
            foreach($pay_info as $pay)
            {
                array_push($order_id_array,$pay->order_id);
            }

            Order::whereIn('id',$order_id_array)->delete();
        }
        Payment::where('status','0')->delete();


        $pending_orders = Order::
        with(['brand:id,name','model:id,model_no'])
        ->where(['partner_id'=>$user_id])
        // ->where(function ($query) {
        //     $query->whereIn('status', [2,3])
        //           ->orWhere('document_status', '=', 2);
        // })
        ->whereIn('status',[2,3])
        ->orderBy('id','desc')->get();

        $completed_orders = Order::
        with(['brand:id,name','model:id,model_no'])
        ->where(['partner_id'=>$user_id])->whereIn('status',[4,5])->orderBy('id','desc')->get();

        $pending_collection = PartnerOrderResource::collection($pending_orders);
        $completed_collection = PartnerOrderResource::collection($completed_orders);

        $response = array("error"=>false,"ongoing_order"=>$pending_collection,"completed_order"=>$completed_collection,"count"=>$count);
        return $response;
    }

    public function start_inspection(Request $request)
    {
        $id = $request->order_id;

        Order::where('id',$id)
        ->update(['status'=>'3']);

        $response = array("error"=>false,"message"=>"Inspection started");

        return $response;
    }

    public function customer_order_cancel(Request $request)
    {
        $id = $request->order_id;

        Order::where('id',$id)
        ->update(['status'=>'6','flag'=>'0']);

        $order_info = Order::where('id',$id)->first();
        if($order_info->partner_id)
        {
            $uuid = Partner::where('id',$order_info->partner_id)->value('uuid');
            $title = 'Order Cancelled';
            $message = $order_info->order_no.' has been canceled by the Customer';

            $not_conn = new Notification;
            $not_conn->title = $title;
            $not_conn->message = $message;
            $not_conn->partner_id = $order_info->partner_id;
            $not_conn->type = 2;
            $not_conn->save();

            if($uuid)
            {
                $this->sendnotification($uuid, $title, $message);
            }

        }

        $response = array("error"=>false,"message"=>"Order has been cancelled");

        return $response;
    }

    public function partner_order_cancel(Request $request)
    {
        $id = $request->order_id;

        Order::where('id',$id)
        ->update(['status'=>'1','partner_id'=>NULL,'flag'=>'0']);

        $response = array("error"=>false,"message"=>"Order has been cancelled");

        return $response;
    }
}
