<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Crypt;
use Auth;
use Str;
use Carbon\Carbon;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\File;
use Log;
use Validator;
use URL;
use App\Models\Booking;
use App\Models\Booking_status;
use App\Models\Customer;
use App\Models\Partner;
use App\Models\Service;
use App\Models\BookingProgress;
use phpDocumentor\Reflection\Types\Null_;
date_default_timezone_set('Asia/Kolkata');
class BookingController extends Controller
{
    

    public function index()
    {
        $requests = Booking::select("bookings.*","price_charts.image_path as chart","customers.full_name","customers.gender","customers.dob","customers.mobile_no","customers.address","customers.location","services.service_name")
                            ->leftJoin("customers","bookings.cust_id","=","customers.id")
                            ->leftJoin("price_charts","bookings.service_id","=","price_charts.service_id")
                            ->leftJoin("services","bookings.service_id","=","services.id")->where('bookings.status',1)->get();
        $services = Service::get();
                            
        return view("admin.requests", ['requests' => $requests,'services'=>$services]);
    }

    public function completed_index()
    {
        $requests = Booking::select("bookings.*","price_charts.image_path as chart","customers.full_name","customers.gender","customers.dob","customers.mobile_no","customers.address","customers.location","services.service_name")
                            ->leftJoin("customers","bookings.cust_id","=","customers.id")
                            ->leftJoin("price_charts","bookings.service_id","=","price_charts.service_id")
                            ->leftJoin("services","bookings.service_id","=","services.id")->where('bookings.status',5)->get();
        
        $request_array = array();

        foreach($requests as $val)
        {
            $book_id = $val->id; 
            $date = date("Y-m-d");

            $progress_array = array();
            $in_progress = DB::table("booking_progress")
                                ->where('booking_id',$book_id)
                                ->orderBy('id','ASC')->get();
            foreach($in_progress as $res)
            {
                array_push($progress_array,array(
                    'id'=>$res->id,
                    'start_date'=>$res->start_date,
                    'end_date'=>$res->end_date,
                    'completed_date'=>$res->completed_date,
                ));
            }

            array_push($request_array,array(
                                            'id'=>$val->id,
                                            'full_name'=>$val->full_name,
                                            'gender'=>$val->gender,
                                            'dob'=>$val->dob,
                                            'mobile_no'=>$val->mobile_no,
                                            'address'=>$val->address,
                                            'location'=>$val->location,
                                            'service_name'=>$val->service_name,
                                            'partner_name'=>$val->partner_name,
                                            'additional_note'=>$val->additional_note,
                                            'chart'=>$val->chart,
                                            'status'=>$val->status,
                                            'created_at'=>$val->created_at,
                                            'est_cost'=>$val->est_cost,
                                            'est_duration'=>$val->est_duration,
                                            'progress_array'=>$progress_array
                                        ));
        }
                            
        // dd($request_array);
        return view("admin.completed", ['requests' => $request_array]);
    }

    public function cancel_requests()
    {
        $requests = Booking::select("bookings.*","price_charts.image_path as chart","customers.full_name","customers.gender","customers.dob","customers.mobile_no","customers.address","customers.location","services.service_name")
                            ->leftJoin("customers","bookings.cust_id","=","customers.id")
                            ->leftJoin("price_charts","bookings.service_id","=","price_charts.service_id")
                            ->leftJoin("services","bookings.service_id","=","services.id")->where('bookings.status',7)->get();
                            
        return view("admin.cancel_requests", ['requests' => $requests]);
    }

    public function assign_partner()
    {
        $requests = Booking::select("bookings.*","price_charts.image_path as chart","customers.full_name","customers.gender","customers.dob","customers.mobile_no","customers.address","customers.location","partners.partner_name","services.service_name")
                            ->leftJoin("customers","bookings.cust_id","=","customers.id")
                            ->leftJoin("partners","bookings.partner_id","=","partners.id")
                            ->leftJoin("price_charts","bookings.service_id","=","price_charts.service_id")
                            ->leftJoin("services","bookings.service_id","=","services.id")->whereIn('bookings.status',[1,2])->get();

        $partners = Partner::get();
                            
        return view("admin.assign_partner", ['requests' => $requests,'partners'=>$partners]);
    }

