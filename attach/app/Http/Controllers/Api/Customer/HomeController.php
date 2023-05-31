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

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $service_array = array();
        $slider_array = Slider::select('id','image_path')->get();
        $testimonials_array = Testimonial::select('id','video_path')->get();
        $service_info = Service::get();
        if($service_info):
            foreach($service_info as $key => $service):
                $service_id = $service->id;
                $service_name = $service->service_name;
                $slider_info_array = DB::table('service_sliders')->select('id','image_path')->get();
                $video_info_array = DB::table('service_videos')->select('id','video_path')->get();

                array_push($service_array,array(
                    'id' => $service_id,
                    'name' => $service_name,
                    'description' => html_entity_decode($service->description),
                    'features' => explode(',',$service->features),
                    'slider_array' => $slider_info_array,
                    'video_array' => $video_info_array,
                    
                ));
            endforeach;
        endif;

        $response = array(
            'response' => 'y', 
            'error' => false, 
            'slider_array' => $slider_array, 
            'service_array' => $service_array, 
            'testimonials_array' => $testimonials_array,
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
        date_default_timezone_set('Asia/Kolkata');
        $validator = Validator::make($request->all(), [
            'user_id' => 'required',
            'id' => 'required',
        ]);
        
        if ($validator->fails())
        {
            $response = array(
                'error' => true,
                'message' => 'All fields required',
            );
            
            return $response;
        }

        $statement = DB::select("show table status like 'bookings'");
        $auto_id = $statement[0]->Auto_increment;
        do
        {
            $reqID =  rand(1111,9999).$auto_id;
            $check_record = Booking::where('reqID',$reqID)->get();
        }
        while(is_array($check_record));

        $user_id = $request->user_id;
        $id = $request->id;
        
        $conn = new Booking;

        $conn->reqID = $reqID; 
        $conn->cust_id = $user_id; 
        $conn->service_id = $id; 
        $conn->status = 1;
        $conn->save();
        
        $book = new Booking_status;

        $book->booking_id = $conn->id; 
        $book->status = 1;
        $book->booked_on = date("Y-m-d H:i:s"); 
        $book->save();

        $response = array(
            'error' => false,
            'message' => 'Your request has been received, our team will get in touch with you soon for further details.',
        );
        
        return $response;

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
