<?php

namespace App\Http\Controllers\Api\Customer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Models\Booking;
use App\Models\Review;

class ReviewController extends Controller
{
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required',
            'rating' => 'required',
        ]);

        if ($validator->fails())
        {
            $response = array(
                'error' => true,
                'message' => 'All fields required',
            );

            return $response;
        }

        $id = $request->id;
        $rating = $request->rating;
        $review = $request->review;
        $booking_info = Booking::where('id',$id)->first();
        $user_id = $booking_info->cust_id;
        $partner_id = $booking_info->partner_id;

        $review_conn = new Review;
        $review_conn->rating = $rating;
        $review_conn->user_id = $user_id;
        $review_conn->review = $review;
        $review_conn->partner_id = $partner_id;
        $review_conn->booking_id = $id;
        $review_conn->save();

        $response = array(
            'response' => 'y',
            'error' => false,
            'message'=> 'Review sent succeessfully',
        );

        return $response;
    }
}
