<?php

namespace App\Http\Controllers\Api\Partner;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Booking;
use App\Models\Booking_status;
use App\Models\BookingProgress;
use App\Models\Otp;
use DB;
use PDF;
use Config;

class BookingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function set_otp(Request $request)
    { 
        $curr_date = date('Y-m-d');
        $update_date = date('Y-m-d H:i:s');
        $start_date = date('Y-m-d h:i A');
        $otp = $request->otp;
        $type = $request->type;
        $booking_id = $request->booking_id;
        $partner_id = $request->partner_id;
        $latitude = $request->latitude;
        $longitude = $request->longitude;

        // Get Otp info for otp verification
        $otp_info = Otp::where(['partner_id'=>$partner_id,'booking_id'=>$booking_id])->latest()->first();
        if ($otp_info)
        {
            $start_otp = $otp_info->start;
            $complete_otp = $otp_info->complete;

            //Otp Validation
            if ($type == 'start') {

                if ($start_otp == $otp)
                {
                    DB::table('otp')->where('booking_id',$booking_id)->latest()->take(1)
                        ->update([
                            'status'=> 2,
                            'updated_At'=> $update_date,
                        ]);
                    
                    $booking_progress = new BookingProgress;
                    $booking_progress->start_date = $start_date;
                    $booking_progress->booking_id = $booking_id;
                    $booking_progress->save();

                    Booking ::where('id',$booking_id)->latest()->take(1)
                            ->update([
                                'status' => 4
                            ]);

                    $response = array('response' => 'y','error'=>false,'message'=>'Otp verified');
                    
                } 
                else 
                {
                    
                    $response = array('response' => 'n','error'=>true,'message'=>'Start otp not match');
                    
                }
                
            } 
            elseif ($type == 'complete') 
            {
                
                //Otp Validation
                if ($complete_otp == $otp)
                {
                    Otp::where('booking_id',$booking_id)->latest()->take(1)
                    ->update([
                        'status'=> 4,
                        'updated_At'=> $update_date,
                    ]);
                    
                    BookingProgress::where('booking_id',$booking_id)->latest()->take(1)
                    ->update([
                        'completed_date' => $start_date
                    ]);

                    $response = array('response' => 'y','error'=>false,'message'=>'Otp verified');
                    
                } 
                else 
                {
                    
                    $response = array('response' => 'n','error'=>true,'message'=>'Complete otp is not match');
                    
                }
                
            } 
            elseif ($type == 'end') 
            {
                
                //Otp Validation
                if ($complete_otp == $otp)
                {
                    Otp::where('booking_id',$booking_id)->latest()->take(1)
                    ->update([
                        'status'=> 5,
                        'updated_At'=> $update_date,
                    ]);
                    
                    BookingProgress::where('booking_id',$booking_id)->latest()->take(1)
                    ->update([
                        'end_date' => $start_date
                    ]);
                    
                    Booking::where('id',$booking_id)
                    ->update([
                        'status' => 5
                    ]);

                    $response = array('response' => 'y','error'=>false,'message'=>'Otp verified');

                } 
                else 
                {
                    
                    $response = array('response' => 'n','error'=>true,'message'=>'Complete otp is not match');

                }
            } 
            
        } 
        else 
        {

            $response = array('response' => 'y','error'=>true,'message'=>'Otp is not generated yet');

        }

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
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
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

    public function generatePdf()
    {
        $invoice_path = public_path() . '/images/';
        // $temp = DB::table('settings')->get();
        // $bag_charge = $temp->get(0);
        // $bag_charge = $bag_charge->value;
        // $loose_bag_charge = $temp->get(1);
        // $loose_bag_charge = $loose_bag_charge->value;
        // $gst_percentage = $temp->get(3);
        // $gst_percentage = $gst_percentage->value;
        $path = public_path(). '/logo.png';
        $type = pathinfo($path, PATHINFO_EXTENSION);
        $img_data = file_get_contents($path);

        $base64 = 'data:image/' . $type . ';base64,' . base64_encode($img_data);
        $data = [
            'invoice_id' => "test",
            'order_id' => "test",
            'order_date' => "test",
            'receiver_type' => "test",
            'receiver_name' => "test",
            'receiver_mobile' => "test",
            'state' => "test",
            'city' => "test",
            'locality' => "test",
            'house_building' => "test",
            'landmark' => "test",
            'pincode' => "test",
            'payment_method' => "test",
            'total_paid' => "123.56",
            'bag_count' => "132.32",
            'bag_amount' => "213.23",
            'loose_bag_count' => "35.526",
            'loose_bag_amount' => "12.2",
            'service_charge' => "53.52",
            'gst_charge' => "213.123",
            'coupon_discount' => "123.12",
            'pickup_date' => "test",
            'payment_id' => "test",
            'amount_paid' => "test",
            'bag_charge' => "123.36",
            'loose_bag_charge' => "5656.26",
            'gst_percentage' => "23",
            'user_name' => "test",
            'mobile' => "test",
            'email' => "test",
            'base64' => $base64,
        ];

        $pdf = PDF::loadView('admin.invoice_test', $data);
        // $pdf = view('admin.invoice_test', $data);
        
        // return $pdf->save($invoice_path);
        // return $pdf;
        return $pdf->stream();

        // return Pdf::loadFile('admin.invoice_pdf')
        // ->save($invoice_path)
        // ->stream('download.pdf');


        // $html = view('admin.invoice_pdf', $data)->render();
        // return PDF::loadHTML($html, 'utf-8')->stream();
    }
}
