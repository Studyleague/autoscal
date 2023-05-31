<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Str;
use Carbon\Carbon;

class HomeController extends Controller
{
    public function index()
    {
        return view('admin.home')->with('users_count', 200)->with('otp_count', 50);
    }

    public static function getFlagCount()
    {

    }

    public function otp()
    {
        $otps = DB::table('otps')->get();
        return view('admin.otp')->with('otps', $otps);
    }

}
