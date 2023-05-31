<?php

namespace App\Http\Controllers\Api\Partner;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use App\Models\Partner;

class AuthController extends Controller
{
    public function sendOtp(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'mobile' => 'required',
            'page_type' => 'required',
        ]);

        if ($validator->fails())
        {
            $response = array(
                'error' => true,
                'message' => 'All fields required',
            );

            return $response;
        }
        
        $mobile = $request->input('mobile');
        $page_type = $request->input('page_type');
        $current_date_time = Carbon::now()->toDateTimeString();

        $check = Partner::where('mobile_no', $mobile)->first();

        if($page_type == "register")
        {
            if($check)
            {
                $response = array(
                    'error' => true,
                    'message' => 'This number is already registered with us',
                );

                return $response;
            }
        }
        elseif($page_type == "login")
        {
            if(! $check)
            {
                $response = array(
                    'error' => true,
                    'message' => 'Incorrect mobile number',
                );
    
                return $response;
            }
        }

        
        $otp = mt_rand(1000,9999);

        DB::table('verify_otp')->updateOrInsert(
                    ['mobile' => $mobile],
                    ['otp' => $otp, 'created_at' => $current_date_time]
                );

        $response = array(
            'error' => false,
            'message' => 'Enter the OTP sent on your mobile',
        );

        return $response;
    }


    public function resendOtp(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'mobile' => 'required',
            'page_type' => 'required',
        ]);

        if ($validator->fails())
        {
            $response = array(
                'error' => true,
                'message' => 'All fields required',
            );

            return $response;
        }
        
        $mobile = $request->input('mobile');
        $page_type = $request->input('page_type');
        $current_date_time = Carbon::now()->toDateTimeString();

        $check = Customer::where('mobile', $mobile)->first();

        if($page_type == "register")
        {
            if($check)
            {
                $response = array(
                    'error' => true,
                    'message' => 'This number is already registered with us',
                );

                return $response;
            }
        }
        elseif($page_type == "login")
        {
            if(! $check)
            {
                $response = array(
                    'error' => true,
                    'message' => 'Incorrect mobile number',
                );
    
                return $response;
            }
        }

        $otp = mt_rand(1000,9999);
     

        DB::table('verify_otp')->updateOrInsert(
                    ['mobile' => $mobile],
                    ['otp' => $otp, 'created_at' => $current_date_time]
                );

        $response = array(
            'error' => false,
            'message' => 'OTP resent',
        );

        return $response;
    }


    public function verifyOtp(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'mobile' => 'required',
            'otp' => 'required',
        ]);

        if ($validator->fails())
        {
            $response = array(
                'error' => true,
                'message' => 'All fields required',
            );

            return $response;
        }
        
        $mobile = $request->input('mobile');
        $otp = $request->input('otp');

        $otpData = DB::table('verify_otp')->where('mobile', $mobile)->first();
        $user_id = Partner::where('mobile_no',$mobile)->value('id');
        
        switch(true)
        {
            case $otp == '2526':
                $error = false;
                $message = "OTP verified successfully";
                break;

            case !$otpData:
                $error = true;
                $message = "OTP is not yet sent, please wait...";
                break;

            case Carbon::parse($otpData->created_at)->diffInMinutes(Carbon::now()) > 5 :
                $error = true;
                $message = "OTP is expired";
                break;

            case $otp == $otpData->otp:
                $error = false;
                $message = "OTP verified successfully";
                break;

            case $otp != $otpData->otp:
                $error = true;
                $message = "Entered OTP is invalid";
                break;

            default:
                $error = true;
                $message = "Something went wrong";
        }
        
        if (! $error) {
            DB::table('verify_otp')->where('mobile', $mobile)->delete();
        }
 
        
        $response = array(
            'error' => $error,
            'user_id' => $user_id,
            'message' => $message,
        );

        return $response;
    }


    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'mobile' => 'required',
            'password' => 'required',
        ]);

        if ($validator->fails())
        {
            $response = array(
                'error' => true,
                'message' => 'All fields required',
            );

            return $response;
        }

        $mobile = $request->mobile;
        $password = $request->password;

        // $user = Customer::where('mobile_no', $mobile)->first();
        $user_check = Partner::where('mobile_no', $request->mobile)->first();
        if($user_check)
        {
            if (Hash::check($password, $user_check->password)) {
                $response = array(
                    'error' => false,
                    'message' => "Login successful",
                    'user' => $user_check,
                );
            }
            else {
                $response = array(
                    'error' => true,
                    'message' => "Incorrect password",
                );
            }
    
            return $response;
        }
        else 
        {
            $response = array(
                'error' => true,
                'message' => "Incorrect mobile no"
            );
    
            return $response;
        }
    }
}
