<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Coupon;
date_default_timezone_set('Asia/Kolkata');

class CouponController extends Controller
{
    public function index(Request $request)
    {
        $coupons = Coupon::orderBy('id','desc')->get();

        return view('admin.coupons')->with(['coupons'=>$coupons]);
    }

    public function store(Request $request)
    {
        $coupon = trim(htmlentities($request->coupon_name,ENT_QUOTES));
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        $min_order_amt = $request->min_order_amt;
        $discount = $request->discount;
        $value_type = $request->value_type;
        $no_of_time_use = $request->no_of_time_use;
        $no_of_users = $request->no_of_users;

        if($end_date > $start_date)
        {
            if($no_of_users > 0)
            {
                $coupon_code = Coupon::where(['coupon_name'=>$coupon,'status'=>1])->value('coupon_name');
                if(strtolower($coupon)===strtolower($coupon_code))
                {
                    $data["response"] = "n";
                    $data["message"] = "Coupon code already exists";
                    return json_encode($data);
                }
                else
                {
                    $conn = new Coupon;
                    $conn->coupon_name = $coupon;
                    $conn->no_of_time_use = $no_of_time_use;
                    $conn->min_order_amt = $min_order_amt;
                    $conn->value = $discount;
                    $conn->value_type = $value_type;
                    $conn->start_date = $start_date;
                    $conn->expiry_date = $end_date;
                    $conn->coupon_type = 'Discount';
                    $conn->no_of_users = $no_of_users;
                    $conn->status = 1;
                    $conn->created_on = date("Y-m-d H:i:s");
                    $conn->save();

                    $response = array("response"=>"y","message"=>"Coupon added successfully");

                    return json_encode($response);
                }
            }
            else
            {
                $response = array("response"=>"n","message"=>"No of users should always greater 0");
                return json_encode($response);
            }
        }
        else
        {
            $response = array("response"=>"n","message"=>"Start date should always less than expiry date");
            return json_encode($response);
        }
    }

    public function edit(Request $request)
    {
        $id = $request->id;

        $coupon = Coupon::where('id',$id)->first();
        $coupon['response'] = "y";
        return json_encode($coupon);
    }

    public function update(Request $request)
    {
        $id = $request->id;
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        $min_order_amt = $request->min_order_amt;
        $discount = $request->discount;
        $value_type = $request->value_type;
        $no_of_time_use = $request->no_of_time_use;
        $no_of_users = $request->no_of_users;

        Coupon::where('id',$id)
        ->update([
            'start_date' => $start_date,
            'expiry_date' => $end_date,
            'min_order_amt' => $min_order_amt,
            'value' => $discount,
            'value_type' => $value_type,
            'no_of_time_use' => $no_of_time_use,
            'no_of_users' => $no_of_users,
        ]);

        $response = array("response"=>"y","message"=>"Coupon updated successfully");

        return json_encode($response);
    }

    public function delete(Request $request)
    {
        $id = $request->id;
        Coupon::where('id',$id)->delete();

        $response = array("response"=>"y","message"=>"Coupon deleted successfully");
        return json_encode($response);
    }
}
