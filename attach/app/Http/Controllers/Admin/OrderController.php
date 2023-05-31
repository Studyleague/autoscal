<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Partner;
use App\Models\User;
use App\Models\Payment;
use App\Models\Notification;
date_default_timezone_set('Asia/Kolkata');

class OrderController extends Controller
{
    function sendnotification_all($player_id_array, $title, $message, $page_type_value, $img_url = "")
    {
        $title = array(
            "en" => $title
        );
        $content = array(
            "en" => $message
        );

        if($img_url != "")
        {
            $fields = array(
                'app_id' => 'fc3e9961-69d8-442b-858c-bc2a20defc7d',
                'headings' => $title,
                'include_player_ids' => $player_id_array,
                'content_available' => true,
                'sound'=>'default',
                'contents' => $content,
                'data' => array('page_type' => $page_type_value),
                'big_picture' => $img_url,
            );
        }
        else{
            $fields = array(
                'app_id' => 'fc3e9961-69d8-442b-858c-bc2a20defc7d',
                'headings' => $title,
                'include_player_ids' => $player_id_array,
                'content_available' => true,
                'sound'=>'default',
                'contents' => $content,
                'data' => array('page_type' => $page_type_value),
            );
        }


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
    public function index()
    {
        Order::where("flag","0")->where("status","!=","6")->update(['flag'=>"1"]);

        $orders = Order::with(['brand:id,name','model:id,model_no','user:id,name,mobile'])
                    ->where("status","!=","6")
                    ->orderBy('id','DESC')
                    ->get();
                    // ->toArray();
        $order_id_array = array();

        // $pay_info = Payment::select('order_id')->where('status','0')->get();
        // if($pay_info)
        // {
        //     foreach($pay_info as $pay)
        //     {
        //         array_push($order_id_array,$pay->order_id);
        //     }

        //     Order::whereIn('id',$order_id_array)->delete();
        // }
        // Payment::where('status','0')->delete();

        $partners = Partner::select('id','name')->get();

        return view("admin.orders")->with(['orders'=>$orders,'partners'=>$partners]);
    }

    public function cancel_orders()
    {
        Order::where("flag","0")->where("status","=","6")->update(['flag'=>"1"]);

        $orders = Order::with(['brand:id,name','model:id,model_no','user:id,name,mobile','partner:id,name'])
                    ->where('status','6')
                    ->orderBy('id','DESC')
                    ->get();
                    // ->toArray();
        // dd($orders->toArray());

        return view("admin.cancel_orders")->with(['orders'=>$orders]);
    }

    public function user_orders($id)
    {
        $user_id = base64_decode($id);

        $orders = Order::where("user_id",$user_id)->with(['brand:id,name','model:id,model_no','user:id,name,mobile'])
                    ->orderBy('id','DESC')
                    ->get();
                    // ->toArray();
        // dd($orders);
        $partners = Partner::select('id','name')->get();

        return view("admin.user_orders", ['orders'=>$orders,'partners'=>$partners]);
    }

    public function assign_partner(Request $request)
    {
        $id = $request->id;
        $order_id = $request->order_id;

        Order::where('id',$order_id)
        ->update([
            'partner_id'=>$id,
            'status'=>'2'
        ]);

        $order_no = Order::where('id',$order_id)->value('order_no');
        $uuid = Partner::where('id',$id)->value('uuid');

        $title = 'New Order Assigned';
        $message = 'New order '.$order_no.' has been assigned to you';

        $not_conn = new Notification;
        $not_conn->title = $title;
        $not_conn->message = $message;
        $not_conn->partner_id = $id;
        $not_conn->save();
        if($uuid)
        {
            $this->sendnotification($uuid, $title, $message);
        }

        $response = array("response"=>"y","message"=>"Partner assign successfully");

        return json_encode($response);
    }

    public function document_status(Request $request)
    {
        $id = $request->id;
        $status = $request->status;
        $reason = $request->reason;
        $data = array();
        $data['document_status'] = $status;
        if(isset($reason)):
            $data['reason'] = $reason;
        endif;
        ($status == 1) ? $st = 5 : $st = 4;
        $data['status'] = $st;

        Order::where('id',$id)
        ->update($data);

        if($status == 1)
        {
            $order_info = Order::where('id',$id)->first();
            if($order_info->partner_id)
            {
                $uuid = Partner::where('id',$order_info->partner_id)->value('uuid');

                $title = 'Order Report Approved';
                $message = 'Report for '.$order_info->order_no.' has been approved by the admin';
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


                $player_id = User::where('id',$order_info->user_id)->value('uuid');
                $title = 'Order report generated';
                $message = 'Congratulations! Your report for request '.$order_info->order_no.' has been generated. Check it in My Leads page';
                $not_conn = new Notification;
                $not_conn->title = $title;
                $not_conn->message = $message;
                $not_conn->user_id = $order_info->user_id;
                $not_conn->type = 1;
                $not_conn->save();
                if($player_id)
                {
                    $this->sendnotification($player_id, $title, $message);
                }

            }
        }
        else
        {
            $order_info = Order::where('id',$id)->first();
            if($order_info->partner_id)
            {
                $uuid = Partner::where('id',$order_info->partner_id)->value('uuid');

                $title = 'Order Report Rejected';
                $message = 'Report for '.$order_info->order_no.' has been rejected. Check the Remark & resubmit the report';

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
        }

        $response = array("response"=>"y","message"=>"Status changed successfully");
        // dd($response);
        return json_encode($response);
    }
}
