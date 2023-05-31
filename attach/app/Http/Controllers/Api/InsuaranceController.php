<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CarInsuarance;
use App\Models\CarLoan;
use App\Models\CarTransfer;

class InsuaranceController extends Controller
{
    public function insuarance_store(Request $request)
    {
        $user_id =$request->user_id;
        $name =$request->name;
        $email =$request->email;
        $mobile =$request->mobile;

        $conn = new CarInsuarance;
        $conn->name = $request->name;
        $conn->email = $request->email;
        $conn->mobile = $request->mobile;
        $conn->user_id = $request->user_id;
        $conn->save();

        $response = array("response"=>"y","error"=>false,"message"=>"Form submitted successfully");
        return $response;
    }
    public function loan_store(Request $request)
    {
        $user_id =$request->user_id;
        $name =$request->name;
        $email =$request->email;
        $mobile =$request->mobile;

        $conn = new CarLoan;
        $conn->name = $request->name;
        $conn->email = $request->email;
        $conn->mobile = $request->mobile;
        $conn->user_id = $request->user_id;
        $conn->save();

        $response = array("response"=>"y","error"=>false,"message"=>"Form submitted successfully");
        return $response;
    }
    public function transfer_store(Request $request)
    {
        $user_id =$request->user_id;
        $name =$request->name;
        $email =$request->email;
        $mobile =$request->mobile;

        $conn = new CarTransfer;
        $conn->name = $request->name;
        $conn->email = $request->email;
        $conn->mobile = $request->mobile;
        $conn->user_id = $request->user_id;
        $conn->save();

        $response = array("response"=>"y","error"=>false,"message"=>"Form submitted successfully");
        return $response;
    }
}
