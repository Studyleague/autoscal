<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slider;
use App\Models\Brand;
use App\Models\Review;
use App\Models\User;
use App\Models\Notification;
use DB;
use Carbon\Carbon;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $user_id = $request->user_id;
        $date = $request->date;
        $count = 0;
        if(isset($date))
        {
            $notification = Notification::where(function ($query) use ($user_id) {
                    $query->where('user_id', $user_id)
                          ->orWhere('type', '=', 0);
                })->where('created_at','>',$date)->get();

            $count = count($notification);
        }

        if($request->uuid && $user_id)
        {
            User::where('id',$user_id)->update(['uuid'=>$request->uuid]);
        }
        $slider_array = Slider::select('id','image_path')->latest()->get();
        $brand_array = Brand::select('id', 'name as brand_name','image_path')->get();
        // $date = Carbon::parse(reviews.created_at)->format('d M, Y | h:i:s');
        $review_array = Review::select('id','name','review', 'image_path','created_at')->get();


        $response = array(
            'sliders' =>$slider_array,
            'brands' =>$brand_array,
            'reviews' =>$review_array,
            'count' =>$count,
        );

        return $response;
    }
}
