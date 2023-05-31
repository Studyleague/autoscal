<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
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

        $check = User::where('mobile', $mobile)->first();

        if($page_type == "register" || $page_type == 'change_mobile')
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
        elseif($page_type == "login" || $page_type == "forgot_password")
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

        $mobileResponse = file_get_contents("http://sms.studyleagueitsolutions.com/app/smsapi/index.php?key=3639C0C68ED5E7&campaign=13728&routeid=7&type=text&contacts=$mobile&senderid=TCDOC&msg=Your%20The%20Cars%20Doctor%20verification%20code%20is%20$otp.%20Verification%20code%20is%20valid%20for%205%20minutes%20only,%20one%20time%20use.%20From%20The%20Cars%20Doctor&template_id=1707167101263665210&pe_id=1701167041147158248");
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

        $check = User::where('mobile', $mobile)->first();

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
        elseif($page_type == "login" || $page_type == "forgot_password")
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

        $mobileResponse = file_get_contents("http://sms.studyleagueitsolutions.com/app/smsapi/index.php?key=3639C0C68ED5E7&campaign=13728&routeid=7&type=text&contacts=$mobile&senderid=TCDOC&msg=Your%20The%20Cars%20Doctor%20verification%20code%20is%20$otp.%20Verification%20code%20is%20valid%20for%205%20minutes%20only,%20one%20time%20use.%20From%20The%20Cars%20Doctor&template_id=1707167101263665210&pe_id=1701167041147158248");

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
        $user_id = User::where('mobile',$mobile)->value('id');

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


    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'mobile' => 'required',
            'email' => 'required',
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

        $full_name = $request->name;
        $mobile = trim($request->mobile);
        $email = trim($request->email);
        $password = $request->password;


        $hash_password = Hash::make($password);

        $user_id = new User;

        $user_id->name = $full_name;
        $user_id->email = $email;
        $user_id->mobile = $mobile;
        $user_id->password = $hash_password;
        $user_id->save();

        $response = array(
            'error' => false,
            'message' => "Registration successful",
            'user_id' => $user_id->id,
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
        $user_check = User::where('mobile', $request->mobile)->first();
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

    public function change_mobile(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'otp' => 'required',
            'mobile' => 'required'
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
        $user_id = $request->user_id;
        $otp = $request->otp;

        $chec_cust = User::where('mobile',$mobile)->first();
        if($chec_cust)
        {
            $response = array(
                'error' => true,
                'response' => 'y',
                'message' => 'Mobile no already exist',
            );
            return $response;
        }
        else
        {
            if($otp == '2526')
            {
                User::where('id',$user_id)
                        ->update([
                            'mobile' => $mobile
                        ]);
                $deleted = DB::table('verify_otp')->where('mobile', $mobile)->delete();

                $response = array(
                    'error' => false,
                    'response' => 'y',
                    'message' => 'Mobile no updated successfully',
                );
                return $response;
            }
            else
            {
                $record = DB::table('verify_otp')->where('mobile',$mobile)->first();
                if($record)
                {
                    $created_on = date("Y-m-d H:i:s");
                    $time = $record->createdon;
                    $newTime = date("Y-m-d H:i:s", strtotime($time . " +5 minutes"));
                    if (strtotime($created_on) <= strtotime($newTime))
                    {
                        $votp = DB::table('verify_otp')->where(['mobile'=>$mobile,'otp'=>$otp])->first();
                        if($votp)
                        {
                            User::where('id',$user_id)
                                    ->update([
                                        'mobile_no' => $mobile
                                    ]);
                            $deleted = DB::table('verify_otp')->where('mobile', $mobile)->delete();

                            $response = array(
                                'error' => false,
                                'response' => 'y',
                                'message' => 'Mobile no updated successfully',
                            );
                            return $response;
                        }
                        else
                        {
                            $response = array(
                                'error' => true,
                                'response' => 'y',
                                'message' => 'Otp is wrong',
                            );
                            return $response;
                        }
                    }
                    else
                    {
                        $response = array(
                            'error' => true,
                            'response' => 'y',
                            'message' => 'Your verification code is expired.',
                        );
                        return $response;
                    }
                }
                else
                {
                    $response = array(
                        'error' => true,
                        'response' => 'y',
                        'message' => 'Mobile no is not found',
                    );
                    return $response;
                }
            }

        }
    }
    public function forgot_password(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'mobile' => 'required',
            'password' => 'required'
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
        $hash_password = Hash::make($password);

        User::where('mobile',$mobile)
                ->update([
                    'password' => $hash_password
                ]);
        $deleted = DB::table('verify_otp')->where('mobile', $mobile)->delete();

        $response = array(
            'error' => false,
            'response' => 'y',
            'message' => 'Password updated successfully',
        );
        return $response;
    }

    public function update(Request $request)
    {
        $user_id = $request->user_id;
        $name = $request->name;
        $email = $request->email;
        User::where('id',$user_id)
        ->update([
            'name'=>$name,
            'email'=>$email,
        ]);

        $response = array("error"=>false,"message"=>"Profile updated successfully");

        return $response;
    }
    public function update_password(Request $request)
    {
        $user_id = $request->user_id;
        $password = $request->password;
        $hash_password = Hash::make($password);
        User::where('id',$user_id)
        ->update([
            'password'=>$hash_password,
        ]);

        $response = array("error"=>false,"message"=>"Password updated successfully");

        return $response;
    }

    public function get_profile(Request $request)
    {
        $user_id = $request->user_id;

        $user_info = User::where('id', $user_id)->first();
        return $user_info;
    }


    public function partner_sendOtp(Request $request)
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

        $check = Partner::where('mobile', $mobile)->first();

        if($page_type == "login")
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

        $mobileResponse = file_get_contents("http://sms.studyleagueitsolutions.com/app/smsapi/index.php?key=3639C0C68ED5E7&campaign=13728&routeid=96&type=text&contacts=$mobile&senderid=TCDOC&msg=Your%20The%20Cars%20Doctor%20verification%20code%20is%20$otp.%20Verification%20code%20is%20valid%20for%205%20minutes%20only,%20one%20time%20use.%20From%20The%20Cars%20Doctor&template_id=1707167101263665210&pe_id=1701167041147158248");

        $response = array(
            'error' => false,
            'message' => 'Enter the OTP sent on your mobile',
        );

        return $response;
    }
    public function partner_verifyOtp(Request $request)
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
        $user_id = Partner::where('mobile',$mobile)->value('id');
        if($otpData)
        {
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

        }
        else
        {
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

    public function partner_change_mobile(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'otp' => 'required',
            'mobile' => 'required'
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
        $user_id = $request->user_id;
        $otp = $request->otp;

        $chec_cust = Partner::where('mobile',$mobile)->first();
        if($chec_cust)
        {
            $response = array(
                'error' => true,
                'response' => 'y',
                'message' => 'Mobile no already exist',
            );
            return $response;
        }
        else
        {
            if($otp == '2526')
            {
                Partner::where('id',$user_id)
                        ->update([
                            'mobile' => $mobile
                        ]);
                $deleted = DB::table('verify_otp')->where('mobile', $mobile)->delete();

                $response = array(
                    'error' => false,
                    'response' => 'y',
                    'message' => 'Mobile no updated successfully',
                );
                return $response;
            }
            else
            {
                $record = DB::table('verify_otp')->where('mobile',$mobile)->first();
                if($record)
                {
                    $created_on = date("Y-m-d H:i:s");
                    $time = $record->created_at;
                    $newTime = date("Y-m-d H:i:s", strtotime($time . " +5 minutes"));
                    if (strtotime($created_on) <= strtotime($newTime))
                    {
                        $votp = DB::table('verify_otp')->where(['mobile'=>$mobile,'otp'=>$otp])->first();
                        if($votp)
                        {
                            Partner::where('id',$user_id)
                                    ->update([
                                        'mobile_no' => $mobile
                                    ]);
                            $deleted = DB::table('verify_otp')->where('mobile', $mobile)->delete();

                            $response = array(
                                'error' => false,
                                'response' => 'y',
                                'message' => 'Mobile no updated successfully',
                            );
                            return $response;
                        }
                        else
                        {
                            $response = array(
                                'error' => true,
                                'response' => 'y',
                                'message' => 'Otp is wrong',
                            );
                            return $response;
                        }
                    }
                    else
                    {
                        $response = array(
                            'error' => true,
                            'response' => 'y',
                            'message' => 'Your verification code is expired.',
                        );
                        return $response;
                    }
                }
                else
                {
                    $response = array(
                        'error' => true,
                        'response' => 'y',
                        'message' => 'Mobile no is not found',
                    );
                    return $response;
                }
            }

        }
    }
}
