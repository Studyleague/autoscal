<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Payment;
use App\Models\Order;
use App\Models\User;

class TransactionController extends Controller
{
    public function index()
    {
        $order_id_array = array();
        $pay_info = Payment::select('order_id')->where('status','0')->get();
        if($pay_info)
        {
            foreach($pay_info as $pay)
            {
                array_push($order_id_array,$pay->order_id);
            }

            Order::whereIn('id',$order_id_array)->delete();
        }
        Payment::where('status','0')->delete();

        Payment::where('flag','0')
        ->update(['flag'=>'1']);
        $transaction_info = Payment::with(['order:id,order_no,discount','user:id,name,email,mobile'])->orderBy('id','desc')->get();

        return view('admin.transactions',['transactions'=>$transaction_info]);
    }
}
