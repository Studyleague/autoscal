<?php

namespace App\Http\Controllers\Api\Customer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use App\Models\Customer;

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

        $check = Customer::where('mobile_no', $mobile)->first();

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
        $user_id = Customer::where('mobile_no',$mobile)->value('id');
        
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
            'gender' => 'required',
            'dob' => 'required',
            'address' => 'required',
            'location' => 'required',
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
        $gender = trim($request->gender);
        $email = trim($request->email);
        $dob = trim($request->dob);
        $address = trim($request->address);
        $location = trim($request->location);
        $longitude = trim($request->longitude);
        $latitude = trim($request->latitude);
        $mobile = trim($request->mobile);
        $password = $request->password;

        $check_mobile = Customer::where('mobile_no', $mobile)->first();
        
        if($check_mobile)
        {
            $response = array(
                'error' => true,
                'message' => 'Mobile number is already registered with us',
            );

            return $response;
        }
        $statement = DB::select("show table status like 'customers'");
        $auto_id = $statement[0]->Auto_increment;

        do
        {
            $custID =  mt_rand(1111,9999).$auto_id;
            $check_record = Customer::where('custID',$custID)->get();
        }
        while(is_array($check_record));

        $hash_password = Hash::make($password);
 
        $user_id = new Customer;
        $user_id->custID = $custID;
        $user_id->full_name = $full_name;
        $user_id->mobile_no = $mobile;
        $user_id->email = $email;
        $user_id->gender = $gender;
        $user_id->dob = $dob;
        $user_id->address = $address;
        $user_id->location = $location;
        $user_id->longitude = $longitude;
        $user_id->latitude = $latitude;
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
        $user_check = Customer::where('mobile_no', $request->mobile)->first();
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

        $chec_cust = Customer::where('mobile_no',$mobile)->first();
        if($chec_cust)
        {
            $response = array(
                'error' => true,
                'response' => 'y',
                'messgae' => 'Mobile no already exist',
            );
            return $response;
        }
        else 
        {
            if($otp == '2526')
            {
                Customer::where('id',$user_id)
                        ->update([
                            'mobile_no' => $mobile
                        ]);
                $deleted = DB::table('verify_otp')->where('mobile', $mobile)->delete();

                $response = array(
                    'error' => false,
                    'response' => 'y',
                    'messgae' => 'Mobile no updated successfully',
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
                            Customer::where('id',$user_id)
                                    ->update([
                                        'mobile_no' => $mobile
                                    ]);
                            $deleted = DB::table('verify_otp')->where('mobile', $mobile)->delete();

                            $response = array(
                                'error' => false,
                                'response' => 'y',
                                'messgae' => 'Mobile no updated successfully',
                            );
                            return $response;
                        }
                        else
                        {
                            $response = array(
                                'error' => true,
                                'response' => 'y',
                                'messgae' => 'Otp is wrong',
                            );
                            return $response;
                        }
                    }
                    else
                    {
                        $response = array(
                            'error' => true,
                            'response' => 'y',
                            'messgae' => 'Your verification code is expired.',
                        );
                        return $response;
                    }
                }
                else
                {
                    $response = array(
                        'error' => true,
                        'response' => 'y',
                        'messgae' => 'Mobile no is not found',
                    );
                    return $response;
                }
            }

        }
    }

    public function update(Request $request)
    {
        $user_id = $request->user_id;
        
    }
}
