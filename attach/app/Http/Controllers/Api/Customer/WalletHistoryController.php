<?php

namespace App\Http\Controllers\Api\Customer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WalletHistory;
use App\Models\Customer;
use Illuminate\Support\Facades\Validator;
use DB;

class WalletHistoryController extends Controller
{
    public function payParameter($user_id,$amount)
    {
        //Test Credentials
        $secretKey = "4874a5be89a7d2f5348bdf42fd908a1ebac90841";
        $appId = "1780217dcf9e633af3ae1a9363120871";

        //Request Parameters
        $user_id = $user_id;
        $amount = $amount;

        do
        {
            $txn_id = "TXN" . time();
            $transaction_history = DB::table('wallet_history')->where('txn_id',$txn_id)->get();
        }
        
        while (is_array($transaction_history));

        $user_info = DB::table('customers')->where('id',$user_id)->first();

        $mode = 'TEST';
        $orderId = $txn_id.'_'.$user_id;
        $orderAmount = $amount;
        $orderCurrency = "INR";
        $returnUrl = "http://localhost:8000/api/customer/payment_response";
        $customerName = $user_info->full_name;
        $customerPhone = $user_info->mobile_no;
        $customerEmail =  $user_info->email;
        $notifyUrl = "http://localhost:8000/";
        $orderNote = "test";

        $postData = array( 
            "appId" => $appId, 
            "orderId" => $orderId, 
            "orderAmount" => $orderAmount, 
            "orderCurrency" => $orderCurrency, 
            "orderNote" => $orderNote, 
            "customerName" => $customerName, 
            "customerPhone" => $customerPhone, 
            "customerEmail" => $customerEmail,
            "returnUrl" => $returnUrl, 
            "notifyUrl" => $notifyUrl,
          );

          ksort($postData);
          $signatureData = "";
          foreach ($postData as $key => $value){
              $signatureData .= $key.$value;
          }
          $signature = hash_hmac('sha256', $signatureData, $secretKey,true);
          $signature = base64_encode($signature);
          
          if ($mode == "PROD") {
            $url = "https://www.cashfree.com/checkout/post/submit";
          } else {
            $url = "https://test.cashfree.com/billpay/checkout/post/submit";
          }

          return view("payment", 
                    [
                        'appId' => $appId,
                        'orderId'=> $orderId,
                        'orderId'=>$orderId,
                        'orderAmount'=>$orderAmount,
                        'orderCurrency'=>$orderCurrency,
                        'orderNote'=>$orderNote,
                        'customerName'=>$customerName,
                        'customerPhone'=>$customerPhone,
                        'customerEmail'=>$customerEmail,
                        'returnUrl'=>$returnUrl,
                        'notifyUrl'=>$notifyUrl,
                        'signature'=>$signature,
                        'url'=>$url
                    ]);
    }

    public function payment_response(Request $request)
    {
        $secretkey = "4874a5be89a7d2f5348bdf42fd908a1ebac90841";
        $orderId = $request->orderId;
        $orderAmount = $request->orderAmount;
        $referenceId = $request->referenceId;
        $txStatus = $request->txStatus;
        $paymentMode = $request->paymentMode;
        $txMsg = $request->txMsg;
        $txTime = $request->txTime;
        $signature = $request->signature;
        
        $data = $orderId.$orderAmount.$referenceId.$txStatus.$paymentMode.$txMsg.$txTime;
        $hash_hmac = hash_hmac('sha256', $data, $secretkey, true) ;
        $computedSignature = base64_encode($hash_hmac);

        if ($signature == $computedSignature) 
        {
            if($txStatus == 'SUCCESS')
            {
                $orderId = explode("_",$orderId);
                $txn_id = $orderId[0];
                
                $user_id = $orderId[1];
                
                $current_date = date("Y-m-d");
                
                $wallet = new WalletHistory;
                
                $wallet->amount = $orderAmount;
                $wallet->txn_type = 1;
                $wallet->type = 'Wallet Recharge';
                $wallet->txn_id = $txn_id;
                $wallet->txn_status = $txStatus;
                $wallet->txMsg = $txMsg;
                $wallet->pay_mode = $paymentMode;
                $wallet->signature = $signature;
                $wallet->txTime = $txTime;
                $wallet->user_id = $user_id;
                $wallet->save();

                $customer_info = Customer::where('id',$user_id)->first();
                $wallet_balance = $customer_info->wallet + $orderAmount;

                Customer::where('id',$user_id)
                    ->update(['wallet' => $wallet_balance]);    
                
                return redirect()->route('success',['txStatus' => $txStatus]);
                    
                
            }
            else
            {
                return redirect()->route('error', ['txStatus' => $txStatus]);
            }
        }
        else
        {
            return redirect()->route('error', ['txStatus' => $txStatus]);
        }
    }
    public function response_result($txStatus)
    {
        
    }
}