    public function yet_to_start()
    {
        $requests = Booking::select("bookings.*","price_charts.image_path as chart","customers.full_name","customers.gender","customers.dob","customers.mobile_no","customers.address","customers.location","partners.partner_name","services.service_name")
                            ->leftJoin("customers","bookings.cust_id","=","customers.id")
                            ->leftJoin("partners","bookings.partner_id","=","partners.id")
                            ->leftJoin("price_charts","bookings.service_id","=","price_charts.service_id")
                            ->leftJoin("services","bookings.service_id","=","services.id")->where('bookings.status',3)->get();
        
        $partners = Partner::get();
                            
        return view("admin.yet_to_start", ['requests' => $requests,'partners'=>$partners]);
    }
    public function in_progress()
    {
        $requests = Booking::select("bookings.*","price_charts.image_path as chart","customers.full_name","customers.gender","customers.dob","customers.mobile_no","customers.address","customers.location","partners.partner_name","services.service_name")
                            ->leftJoin("customers","bookings.cust_id","=","customers.id")
                            ->leftJoin("partners","bookings.partner_id","=","partners.id")
                            ->leftJoin("price_charts","bookings.service_id","=","price_charts.service_id")
                            ->leftJoin("services","bookings.service_id","=","services.id")->where('bookings.status',4)->get();
        $request_array = array();

        foreach($requests as $val)
        {
            $book_id = $val->id; 
            $date = date("Y-m-d");
            $in_progress = DB::table("booking_progress")
                                ->where('booking_id',$book_id)
                                ->where('created_at','>=',$date)
                                ->orderBy('id','DESC')->first();
            if($in_progress)
            {
                $start_date = $in_progress->start_date;
                $end_date = $in_progress->end_date;
                $completed_date = $in_progress->completed_date;
                $progress_id = $in_progress->id;
            }
            else 
            {
                $start_date = "";
                $end_date = "";
                $completed_date = "";
                $progress_id = "";
            }
            array_push($request_array,array(
                                            'id'=>$val->id,
                                            'full_name'=>$val->full_name,
                                            'gender'=>$val->gender,
                                            'dob'=>$val->dob,
                                            'mobile_no'=>$val->mobile_no,
                                            'address'=>$val->address,
                                            'location'=>$val->location,
                                            'service_name'=>$val->service_name,
                                            'partner_name'=>$val->partner_name,
                                            'chart'=>$val->chart,
                                            'status'=>$val->status,
                                            'additional_note'=>$val->additional_note,
                                            'created_at'=>$val->created_at,
                                            'est_cost'=>$val->est_cost,
                                            'est_duration'=>$val->est_duration,
                                            'start_date'=>$start_date,
                                            'end_date'=>$end_date,
                                            'completed_date'=>$completed_date,
                                            'progress_id'=>$progress_id,
                                        ));
        }
        // dd($request_array);
        $partners = Partner::get();
                            
        return view("admin.in_progress", ['requests' => $request_array,'partners'=>$partners]);
    }

    public function cancel_request(Request $request)
    {
        $id = $request->id;
        $remark = $request->remark;
        Booking::where('id', $id)
            ->update([
                'remark' => $remark,
                'status' => 7,
            ]);
            
        
        $response = array("message" => "Request has been cancelled successfully", "response" => "y");
        return json_encode($response);
    }

    public function update_assign_status(Request $request)
    {
        $id = $request->id;
        $assign_on = date("Y-m-d H:i:s");
        $value = $request->value ?? 0;
        if($value == 1):
            $status = 3; 
            $condition = ['status' => $status,'flag' => $value];
            $msg = "Partner assigned successfully";
        else:
            $status=1;
            $condition = ['partner_id'=>NULL,'status' => $status,'flag' => $value];
            $msg = "Partner request Denied";
         endif;
        Booking::where('id', $id)
            ->update($condition);

        Booking_status::where('booking_id', $id)
            ->update([
                'assign_on' => $assign_on
            ]);
            
        
        $response = array("message" => $msg, "response" => "y");
        return json_encode($response);
    }

    public function update_estimate(Request $request)
    {
        $id = $request->id;
        $cost = $request->cost;
        $duration = $request->duration;
        $service_start_date = $request->service_start_date;
        $service_end_date = $request->service_end_date;
        $patiant_status = $request->patiant_status;
        $no_of_month_year = $request->no_of_month_year;
        $blood_pressure = $request->blood_pressure;
        $diabetes = $request->diabetes;
        $thyroid = $request->thyroid;
        $note = $request->note;
        ($patiant_status != 'Active') ? $no_of_month_year : $no_of_month_year =NULL; 
        Booking::where('id', $id)
        ->update([
            'est_cost' => $cost,
            'est_duration' => $duration,
            'service_start_date' => $service_start_date,
            'service_end_date' => $service_end_date,
            'patiant_status' => $patiant_status,
            'no_of_month_year' => $no_of_month_year,
            'blood_pressure' => $blood_pressure,
            'diabetes' => $diabetes,
            'thyroid' => $thyroid,
            'additional_note' => $note,
            ]);
            
            
            $response = array("message" => "Estimate updated successfully", "response" => "y");
            return json_encode($response);
        }
    
