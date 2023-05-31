<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

use App\Models\Coupon;
use App\Models\Order;

date_default_timezone_set('Asia/Kolkata');
class CouponController extends Controller
{

    public function index()
    {
        $today = date('Y-m-d');
        $coupon_info = Coupon::where('status','1')
                        ->where('start_date','<=',$today)
                        ->where('expiry_date','>=',$today)
                        ->latest()->get();
        $result_array = array();
        if($coupon_info)
        {
            foreach ($coupon_info as $key => $value):
                if(strcmp($value->value_type,"Percent")==0 || strcmp($value->value_type,"percent")==0 )
                {
                    $detail = "Get $value->value % off on minimum order of ₹ $value->min_order_amt, expiring on $value->expiry_date ";
                }
                else
                {
                    $detail = "Get ₹ $value->value off on minimum order of ₹ $value->min_order_amt, expiring on $value->expiry_date";
                }
                array_push($result_array, array(
                    'ID' => $value->id,
                    'code' => $value->coupon_name,
                    'detail'=>$detail
                ));

            endforeach;

            $data["response"] = 'y';
            $data['error'] = false;
            $data["message"] = 'Data found';
            $data['result_array'] = $result_array;
            return $data;
        }
        else
        {
            $data["response"] = 'n';
            $data['error'] = true;
            $data["message"] = 'No result found';
            $data['result_array'] = $result_array;
            return $data;
        }
    }
    public function apply_coupon(Request $request)
    {
        $coupon_name = $request->coupon_name;
        $order_amt = $request->order_amt;
        $user_id = $request->user_id;
        $today = date('Y-m-d');

        $validator = Validator::make($request->all(), [
            'coupon_name' => 'required',
            'order_amt' => 'required',
            'user_id'   => 'required'
        ]);
        if ($validator->fails())
        {
            $response = array(
                'error' => true,
                'message' => 'All fields required',
            );

            return $response;
        }

        $coupon_rec = Coupon::where(['coupon_name'=> $coupon_name,'status'=>'1'])->first();
        if($coupon_rec):
            $coupon_id = $coupon_rec->id;
            $no_of_time_use = $coupon_rec->no_of_time_use;
            $no_of_users = $coupon_rec->no_of_users;
            $couponUsed = Order::where('coupon_id',$coupon_id)->count();
            if($couponUsed < $no_of_time_use):
                $couponUseduser = Order::where(['coupon_id' => $coupon_id,'user_id' => $user_id])->count();
                if($no_of_users > $couponUseduser):
                    if($coupon_rec->expiry_date >= $today):
                        if($order_amt >= $coupon_rec->min_order_amt):
                            $value = $coupon_rec->value;
                            $value_type = $coupon_rec->value_type;
                            $start_date = $coupon_rec->start_date;
                            $end_date = $coupon_rec->expiry_date;

                            $coupons = Coupon::where(['coupon_name'=> $coupon_name,'status'=>'1'])
                                            ->where('start_date','<=',$today)
                                            ->where('expiry_date','>=',$today)->first();
                            if($coupons):
                                $coupon_type =$coupons->coupon_type;
                                if($value_type == "Percent"):
                                    $discounted_amnt = round($order_amt*$value/100);
                                    $final_amnt = round($order_amt - $discounted_amnt);
                                else:
                                    $discounted_amnt =  round($value);
                                    $final_amnt = round($order_amt - $discounted_amnt);
                                endif;

                                $data['response'] = 'y';
                                $data['error']    = FALSE;
                                $data['final_amount']= $final_amnt;
                                $data['discount_amount']= $discounted_amnt;

                                if($coupon_type == 'Discount'):
                                    $show_discount = TRUE;
                                    $data['is_show'] = $show_discount;
                                    $data['message']  = 'Coupon applied successfully';
                                else:
                                    $show_discount = false;
                                    $data['is_show'] = $show_discount;
                                    $data['message']  = 'You get '.$discounted_amnt.' cashback on order completion';
                                endif;

                                return $data;
                            else:
                                $data["response"]='n';
                                $data['error'] = TRUE;
                                $data["message"]='Coupon expaired';
                                return $data;
                            endif;
                        else:
                            $data["response"]='n';
                            $data['error'] = TRUE;
                            $data["message"]='Min. order amount should be ₹ '.$coupon_rec->min_order_amt;
                            echo json_encode($data);
                        endif;
                    else:
                        $data["response"]='n';
                        $data['error'] = TRUE;
                        $data["message"]='Coupon Expired';
                        return $data;
                    endif;
                else:
                    $data["response"]='n';
                    $data['error'] = TRUE;
                    $data["message"]='Coupon user limit exceeded';
                    return $data;
                endif;
            else:
                $data["response"]='n';
                $data['error'] = TRUE;
                $data["message"]='Coupon used for maximum number of times';
                return $data;
            endif;
        else:
            $data["response"]='n';
            $data['error'] = TRUE;
            $data["message"]='Coupon code does not exist';
            return $data;
        endif;

    }
}
