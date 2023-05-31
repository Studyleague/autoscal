<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use App\Models\Notification;
use App\Models\User;
use App\Models\Partner;
use Log;

date_default_timezone_set('Asia/Kolkata');
class NotificationController extends Controller
{
    public function index(Request $request)
    {

        $user_id = $request->user_id;
        $created_on = User::where('id',$user_id)->value('created_at');
        $registered_date=date('Y-m-d H:i:s',strtotime($created_on));

        $notification = Notification::where(function ($query) use ($user_id) {
                        $query->where('user_id', '=', $user_id)
                            ->orWhere('type', '=', 0);
        })->where('created_at','>=',$registered_date)->get();

        return $notification;
    }

    public function partner_notification(Request $request)
    {
        $user_id = $request->user_id;
        $created_on = Partner::where('id',$user_id)->value('created_at');
        $registered_date=date('Y-m-d H:i:s',strtotime($created_on));
        // dd($registered_date);
        $notification = Notification::where(function ($query) use ($user_id) {
                        $query->where('partner_id', '=', $user_id)
                            ->orWhere('type', '=', 0);
        })->where('created_at','>=',$registered_date)->orderBy('id','desc')->get();

        return $notification;
    }
        
}