    public function assign(Request $request)
    {
        $id = $request->id;
        $accept_on = date("Y-m-d H:i:s");
        $partner_id = $request->partner_id;
        Booking::where('id', $id)
            ->update([
                'partner_id' => $partner_id,
                'status' => 2,
            ]);

        Booking_status::where('booking_id', $id)
            ->update([
                'accepted_on' => $accept_on,
            ]);
            
        
        $response = array("message" => "Partner updated successfully", "response" => "y");
        return json_encode($response);
    }
    public function start_service(Request $request)
    {
        $id = $request->id;
        
        $date = date("Y-m-d h:i:s A");
        Booking::where('id', $id)
        ->update([
            'status' => 4,
        ]);
        
        // BookingProgress::updateOrInsert([
            //     'booking_id' => $id,
            //     'start_date' => $date,
            // ]); 
            
        $conn = new BookingProgress;
        $conn->booking_id = $id;
        $conn->start_date = $date;
        $conn->save();
        
        $response = array("message" => "Service satrted successfully", "response" => "y");
        return json_encode($response);
    }

    public function service_status(Request $request)
    {
        $id = $request->id;
        $progress_id = $request->progress_id;
        $source = $request->source;
        $date = date("Y-m-d h:i:s A");
        if($progress_id == "")
        {
            $progress_id = DB::table("booking_progress")
                                ->orderBy('id','DESC')->limit(1)->value('id');
        }

        if($source == 1)
        {
            $condition1 = array("status"=>4);
            $condition2 = array("completed_date"=>$date);
            $msg = "Service completed successfully";
        }
        else 
        {
            $condition1 = array("status"=>5);
            $condition2 = array("end_date"=>$date);
            $msg = "Service ended successfully";
        }

        Booking::where('id', $id)
            ->update($condition1);

        BookingProgress::where('id', $progress_id)
            ->update($condition2);

        // BookingProgress::updateOrInsert([
        //     'booking_id' => $id,
        //     'start_date' => $date,
        // ]); 
        
        $response = array("message" => $msg, "response" => "y");
        return json_encode($response);
    }

    public function get_estimate(Request $request)
    {
        $id = $request->id;
        $booking = Booking::where('id',$id)->first();

        $response = array(
            'response'=> 'y',
            'id'=>$id,
            'est_cost'=>$booking->est_cost,
            'est_duration'=>$booking->est_duration,
            'additional_note'=>$booking->additional_note,
            'service_start_date'=>$booking->service_start_date,
            'service_end_date'=>$booking->service_end_date,
            'patiant_status'=>$booking->patiant_status,
            'no_of_month_year'=>$booking->no_of_month_year,
            'blood_pressure'=>$booking->blood_pressure,
            'diabetes'=>$booking->diabetes,
            'thyroid'=>$booking->thyroid,
        );
        return json_encode($response);
    }

    public function edit($id)
    {
        $booking_info = Booking::where('id', $id)->first();
        $user_id = $booking_info->cust_id;
        $customer_info = Customer::where('id', $user_id)->first();
        $response = array(
            'response'=> 'y',
            'id' => $booking_info->id,
            'name' => $customer_info->full_name,
            'mobile' => $customer_info->mobile_no,
            'age' => $customer_info->dob,
            'gender' => $customer_info->gender,
            'address' => $customer_info->address,
            'location' => $customer_info->location,
            'service_id' => $booking_info->service_id,
            'user_id' => $customer_info->id,
        );
        echo json_encode($response);
    }

    public function update(Request $request)
    {
        $service_id = $request->service_id;
        $name = $request->name;
        $mobile = $request->mobile;
        $age = $request->age;
        $gender = $request->gender;
        $address = $request->address;
        $location = $request->location;
        $id = $request->id;
        $user_id = $request->user_id;

        Booking::where('id',$id)
            ->update([
                'service_id' => $service_id
            ]);

        Customer::where('id',$user_id)
            ->update([
                'full_name' => $name,
                'mobile_no' => $mobile,
                'dob' => $age,
                'gender' => $gender,
                'address' => $address,
                'location' => $location,
            ]);

        $response = array("message" => "Data updated successfully", "response" => "y");
        return json_encode($response);

    }

}
