<?php

namespace App\Http\Controllers\Api\Customer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use DB;
use App\Models\Customer;
use App\Models\Slider;
use App\Models\Service;
use App\Models\Testimonial;
use App\Models\Booking;
use App\Models\Booking_status;
use App\Models\BookingProgress;
use App\Models\Otp;

class BookingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'required',
        ]);

        if ($validator->fails())
        {
            $response = array(
                'error' => true,
                'message' => 'All fields required',
            );

            return $response;
        }

        $user_id = $request->user_id;

        $booking_array = array();
        $booking_info = Booking::select('bookings.*','services.service_name','services.image_path')
                                ->leftJoin('services','bookings.service_id','=','services.id')->where('cust_id',$user_id)->orderBy('id','desc')->get();
        if($booking_info)
        {
            foreach($booking_info as $booking)
            {
                if($booking->status == 1): $status = 'Pending';
                elseif($booking->status == 2): $status = 'Accepted';
                elseif($booking->status == 3): $status = 'Partner Assign';
                elseif($booking->status == 4): $status = 'In Progress';
                elseif($booking->status == 5): $status = 'Completed';
                elseif($booking->status == 6): $status = 'Completed & Billed';
                elseif($booking->status == 7): $status = 'Cancelled';
                endif;

                array_push($booking_array,array(
                    'id' => $booking->id,
                    'service' => $booking->service_name,
                    'image_path' => asset($booking->image_path),
                    'status' => $booking->status,
                    'Booking_status' => $status,
                    'date' => date("Y-m-d",strtotime($booking->updated_at)),
                ));
            }
        }

        $response = array(
            'response' => 'y',
            'error' => false,
            'booking_array' => $booking_array,
        );

        return $response;

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $id = $request->id;
        $result_array = array();
        $booking_status_info = Booking_status::select('booking_statuses.*','bookings.*','partners.partner_name','partners.mobile_no','partners.profile_img')
                                                ->leftJoin('bookings','bookings.id','=','booking_statuses.booking_id')
                                                ->leftJoin('partners','partners.id','=','bookings.partner_id')
                                                ->where('booking_id',$id)
                                                ->first();
        if($booking_status_info)
        {
            if($booking_status_info->assign_on != NULL || !empty($booking_status_info->assign_on)):
                $partner_name = $booking_status_info->partner_name;
                $profile_img = asset($booking_status_info->profile_img);
                $mobile_no = $booking_status_info->mobile_no;
                $service_start_date = $booking_status_info->service_start_date;
                $service_end_date = $booking_status_info->service_end_date;
            else:
                $partner_name = "";
                $profile_img = "";
                $mobile_no = "";
                $service_start_date = "";
                $service_end_date = "";
            endif;
            $partner_attendance_array = array();
            $booking_progress = BookingProgress::where('booking_id',$id)->get();

            array_push($result_array,array(
                'id' => $booking_status_info->id,
                'booked_on' => date('Y-m-d h:i A',strtotime($booking_status_info->booked_on)),
                'accepted_on' => ($booking_status_info->accepted_on) ? date('Y-m-d h:i A',strtotime($booking_status_info->accepted_on)) : "",
                'assigned_on' => ($booking_status_info->assign_on) ? date('Y-m-d h:i A',strtotime($booking_status_info->assign_on)) : "",
                'progressed_on' => ($booking_status_info->progress_on) ? date('Y-m-d h:i A',strtotime($booking_status_info->progress_on)) : "",
                'completed_on' => ($booking_status_info->completed_on) ? date('Y-m-d h:i A',strtotime($booking_status_info->completed_on)) : "",
                'billed_on' => ($booking_status_info->billed_on) ? date('Y-m-d h:i A',strtotime($booking_status_info->billed_on)) : "",
                'partner_name' => $partner_name,
                'profile_img' => $profile_img,
                'mobile_no' => $mobile_no,
                'service_start_date' => $service_start_date,
                'service_end_date' => $service_end_date,
                'partner_attendence' => $booking_progress
            ));

            $response = array(
                'response' => 'y',
                'error' => true,
                'result_array'=> $result_array,
            );
            return $response;
        }


    }

    public function cancel_booking(Request $request)
    {
        $id = $request->id;
        $reason = $request->reason;
        $status = 7;
        Booking::find($id)
                ->update([
                    'remark' => $reason,
                    'status' => $status
                ]);

        $response = array(
            'error' => false,
            'message' => 'Booking cancelled successfully'
        );
        return $response;
    }

    public function get_otp(Request $request)
    {
        $curr_date = date('Y-m-d');
        $update_date = date('Y-m-d H:i:s');
        $start_date = date('Y-m-d h:i A');
        $type = $request->type;
        $booking_id = $request->booking_id;
        $booking_info = Booking::where('id',$booking_id)->first();
        $otp = rand(1111,9999);

        if($type == 'start') {

            $execute_otp = new Otp;
            $execute_otp->start = $otp;
            $execute_otp->curr_date = $curr_date;
            $execute_otp->status = 1;
            $execute_otp->user_id = $booking_info->cust_id;
            $execute_otp->partner_id = $booking_info->partner_id;
            $execute_otp->booking_id = $booking_id;
            $execute_otp->save();

        } elseif($type == 'complete') {

            Otp::where('booking_id',$booking_id)->latest()->take(1)
                ->update([
                    'complete'=> $otp,
                    'status'=> 3,
                    'updated_At'=> $update_date,
                ]);

            BookingProgress::where('booking_id',$booking_id)
                            ->update([
                                'completed_date' => $start_date
                            ]);
        }

        $response = array(
            'response' => 'y',
            'error' => false,
            'message'=> 'Otp generated successfully',
            'OTP' => $otp,
        );

        return $response;

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
