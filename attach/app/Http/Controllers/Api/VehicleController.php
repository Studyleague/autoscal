<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CustomerDetail;
use App\Models\RcInsuaranceDetail;
use App\Models\ChasisDetail;
use App\Models\VehicleDetail;
use App\Models\VehiclePhoto;
use App\Models\VehiclePartsQuality;
use App\Models\ExteriorRhsSide;
use App\Models\ExteriorBackSide;
use App\Models\ExteriorLhsSide;
use App\Models\Interior;
use App\Models\TestDrive;
use App\Models\EngineCompartment;
use App\Models\SpecialFeature;
use App\Models\Damage;
use App\Models\Order;
use App\Models\Brand;
use Carbon\Carbon;
use File;
use PDF;
use Log;
date_default_timezone_set('Asia/Kolkata');


class VehicleController extends Controller
{
    function mime2ext($mime)
    {
        $all_mimes = '{
        "docx":["application\/vnd.openxmlformats-officedocument.wordprocessingml.document"],
        "png":["image\/png","image\/x-png"],
        "bmp":["image\/bmp","image\/x-bmp","image\/x-bitmap","image\/x-xbitmap","image\/x-win-bitmap","image\/x-windows-bmp","image\/ms-bmp","image\/x-ms-bmp","application\/bmp","application\/x-bmp","application\/x-win-bitmap"],
        "gif":["image\/gif"],
        "jpeg":["image\/jpeg","image\/pjpeg"],
        "pdf":["application\/pdf","application\/octet-stream"]
        }';



        $all_mimes = json_decode($all_mimes,true);
        // dd($all_mimes);
        foreach ($all_mimes as $key => $value) {
            if(array_search($mime,$value) !== false) return $key;
        }
        return false;
    }

    function uploadMedia($file_photo,$file_name,$file_path)
    {
        $decodedImage = base64_decode("$file_photo");
        $mime_type = finfo_buffer(finfo_open(), $decodedImage, FILEINFO_MIME_TYPE);
        $ext = $this->mime2ext($mime_type);
        $image_file_name = $file_name;
        $profile_path = env('IMG_PATH') . $file_path . $image_file_name;
        $return = file_put_contents($profile_path . ".".$ext, $decodedImage);
        $file_db_path = $file_path . $image_file_name . "." .$ext;
        return $file_db_path;
    }

    public function store(Request $request)
    {
        Log::info($request);
        $customerDetail = array();
        if($request->purchase_cust_name) $customerDetail['purchase_cust_name'] = $request->purchase_cust_name;
        if($request->purchase_cust_no) $customerDetail['purchase_cust_no'] = $request->purchase_cust_no;
        if($request->purchase_location) $customerDetail['purchase_location'] = $request->purchase_location;
        if($request->sell_cust_name) $customerDetail['sell_cust_name'] = $request->sell_cust_name;
        if($request->sell_cust_no) $customerDetail['sell_cust_no'] = $request->sell_cust_no;
        if($request->sell_location) $customerDetail['sell_location'] = $request->sell_location;
        $current_timestamp = Carbon::now()->toDateTimeString();
        $customerDetail['created_at'] = $current_timestamp;
        $customerDetail['updated_at'] = $current_timestamp;
        $order_id = $request->order_id;

        CustomerDetail::updateOrInsert(
            ['order_id' => $order_id],
            $customerDetail
        );
        $rcInsuaranceDetail = array();
        if($request->rc) $rcInsuaranceDetail['rc'] = $request->rc;
        $rc_photo = $request->rc_photo;
        if($request->rc_type) $rcInsuaranceDetail['rc_type'] = $request->rc_type;
        $rc_type_photo = $request->rc_type_photo;
        if($request->zero_dep_insuarance) $rcInsuaranceDetail['zero_dep_insuarance'] = $request->zero_dep_insuarance;
        $insuarance_photo = $request->insuarance_photo;
        if($request->expiry_date) $rcInsuaranceDetail['expiry_date'] = $request->expiry_date;
        $expiry_photo = $request->exiry_photo;

        if($rc_photo):
            $image_file_name = 'rc_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/rc/';
            $rc_photo_db_file_path = $this->uploadMedia($rc_photo,$image_file_name,$image_path);
            $rcInsuaranceDetail['rc_photo'] = $rc_photo_db_file_path;
        endif;

        if($rc_type_photo):
            $image_file_name = 'rc_type_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/rc/';
            $rc_type_photo_db_file_path = $this->uploadMedia($rc_type_photo,$image_file_name,$image_path);
            $rcInsuaranceDetail['rc_type_photo'] = $rc_type_photo_db_file_path;
        endif;

        if($insuarance_photo):
            $image_file_name = 'insuarance_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/rc/';
            $insuarance_photo_db_file_path = $this->uploadMedia($insuarance_photo,$image_file_name,$image_path);
            $rcInsuaranceDetail['insuarance_photo'] = $insuarance_photo_db_file_path;
        endif;

        if($expiry_photo):
            $image_file_name = 'expiry_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/rc/';
            $expiry_photo_db_file_path = $this->uploadMedia($expiry_photo,$image_file_name,$image_path);
            $rcInsuaranceDetail['expiry_photo'] = $expiry_photo_db_file_path;
        endif;
        $rcInsuaranceDetail['created_at'] = $current_timestamp;
        $rcInsuaranceDetail['updated_at'] = $current_timestamp;
        RcInsuaranceDetail::updateOrInsert(
            ['order_id' => $order_id],
            $rcInsuaranceDetail
        );

        $chasisDetail = array();
        if($request->chasis_no) $chasisDetail['chasis_no'] = $request->chasis_no;
        if($request->engine_no) $chasisDetail['engine_no'] = $request->engine_no;
        $chasis_photo = $request->chasis_photo;
        $engine_photo = $request->engine_photo;

        if($chasis_photo):
            $image_file_name = 'chasis_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/chasis/';
            $chasis_photo_db_file_path = $this->uploadMedia($chasis_photo,$image_file_name,$image_path);
            $chasisDetail['chasis_photo'] = $chasis_photo_db_file_path;
        endif;

        if($engine_photo):
            $image_file_name = 'engine_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/chasis/';
            $engine_photo_db_file_path = $this->uploadMedia($engine_photo,$image_file_name,$image_path);
            $chasisDetail['engine_photo'] = $engine_photo_db_file_path;
        endif;
        $chasisDetail['created_at'] = $current_timestamp;
        $chasisDetail['updated_at'] = $current_timestamp;

        ChasisDetail::updateOrInsert(
            ['order_id' => $order_id],
            $chasisDetail
        );
        $vehicleDetail = array();
        if($request->vehicle_state) $vehicleDetail['vehicle_state'] = $request->vehicle_state;
        if($request->vehicle_no) $vehicleDetail['vehicle_no'] = $request->vehicle_no;
        if($request->vehicle_make) $vehicleDetail['vehicle_make'] = $request->vehicle_make;
        if($request->vehicle_model) $vehicleDetail['vehicle_model'] = $request->vehicle_model;
        if($request->vehicle_color) $vehicleDetail['vehicle_color'] = $request->vehicle_color;
        if($request->veriant) $vehicleDetail['veriant'] = $request->veriant;
        if($request->mfg_year) $vehicleDetail['mfg_year'] = $request->mfg_year;
        if($request->reg_year) $vehicleDetail['reg_year'] = $request->reg_year;
        if($request->tax_validity) $vehicleDetail['tax_validity'] = $request->tax_validity;
        if($request->engine_cube_capacity) $vehicleDetail['engine_cube_capacity'] = $request->engine_cube_capacity;
        if($request->fuel_type) $vehicleDetail['fuel_type'] = $request->fuel_type;
        if($request->owner_serial_no) $vehicleDetail['owner_serial_no'] = $request->owner_serial_no;
        if($request->odometer_reading) $vehicleDetail['odometer_reading'] = $request->odometer_reading;
        if($request->accidental_summary) $vehicleDetail['accidental_summary'] = $request->accidental_summary;
        if($request->flooded_condition) $vehicleDetail['flooded_condition'] = $request->flooded_condition;
        if($request->special_comments) $vehicleDetail['special_comments'] = $request->special_comments;

        if($request->hypothecation == 0){
            $vehicleDetail['hypothecation'] = $request->hypothecation;
            if($request->bank_name) $vehicleDetail['bank_name'] = $request->bank_name;
        }else{
            $vehicleDetail['hypothecation'] = $request->hypothecation;
            $vehicleDetail['bank_name'] = '';
        }

        $vehicleDetail['created_at'] = $current_timestamp;
        $vehicleDetail['updated_at'] = $current_timestamp;
        VehicleDetail::updateOrInsert(
            ['order_id' => $order_id],
            $vehicleDetail
        );

        $vehiclePhoto = array();
        $front_view = $request->front_view;
        $front_glass = $request->front_glass;
        $engine_compartment = $request->engine_compartment;
        $roof = $request->roof_image;
        $front_rhs_side_tringle_view = $request->front_rhs_side_tringle_view;
        $front_rhs_tyre = $request->front_rhs_tyre;
        $rhs_side_view = $request->rhs_side_view;
        $rhs_side_interior_view = $request->rhs_side_interior_view;
        $rear_rhs_tyre = $request->rear_rhs_tyre;
        $back_side_view = $request->back_side_view;
        $dicky_floor_view = $request->dicky_floor_view;
        $rear_glass = $request->rear_glass;
        $spare_wheel_tyre = $request->spare_wheel_tyre;
        $rear_lhs_side_triangle_view = $request->rear_lhs_side_triangle_view;
        $rear_lhs_tyre = $request->rear_lhs_tyre;
        $lhs_side_view = $request->lhs_side_view;
        $rear_interior_view = $request->rear_interior_view;
        $front_lhs_tyre = $request->front_lhs_tyre;
        $dashboard_view = $request->dashboard_view;
        $odometer_view = $request->odometer_view;
        $dicky_door_open_view = $request->dicky_door_open_view;

        if($front_view):
            $image_file_name = 'front_view_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $front_view_db_file_path = $this->uploadMedia($front_view,$image_file_name,$image_path);

            $vehiclePhoto['front_view'] = $front_view_db_file_path;
        endif;

        if($front_glass):
            $image_file_name = 'front_glass_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $front_glass_db_file_path = $this->uploadMedia($front_glass,$image_file_name,$image_path);

            $vehiclePhoto['front_glass'] = $front_glass_db_file_path;
        endif;

        if($engine_compartment):
            $image_file_name = 'engine_compartment_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $engine_compartment_db_file_path = $this->uploadMedia($engine_compartment,$image_file_name,$image_path);

            $vehiclePhoto['engine_compartment'] = $engine_compartment_db_file_path;
        endif;

        if($roof):
            $image_file_name = 'roof_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $roof_db_file_path = $this->uploadMedia($roof,$image_file_name,$image_path);

            $vehiclePhoto['roof'] = $roof_db_file_path;
        endif;

        if($front_rhs_side_tringle_view):
            $image_file_name = 'front_rhs_side_tringle_view_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $front_rhs_side_tringle_view_db_file_path = $this->uploadMedia($front_rhs_side_tringle_view,$image_file_name,$image_path);

            $vehiclePhoto['front_rhs_side_tringle_view'] = $front_rhs_side_tringle_view_db_file_path;
        endif;

        if($front_rhs_tyre):
            $image_file_name = 'front_rhs_tyre_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $front_rhs_tyre_db_file_path = $this->uploadMedia($front_rhs_tyre,$image_file_name,$image_path);

            $vehiclePhoto['front_rhs_tyre'] = $front_rhs_tyre_db_file_path;
        endif;

        if($rhs_side_view):
            $image_file_name = 'rhs_side_view_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $rhs_side_view_db_file_path = $this->uploadMedia($rhs_side_view,$image_file_name,$image_path);

            $vehiclePhoto['rhs_side_view'] = $rhs_side_view_db_file_path;
        endif;

        if($rhs_side_interior_view):
            $image_file_name = 'rhs_side_interior_view_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $rhs_side_interior_view_db_file_path = $this->uploadMedia($rhs_side_interior_view,$image_file_name,$image_path);

            $vehiclePhoto['rhs_side_interior_view'] = $rhs_side_interior_view_db_file_path;
        endif;

        if($rear_rhs_tyre):
            $image_file_name = 'rear_rhs_tyre_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $rear_rhs_tyre_db_file_path = $this->uploadMedia($rear_rhs_tyre,$image_file_name,$image_path);

            $vehiclePhoto['rear_rhs_tyre'] = $rear_rhs_tyre_db_file_path;
        endif;

        if($back_side_view):
            $image_file_name = 'back_side_view_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $back_side_view_db_file_path = $this->uploadMedia($back_side_view,$image_file_name,$image_path);

            $vehiclePhoto['back_side_view'] = $back_side_view_db_file_path;
        endif;

        if($dicky_door_open_view):
            $image_file_name = 'dicky_door_open_view_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $dicky_door_open_view_db_file_path = $this->uploadMedia($dicky_door_open_view,$image_file_name,$image_path);

            $vehiclePhoto['dicky_door_open_view'] = $dicky_door_open_view_db_file_path;
        endif;

        if($dicky_floor_view):
            $image_file_name = 'dicky_floor_view_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $dicky_floor_view_db_file_path = $this->uploadMedia($dicky_floor_view,$image_file_name,$image_path);

            $vehiclePhoto['dicky_floor_view'] = $dicky_floor_view_db_file_path;
        endif;

        if($rear_glass):
            $image_file_name = 'rear_glass_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $rear_glass_db_file_path = $this->uploadMedia($rear_glass,$image_file_name,$image_path);

            $vehiclePhoto['rear_glass'] = $rear_glass_db_file_path;
        endif;

        if($spare_wheel_tyre):
            $image_file_name = 'spare_wheel_tyre_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $spare_wheel_tyre_db_file_path = $this->uploadMedia($spare_wheel_tyre,$image_file_name,$image_path);

            $vehiclePhoto['spare_wheel_tyre'] = $spare_wheel_tyre_db_file_path;
        endif;

        if($rear_lhs_side_triangle_view):
            $image_file_name = 'rear_lhs_side_triangle_view_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $rear_lhs_side_triangle_view_db_file_path = $this->uploadMedia($rear_lhs_side_triangle_view,$image_file_name,$image_path);

            $vehiclePhoto['rear_lhs_side_triangle_view'] = $rear_lhs_side_triangle_view_db_file_path;
        endif;

        if($rear_lhs_tyre):
            $image_file_name = 'rear_lhs_tyre_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $rear_lhs_tyre_db_file_path = $this->uploadMedia($rear_lhs_tyre,$image_file_name,$image_path);

            $vehiclePhoto['rear_lhs_tyre'] = $rear_lhs_tyre_db_file_path;
        endif;

        if($lhs_side_view):
            $image_file_name = 'lhs_side_view_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $lhs_side_view_db_file_path = $this->uploadMedia($lhs_side_view,$image_file_name,$image_path);

            $vehiclePhoto['lhs_side_view'] = $lhs_side_view_db_file_path;
        endif;

        if($rear_interior_view):
            $image_file_name = 'rear_interior_view_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $rear_interior_view_db_file_path = $this->uploadMedia($rear_interior_view,$image_file_name,$image_path);

            $vehiclePhoto['rear_interior_view'] = $rear_interior_view_db_file_path;
        endif;

        if($front_lhs_tyre):
            $image_file_name = 'front_lhs_tyre_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $front_lhs_tyre_db_file_path = $this->uploadMedia($front_lhs_tyre,$image_file_name,$image_path);

            $vehiclePhoto['front_lhs_tyre'] = $front_lhs_tyre_db_file_path;
        endif;

        if($dashboard_view):
            $image_file_name = 'dashboard_view_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $dashboard_view_db_file_path = $this->uploadMedia($dashboard_view,$image_file_name,$image_path);

            $vehiclePhoto['dashboard_view'] = $dashboard_view_db_file_path;
        endif;

        if($odometer_view):
            $image_file_name = 'odometer_view_'.$order_id;
            $image_path = 'images/documents/vehicle/photos/';
            $odometer_view_db_file_path = $this->uploadMedia($odometer_view,$image_file_name,$image_path);

            $vehiclePhoto['odometer_view'] = $odometer_view_db_file_path;
        endif;
        $vehiclePhoto['created_at'] = $current_timestamp;
        $vehiclePhoto['updated_at'] = $current_timestamp;

        VehiclePhoto::updateOrInsert(
            ['order_id' => $order_id],
            $vehiclePhoto
        );

        $vehiclePartsQuality = array();
        if($request->front_bumper) $vehiclePartsQuality['front_bumper'] = $request->front_bumper;
        if($request->front_bumper_remark) $vehiclePartsQuality['front_bumper_remark'] = $request->front_bumper_remark;
        $front_bumper_photo = $request->front_bumper_photo;
        if($request->bonnet) $vehiclePartsQuality['bonnet'] = $request->bonnet;
        if($request->bonnet_remark) $vehiclePartsQuality['bonnet_remark'] = $request->bonnet_remark;
        $bonnet_photo = $request->bonnet_photo;
        if($request->front_glass_type) $vehiclePartsQuality['front_glass'] = $request->front_glass_type;
        if($request->front_glass_remark) $vehiclePartsQuality['front_glass_remark'] = $request->front_glass_remark;
        $front_glass_photo = $request->front_glass_photo;
        if($request->roof_condition) $vehiclePartsQuality['roof'] = $request->roof_condition;
        if($request->roof_remark) $vehiclePartsQuality['roof_remark'] = $request->roof_remark;
        $roof_photo = $request->roof_photo;

        if($bonnet_photo):
            $image_file_name = 'bonnet_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/parts/';
            $bonnet_photo_db_file_path = $this->uploadMedia($bonnet_photo,$image_file_name,$image_path);

            $vehiclePartsQuality['bonnet_photo'] = $bonnet_photo_db_file_path;
        endif;

        if($front_bumper_photo):
            $image_file_name = 'front_bumper_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/parts/';
            $front_bumper_photo_db_file_path = $this->uploadMedia($front_bumper_photo,$image_file_name,$image_path);

            $vehiclePartsQuality['front_bumper_photo'] = $front_bumper_photo_db_file_path;
        endif;

        if($front_glass_photo):
            $image_file_name = 'front_glass_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/parts/';
            $front_glass_photo_db_file_path = $this->uploadMedia($front_glass_photo,$image_file_name,$image_path);

            $vehiclePartsQuality['front_glass_photo'] = $front_glass_photo_db_file_path;
        endif;

        if($roof_photo):
            $image_file_name = 'roof_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/parts/';
            $roof_photo_db_file_path = $this->uploadMedia($roof_photo,$image_file_name,$image_path);

            $vehiclePartsQuality['roof_photo'] = $roof_photo_db_file_path;
        endif;
        $vehiclePartsQuality['created_at'] = $current_timestamp;
        $vehiclePartsQuality['updated_at'] = $current_timestamp;

        VehiclePartsQuality::updateOrInsert(
            ['order_id' => $order_id],
            $vehiclePartsQuality
        );

        $exteriorRhsSide = array();
        if($request->rhs_side_appron) $exteriorRhsSide['rhs_side_appron'] = $request->rhs_side_appron;
        $rhs_appron_photo = $request->rhs_appron_photo;
        if($request->front_rhs_tyre_percentage) $exteriorRhsSide['front_rhs_tyre_percentage'] = $request->front_rhs_tyre_percentage;
        if($request->rhs_fender) $exteriorRhsSide['rhs_fender'] = $request->rhs_fender;
        $rhs_tyre_fender_photo = $request->rhs_tyre_fender_photo;
        if($request->a_piller) $exteriorRhsSide['a_piller'] = $request->a_piller;
        $a_piller_photo = $request->a_piller_photo;
        if($request->b_piller) $exteriorRhsSide['b_piller'] = $request->b_piller;
        $b_piller_photo = $request->b_piller_photo;
        if($request->front_rhs_window) $exteriorRhsSide['front_rhs_window'] = $request->front_rhs_window;
        if($request->front_rhs_door) $exteriorRhsSide['front_rhs_door'] = $request->front_rhs_door;
        $front_rhs_photo = $request->front_rhs_photo;
        if($request->rear_rhs_door) $exteriorRhsSide['rear_rhs_door'] = $request->rear_rhs_door;
        $rear_rhs_door_photo = $request->rear_rhs_door_photo;
        if($request->rear_rhs_window) $exteriorRhsSide['rear_rhs_window'] = $request->rear_rhs_window;
        if($request->rhs_running_board) $exteriorRhsSide['rhs_running_board'] = $request->rhs_running_board;
        $rhs_window_photo = $request->rhs_window_photo;
        if($request->c_piller) $exteriorRhsSide['c_piller'] = $request->c_piller;
        $c_piller_photo = $request->c_piller_photo;
        if($request->rear_rhs_tyre_percentage) $exteriorRhsSide['rear_rhs_tyre_percentage'] = $request->rear_rhs_tyre_percentage;
        if($request->rhs_quater_panel) $exteriorRhsSide['rhs_quater_panel'] = $request->rhs_quater_panel;
        $rear_rhs_tyre_photo = $request->rear_rhs_tyre_photo;

        if($rhs_appron_photo):
            $image_file_name = 'rhs_appron_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_rhs/';
            $rhs_appron_photo_db_file_path = $this->uploadMedia($rhs_appron_photo,$image_file_name,$image_path);

            $exteriorRhsSide['rhs_appron_photo'] = $rhs_appron_photo_db_file_path;
        endif;

        if($rhs_tyre_fender_photo):
            $image_file_name = 'rhs_tyre_fender_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_rhs/';
            $rhs_tyre_fender_photo_db_file_path = $this->uploadMedia($rhs_tyre_fender_photo,$image_file_name,$image_path);

            $exteriorRhsSide['rhs_tyre_fender_photo'] = $rhs_tyre_fender_photo_db_file_path;
        endif;

        if($a_piller_photo):
            $image_file_name = 'a_piller_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_rhs/';
            $a_piller_photo_db_file_path = $this->uploadMedia($a_piller_photo,$image_file_name,$image_path);

            $exteriorRhsSide['a_piller_photo'] = $a_piller_photo_db_file_path;
        endif;

        if($b_piller_photo):
            $image_file_name = 'b_piller_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_rhs/';
            $b_piller_photo_db_file_path = $this->uploadMedia($b_piller_photo,$image_file_name,$image_path);

            $exteriorRhsSide['b_piller_photo'] = $b_piller_photo_db_file_path;
        endif;

        if($front_rhs_photo):
            $image_file_name = 'front_rhs_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_rhs/';
            $front_rhs_photo_db_file_path = $this->uploadMedia($front_rhs_photo,$image_file_name,$image_path);

            $exteriorRhsSide['front_rhs_photo'] = $front_rhs_photo_db_file_path;
        endif;

        if($rear_rhs_door_photo):
            $image_file_name = 'rear_rhs_door_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_rhs/';
            $rear_rhs_door_photo_db_file_path = $this->uploadMedia($rear_rhs_door_photo,$image_file_name,$image_path);

            $exteriorRhsSide['rear_rhs_door_photo'] = $rear_rhs_door_photo_db_file_path;
        endif;

        if($rhs_window_photo):
            $image_file_name = 'rhs_window_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_rhs/';
            $rhs_window_photo_db_file_path = $this->uploadMedia($rhs_window_photo,$image_file_name,$image_path);

            $exteriorRhsSide['rhs_window_photo'] = $rhs_window_photo_db_file_path;
        endif;

        if($c_piller_photo):
            $image_file_name = 'c_piller_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_rhs/';
            $c_piller_photo_db_file_path = $this->uploadMedia($c_piller_photo,$image_file_name,$image_path);

            $exteriorRhsSide['c_piller_photo'] = $c_piller_photo_db_file_path;
        endif;

        if($rear_rhs_tyre_photo):
            $image_file_name = 'rear_rhs_tyre_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_rhs/';
            $rear_rhs_tyre_photo_db_file_path = $this->uploadMedia($rear_rhs_tyre_photo,$image_file_name,$image_path);

            $exteriorRhsSide['rear_rhs_tyre_photo'] = $rear_rhs_tyre_photo_db_file_path;
        endif;
        $exteriorRhsSide['created_at'] = $current_timestamp;
        $exteriorRhsSide['updated_at'] = $current_timestamp;

        ExteriorRhsSide::updateOrInsert(
            ['order_id' => $order_id],
            $exteriorRhsSide
        );

        $exteriorBackSide = array();
        if($request->dicky_door) $exteriorBackSide['dicky_door'] = $request->dicky_door;
        $dicky_door_photo = $request->dicky_door_photo;
        if($request->rear_glass_back) $exteriorBackSide['rear_glass'] = $request->rear_glass_back;
        $rear_glass_photo = $request->rear_glass_photo;
        if($request->dicky_floor_condition) $exteriorBackSide['dicky_floor_condition'] = $request->dicky_floor_condition;
        $dicky_floor_photo = $request->dicky_floor_photo;
        if($request->spare_wheel_tyre_percentage) $exteriorBackSide['spare_wheel_tyre_percentage'] = $request->spare_wheel_tyre_percentage;
        if($request->rear_bumper) $exteriorBackSide['rear_bumper'] = $request->rear_bumper;
        $spare_wheel_photo = $request->spare_wheel_photo;

        if($dicky_door_photo):
            $image_file_name = 'dicky_door_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_back/';
            $dicky_door_photo_db_file_path = $this->uploadMedia($dicky_door_photo,$image_file_name,$image_path);

            $exteriorBackSide['dicky_door_photo'] = $dicky_door_photo_db_file_path;
        endif;

        if($rear_glass_photo):
            $image_file_name = 'rear_glass_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_back/';
            $rear_glass_photo_db_file_path = $this->uploadMedia($rear_glass_photo,$image_file_name,$image_path);

            $exteriorBackSide['rear_glass_photo'] = $rear_glass_photo_db_file_path;
        endif;

        if($dicky_floor_photo):
            $image_file_name = 'dicky_floor_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_back/';
            $dicky_floor_photo_db_file_path = $this->uploadMedia($dicky_floor_photo,$image_file_name,$image_path);

            $exteriorBackSide['dicky_floor_photo'] = $dicky_floor_photo_db_file_path;
        endif;

        if($spare_wheel_photo):
            $image_file_name = 'spare_wheel_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_back/';
            $spare_wheel_photo_db_file_path = $this->uploadMedia($spare_wheel_photo,$image_file_name,$image_path);

            $exteriorBackSide['spare_wheel_photo'] = $spare_wheel_photo_db_file_path;
        endif;
        $exteriorBackSide['created_at'] = $current_timestamp;
        $exteriorBackSide['updated_at'] = $current_timestamp;

        ExteriorBackSide::updateOrInsert(
            ['order_id' => $order_id],
            $exteriorBackSide
        );

        $exteriorLhsSide = array();
        if($request->lhs_side_appron) $exteriorLhsSide['lhs_side_appron'] = $request->lhs_side_appron;
        $lhs_appron_photo = $request->lhs_appron_photo;
        if($request->front_lhs_tyre_percentage) $exteriorLhsSide['front_lhs_tyre_percentage'] = $request->front_lhs_tyre_percentage;
        if($request->lhs_fender) $exteriorLhsSide['lhs_fender'] = $request->lhs_fender;
        $lhs_tyre_fender_photo = $request->lhs_tyre_fender_photo;
        if($request->lhs_a_piller) $exteriorLhsSide['a_piller'] = $request->lhs_a_piller;
        $lhs_a_piller_photo = $request->lhs_a_piller_photo;
        if($request->lhs_b_piller) $exteriorLhsSide['b_piller'] = $request->lhs_b_piller;
        $lhs_b_piller_photo = $request->lhs_b_piller_photo;
        if($request->front_lhs_window) $exteriorLhsSide['front_lhs_window'] = $request->front_lhs_window;
        if($request->front_lhs_door) $exteriorLhsSide['front_lhs_door'] = $request->front_lhs_door;
        $front_lhs_photo = $request->front_lhs_photo;
        if($request->rear_lhs_door) $exteriorLhsSide['rear_lhs_door'] = $request->rear_lhs_door;
        $rear_lhs_door_photo = $request->rear_lhs_door_photo;
        if($request->rear_lhs_window) $exteriorLhsSide['rear_lhs_window'] = $request->rear_lhs_window;
        if($request->lhs_running_board) $exteriorLhsSide['lhs_running_board'] = $request->lhs_running_board;
        $lhs_window_photo = $request->lhs_window_photo;
        if($request->lhs_c_piller) $exteriorLhsSide['c_piller'] = $request->lhs_c_piller;
        $lhs_c_piller_photo = $request->lhs_c_piller_photo;
        if($request->rear_lhs_tyre_percentage) $exteriorLhsSide['rear_lhs_tyre_percentage'] = $request->rear_lhs_tyre_percentage;
        if($request->lhs_quater_panel) $exteriorLhsSide['lhs_quater_panel'] = $request->lhs_quater_panel;
        $rear_lhs_tyre_photo = $request->rear_lhs_tyre_photo;

        if($lhs_appron_photo):
            $image_file_name = 'lhs_appron_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_lhs/';
            $lhs_appron_photo_db_file_path = $this->uploadMedia($lhs_appron_photo,$image_file_name,$image_path);

            $exteriorLhsSide['lhs_appron_photo'] = $lhs_appron_photo_db_file_path;
        endif;

        if($lhs_tyre_fender_photo):
            $image_file_name = 'lhs_tyre_fender_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_lhs/';
            $lhs_tyre_fender_photo_db_file_path = $this->uploadMedia($lhs_tyre_fender_photo,$image_file_name,$image_path);

            $exteriorLhsSide['lhs_tyre_fender_photo'] = $lhs_tyre_fender_photo_db_file_path;
        endif;

        if($lhs_a_piller_photo):
            $image_file_name = 'a_piller_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_lhs/';
            $lhs_a_piller_photo_db_file_path = $this->uploadMedia($lhs_a_piller_photo,$image_file_name,$image_path);

            $exteriorLhsSide['a_piller_photo'] = $lhs_a_piller_photo_db_file_path;
        endif;

        if($lhs_b_piller_photo):
            $image_file_name = 'b_piller_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_lhs/';
            $lhs_b_piller_photo_db_file_path = $this->uploadMedia($lhs_b_piller_photo,$image_file_name,$image_path);

            $exteriorLhsSide['b_piller_photo'] = $lhs_b_piller_photo_db_file_path;
        endif;

        if($front_lhs_photo):
            $image_file_name = 'front_lhs_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_lhs/';
            $front_lhs_photo_db_file_path = $this->uploadMedia($front_lhs_photo,$image_file_name,$image_path);

            $exteriorLhsSide['front_lhs_photo'] = $front_lhs_photo_db_file_path;
        endif;

        if($rear_lhs_door_photo):
            $image_file_name = 'rear_lhs_door_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_lhs/';
            $rear_lhs_door_photo_db_file_path = $this->uploadMedia($rear_lhs_door_photo,$image_file_name,$image_path);

            $exteriorLhsSide['rear_lhs_door_photo'] = $rear_lhs_door_photo_db_file_path;
        endif;

        if($lhs_window_photo):
            $image_file_name = 'lhs_window_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_lhs/';
            $lhs_window_photo_db_file_path = $this->uploadMedia($lhs_window_photo,$image_file_name,$image_path);

            $exteriorLhsSide['lhs_window_photo'] = $lhs_window_photo_db_file_path;
        endif;

        if($lhs_c_piller_photo):
            $image_file_name = 'lhs_c_piller_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_lhs/';
            $lhs_c_piller_photo_db_file_path = $this->uploadMedia($lhs_c_piller_photo,$image_file_name,$image_path);

            $exteriorLhsSide['c_piller_photo'] = $lhs_c_piller_photo_db_file_path;
        endif;

        if($rear_lhs_tyre_photo):
            $image_file_name = 'rear_lhs_tyre_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/exterior_lhs/';
            $rear_lhs_tyre_photo_db_file_path = $this->uploadMedia($rear_lhs_tyre_photo,$image_file_name,$image_path);

            $exteriorLhsSide['rear_lhs_tyre_photo'] = $rear_lhs_tyre_photo_db_file_path;
        endif;
        $exteriorLhsSide['created_at'] = $current_timestamp;
        $exteriorLhsSide['updated_at'] = $current_timestamp;

        ExteriorLhsSide::updateOrInsert(
            ['order_id' => $order_id],
            $exteriorLhsSide
        );
        $interior_array = array();
        if($request->airbag) $interior_array['airbag'] = $request->airbag;
        if($request->abs) $interior_array['abs'] = $request->abs;
        if($request->music_system) $interior_array['music_system'] = $request->music_system;
        if($request->speaker) $interior_array['speaker'] = $request->speaker;
        if($request->steering_wheel_condition) $interior_array['steering_wheel_condition'] = $request->steering_wheel_condition;
        if($request->steering_wheel_audio_control_button) $interior_array['steering_wheel_audio_control_button'] = $request->steering_wheel_audio_control_button;
        if($request->auto_ac_condition) $interior_array['auto_ac_condition'] = $request->auto_ac_condition;
        if($request->ac_flow) $interior_array['ac_flow'] = $request->ac_flow;
        if($request->ac_blower_moto_condition) $interior_array['ac_blower_moto_condition'] = $request->ac_blower_moto_condition;
        if($request->ac_direction_mode) $interior_array['ac_direction_mode'] = $request->ac_direction_mode;
        if($request->ac_heater) $interior_array['ac_heater'] = $request->ac_heater;
        if($request->glow_box) $interior_array['glow_box'] = $request->glow_box;
        if($request->gear_lever_knob) $interior_array['gear_lever_knob'] = $request->gear_lever_knob;
        if($request->power_window) $interior_array['power_window'] = $request->power_window;
        if($request->rhs_side_seat_condition) $interior_array['rhs_side_seat_condition'] = $request->rhs_side_seat_condition;
        if($request->lhs_side_seat_condition) $interior_array['lhs_side_seat_condition'] = $request->lhs_side_seat_condition;
        if($request->rear_seat_condition) $interior_array['rear_seat_condition'] = $request->rear_seat_condition;
        if($request->all_seat_cover_available) $interior_array['all_seat_cover_available'] = $request->all_seat_cover_available;
        if($request->all_mats_available) $interior_array['all_mats_available'] = $request->all_mats_available;
        $interior_array['created_at'] = $current_timestamp;
        $interior_array['updated_at'] = $current_timestamp;

        Interior::updateOrInsert(
            ['order_id' => $order_id],
            $interior_array
        );
        $testDrive_array = array();
        if($request->front_suspension_noise) $testDrive_array['front_suspension_noise'] = $request->front_suspension_noise;
        if($request->axie_noise) $testDrive_array['axie_noise'] = $request->axie_noise;
        if($request->rear_suspension_noise) $testDrive_array['rear_suspension_noise'] = $request->rear_suspension_noise;
        if($request->clutch_condition) $testDrive_array['clutch_condition'] = $request->clutch_condition;
        if($request->automatic_gear_box) $testDrive_array['automatic_gear_box'] = $request->automatic_gear_box;
        if($request->gear_box) $testDrive_array['gear_box'] = $request->gear_box;
        if($request->gear_box_noise) $testDrive_array['gear_box_noise'] = $request->gear_box_noise;
        if($request->gear_shifting) $testDrive_array['gear_shifting'] = $request->gear_shifting;
        if($request->w_a) $testDrive_array['w_a'] = $request->w_a;
        if($request->steering_noise) $testDrive_array['steering_noise'] = $request->steering_noise;
        if($request->steering_column_noise) $testDrive_array['steering_column_noise'] = $request->steering_column_noise;
        if($request->speedometer_knob) $testDrive_array['speedometer_knob'] = $request->speedometer_knob;
        if($request->odometer_reading2) $testDrive_array['odometer_reading'] = $request->odometer_reading2;
        $testDrive_array['created_at'] = $current_timestamp;
        $testDrive_array['updated_at'] = $current_timestamp;

        TestDrive::updateOrInsert(
            ['order_id' => $order_id],
            $testDrive_array
        );

        $engineCompartment = array();
        if($request->tapped_noise) $engineCompartment['tapped_noise'] = $request->tapped_noise;
        if($request->engine_overheating) $engineCompartment['engine_overheating'] = $request->engine_overheating;
        if($request->engine_oil_sludge) $engineCompartment['engine_oil_sludge'] = $request->engine_oil_sludge;
        if($request->engine_oil_condition) $engineCompartment['engine_oil_condition'] = $request->engine_oil_condition;
        if($request->coolent) $engineCompartment['coolent'] = $request->coolent;
        if($request->timeing_side_noise) $engineCompartment['timeing_side_noise'] = $request->timeing_side_noise;
        if($request->altmeter_condition) $engineCompartment['altmeter_condition'] = $request->altmeter_condition;
        if($request->bettery_condition) $engineCompartment['bettery_condition'] = $request->bettery_condition;
        if($request->ac_compressor) $engineCompartment['ac_compressor'] = $request->ac_compressor;
        if($request->starter_motor_noise) $engineCompartment['starter_motor_noise'] = $request->starter_motor_noise;
        if($request->air_fiter_assy) $engineCompartment['air_fiter_assy'] = $request->air_fiter_assy;
        if($request->engine_video_link) $engineCompartment['engine_video_link'] = $request->engine_video_link;
        $engineCompartment['created_at'] = $current_timestamp;
        $engineCompartment['updated_at'] = $current_timestamp;

        EngineCompartment::updateOrInsert(
            ['order_id' => $order_id],
            $engineCompartment
        );
        $specialFeature = array();

        if($request->comment_1) $specialFeature['comment_1'] = $request->comment_1;
        $comment_1_photo = $request->comment_1_photo;
        if($request->comment_2) $specialFeature['comment_2'] = $request->comment_2;
        $comment_2_photo = $request->comment_2_photo;
        if($request->comment_3) $specialFeature['comment_3'] = $request->comment_3;
        $comment_3_photo = $request->comment_3_photo;
        if($request->comment_4) $specialFeature['comment_4'] = $request->comment_4;
        $comment_4_photo = $request->comment_4_photo;
        if($request->comment_5) $specialFeature['comment_5'] = $request->comment_5;
        $comment_5_photo = $request->comment_5_photo;
        if($request->comment_6) $specialFeature['comment_6'] = $request->comment_6;
        $comment_6_photo = $request->comment_6_photo;
        if($request->comment_7) $specialFeature['comment_7'] = $request->comment_7;
        $comment_7_photo = $request->comment_7_photo;
        if($request->comment_8) $specialFeature['comment_8'] = $request->comment_8;
        $comment_8_photo = $request->comment_8_photo;
        if($request->comment_9) $specialFeature['comment_9'] = $request->comment_9;
        $comment_9_photo = $request->comment_9_photo;
        if($request->comment_10) $specialFeature['comment_10'] = $request->comment_10;
        $comment_10_photo = $request->comment_10_photo;
        if($request->comment_11) $specialFeature['comment_11'] = $request->comment_11;
        $comment_11_photo = $request->comment_11_photo;
        if($request->comment_12) $specialFeature['comment_12'] = $request->comment_12;
        $comment_12_photo = $request->comment_12_photo;
        if($request->comment_13) $specialFeature['comment_13'] = $request->comment_13;
        $comment_13_photo = $request->comment_13_photo;
        if($request->comment_14) $specialFeature['comment_14'] = $request->comment_14;
        $comment_14_photo = $request->comment_14_photo;
        if($request->comment_15) $specialFeature['comment_15'] = $request->comment_15;
        $comment_15_photo = $request->comment_15_photo;

        if($comment_1_photo):
            $image_file_name = 'comment_1_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_1_photo_db_file_path = $this->uploadMedia($comment_1_photo,$image_file_name,$image_path);

            $specialFeature['comment_1_photo'] = $comment_1_photo_db_file_path;
        endif;

        if($comment_2_photo):
            $image_file_name = 'comment_2_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_2_photo_db_file_path = $this->uploadMedia($comment_2_photo,$image_file_name,$image_path);

            $specialFeature['comment_2_photo'] = $comment_2_photo_db_file_path;
        endif;

        if($comment_3_photo):
            $image_file_name = 'comment_3_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_3_photo_db_file_path = $this->uploadMedia($comment_3_photo,$image_file_name,$image_path);

            $specialFeature['comment_3_photo'] = $comment_3_photo_db_file_path;
        endif;

        if($comment_4_photo):
            $image_file_name = 'comment_4_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_4_photo_db_file_path = $this->uploadMedia($comment_4_photo,$image_file_name,$image_path);

            $specialFeature['comment_4_photo'] = $comment_4_photo_db_file_path;
        endif;

        if($comment_5_photo):
            $image_file_name = 'comment_5_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_5_photo_db_file_path = $this->uploadMedia($comment_5_photo,$image_file_name,$image_path);

            $specialFeature['comment_5_photo'] = $comment_5_photo_db_file_path;
        endif;

        if($comment_6_photo):
            $image_file_name = 'comment_6_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_6_photo_db_file_path = $this->uploadMedia($comment_6_photo,$image_file_name,$image_path);

            $specialFeature['comment_6_photo'] = $comment_6_photo_db_file_path;
        endif;

        if($comment_7_photo):
            $image_file_name = 'comment_7_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_7_photo_db_file_path = $this->uploadMedia($comment_7_photo,$image_file_name,$image_path);

            $specialFeature['comment_7_photo'] = $comment_7_photo_db_file_path;
        endif;

        if($comment_8_photo):
            $image_file_name = 'comment_8_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_8_photo_db_file_path = $this->uploadMedia($comment_8_photo,$image_file_name,$image_path);

            $specialFeature['comment_8_photo'] = $comment_8_photo_db_file_path;
        endif;

        if($comment_9_photo):
            $image_file_name = 'comment_9_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_9_photo_db_file_path = $this->uploadMedia($comment_9_photo,$image_file_name,$image_path);

            $specialFeature['comment_9_photo'] = $comment_9_photo_db_file_path;
        endif;

        if($comment_10_photo):
            $image_file_name = 'comment_10_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_10_photo_db_file_path = $this->uploadMedia($comment_10_photo,$image_file_name,$image_path);

            $specialFeature['comment_10_photo'] = $comment_10_photo_db_file_path;
        endif;

        if($comment_11_photo):
            $image_file_name = 'comment_11_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_11_photo_db_file_path = $this->uploadMedia($comment_11_photo,$image_file_name,$image_path);

            $specialFeature['comment_11_photo'] = $comment_11_photo_db_file_path;
        endif;

        if($comment_12_photo):
            $image_file_name = 'comment_12_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_12_photo_db_file_path = $this->uploadMedia($comment_12_photo,$image_file_name,$image_path);

            $specialFeature['comment_12_photo'] = $comment_12_photo_db_file_path;
        endif;

        if($comment_13_photo):
            $image_file_name = 'comment_13_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_13_photo_db_file_path = $this->uploadMedia($comment_13_photo,$image_file_name,$image_path);

            $specialFeature['comment_13_photo'] = $comment_13_photo_db_file_path;
        endif;

        if($comment_14_photo):
            $image_file_name = 'comment_14_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_14_photo_db_file_path = $this->uploadMedia($comment_14_photo,$image_file_name,$image_path);

            $specialFeature['comment_14_photo'] = $comment_14_photo_db_file_path;
        endif;

        if($comment_15_photo):
            $image_file_name = 'comment_15_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/special_feature/';
            $comment_15_photo_db_file_path = $this->uploadMedia($comment_15_photo,$image_file_name,$image_path);

            $specialFeature['comment_15_photo'] = $comment_15_photo_db_file_path;
        endif;
        $specialFeature['created_at'] = $current_timestamp;
        $specialFeature['updated_at'] = $current_timestamp;

        SpecialFeature::updateOrInsert(
            ['order_id' => $order_id],
            $specialFeature
        );

        $damage_array = array();
        if($request->damage_comment_1) $damage_array['comment_1'] = $request->damage_comment_1;
        $damage_comment_1_photo = $request->damage_comment_1_photo;
        if($request->damage_comment_2) $damage_array['comment_2'] = $request->damage_comment_2;
        $damage_comment_2_photo = $request->damage_comment_2_photo;
        if($request->damage_comment_3) $damage_array['comment_3'] = $request->damage_comment_3;
        $damage_comment_3_photo = $request->damage_comment_3_photo;
        if($request->damage_comment_4) $damage_array['comment_4'] = $request->damage_comment_4;
        $damage_comment_4_photo = $request->damage_comment_4_photo;
        if($request->damage_comment_5) $damage_array['comment_5'] = $request->damage_comment_5;
        $damage_comment_5_photo = $request->damage_comment_5_photo;
        if($request->damage_comment_6) $damage_array['comment_6'] = $request->damage_comment_6;
        $damage_comment_6_photo = $request->damage_comment_6_photo;
        if($request->damage_comment_7) $damage_array['comment_7'] = $request->damage_comment_7;
        $damage_comment_7_photo = $request->damage_comment_7_photo;
        if($request->damage_comment_8) $damage_array['comment_8'] = $request->damage_comment_8;
        $damage_comment_8_photo = $request->damage_comment_8_photo;
        if($request->damage_comment_9) $damage_array['comment_9'] = $request->damage_comment_9;
        $damage_comment_9_photo = $request->damage_comment_9_photo;
        if($request->damage_comment_10) $damage_array['comment_10'] = $request->damage_comment_10;
        $damage_comment_10_photo = $request->damage_comment_10_photo;
        if($request->damage_comment_11) $damage_array['comment_11'] = $request->damage_comment_11;
        $damage_comment_11_photo = $request->damage_comment_11_photo;
        if($request->damage_comment_12) $damage_array['comment_12'] = $request->damage_comment_12;
        $damage_comment_12_photo = $request->damage_comment_12_photo;
        if($request->damage_comment_13) $damage_array['comment_13'] = $request->damage_comment_13;
        $damage_comment_13_photo = $request->damage_comment_13_photo;
        if($request->damage_comment_14) $damage_array['comment_14'] = $request->damage_comment_14;
        $damage_comment_14_photo = $request->damage_comment_14_photo;
        if($request->damage_comment_15) $damage_array['comment_15'] = $request->damage_comment_15;
        $damage_comment_15_photo = $request->damage_comment_15_photo;
        if($request->damage_comment_16) $damage_array['comment_16'] = $request->damage_comment_16;
        $damage_comment_16_photo = $request->damage_comment_16_photo;
        if($request->damage_comment_17) $damage_array['comment_17'] = $request->damage_comment_17;
        $damage_comment_17_photo = $request->damage_comment_17_photo;
        if($request->damage_comment_18) $damage_array['comment_18'] = $request->damage_comment_18;
        $damage_comment_18_photo = $request->damage_comment_18_photo;
        if($request->damage_comment_19) $damage_array['comment_19'] = $request->damage_comment_19;
        $damage_comment_19_photo = $request->damage_comment_19_photo;
        if($request->damage_comment_20) $damage_array['comment_20'] = $request->damage_comment_20;
        $damage_comment_20_photo = $request->damage_comment_20_photo;

        if($damage_comment_1_photo):
            $image_file_name = 'damage_comment_1_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_1_photo_db_file_path = $this->uploadMedia($damage_comment_1_photo,$image_file_name,$image_path);

            $damage_array['comment_1_photo'] = $damage_comment_1_photo_db_file_path;
        endif;

        if($damage_comment_2_photo):
            $image_file_name = 'damage_comment_2_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_2_photo_db_file_path = $this->uploadMedia($damage_comment_2_photo,$image_file_name,$image_path);

            $damage_array['comment_2_photo'] = $damage_comment_2_photo_db_file_path;
        endif;

        if($damage_comment_3_photo):
            $image_file_name = 'damage_comment_3_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_3_photo_db_file_path = $this->uploadMedia($damage_comment_3_photo,$image_file_name,$image_path);

            $damage_array['comment_3_photo'] = $damage_comment_3_photo_db_file_path;
        endif;

        if($damage_comment_4_photo):
            $image_file_name = 'damage_comment_4_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_4_photo_db_file_path = $this->uploadMedia($damage_comment_4_photo,$image_file_name,$image_path);

            $damage_array['comment_4_photo'] = $damage_comment_4_photo_db_file_path;
        endif;

        if($damage_comment_5_photo):
            $image_file_name = 'damage_comment_5_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_5_photo_db_file_path = $this->uploadMedia($damage_comment_5_photo,$image_file_name,$image_path);

            $damage_array['comment_5_photo'] = $damage_comment_5_photo_db_file_path;
        endif;

        if($damage_comment_6_photo):
            $image_file_name = 'damage_comment_6_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_6_photo_db_file_path = $this->uploadMedia($damage_comment_6_photo,$image_file_name,$image_path);

            $damage_array['comment_6_photo'] = $damage_comment_6_photo_db_file_path;
        endif;

        if($damage_comment_7_photo):
            $image_file_name = 'damage_comment_7_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_7_photo_db_file_path = $this->uploadMedia($damage_comment_7_photo,$image_file_name,$image_path);

            $damage_array['comment_7_photo'] = $damage_comment_7_photo_db_file_path;
        endif;

        if($damage_comment_8_photo):
            $image_file_name = 'damage_comment_8_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_8_photo_db_file_path = $this->uploadMedia($damage_comment_8_photo,$image_file_name,$image_path);

            $damage_array['comment_8_photo'] = $damage_comment_8_photo_db_file_path;
        endif;

        if($damage_comment_9_photo):
            $image_file_name = 'damage_comment_9_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_9_photo_db_file_path = $this->uploadMedia($damage_comment_9_photo,$image_file_name,$image_path);

            $damage_array['comment_9_photo'] = $damage_comment_9_photo_db_file_path;
        endif;

        if($damage_comment_10_photo):
            $image_file_name = 'damage_comment_10_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_10_photo_db_file_path = $this->uploadMedia($damage_comment_10_photo,$image_file_name,$image_path);

            $damage_array['comment_10_photo'] = $damage_comment_10_photo_db_file_path;
        endif;

        if($damage_comment_11_photo):
            $image_file_name = 'damage_comment_11_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_11_photo_db_file_path = $this->uploadMedia($damage_comment_11_photo,$image_file_name,$image_path);

            $damage_array['comment_11_photo'] = $damage_comment_11_photo_db_file_path;
        endif;

        if($damage_comment_12_photo):
            $image_file_name = 'damage_comment_12_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_12_photo_db_file_path = $this->uploadMedia($damage_comment_12_photo,$image_file_name,$image_path);

            $damage_array['comment_12_photo'] = $damage_comment_12_photo_db_file_path;
        endif;

        if($damage_comment_13_photo):
            $image_file_name = 'damage_comment_13_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_13_photo_db_file_path = $this->uploadMedia($damage_comment_13_photo,$image_file_name,$image_path);

            $damage_array['comment_13_photo'] = $damage_comment_13_photo_db_file_path;
        endif;

        if($damage_comment_14_photo):
            $image_file_name = 'damage_comment_14_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_14_photo_db_file_path = $this->uploadMedia($damage_comment_14_photo,$image_file_name,$image_path);

            $damage_array['comment_14_photo'] = $damage_comment_14_photo_db_file_path;
        endif;

        if($damage_comment_15_photo):
            $image_file_name = 'damage_comment_15_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_15_photo_db_file_path = $this->uploadMedia($damage_comment_15_photo,$image_file_name,$image_path);

            $damage_array['comment_15_photo'] = $damage_comment_15_photo_db_file_path;
        endif;

        if($damage_comment_16_photo):
            $image_file_name = 'damage_comment_16_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_16_photo_db_file_path = $this->uploadMedia($damage_comment_16_photo,$image_file_name,$image_path);

            $damage_array['comment_16_photo'] = $damage_comment_16_photo_db_file_path;
        endif;

        if($damage_comment_17_photo):
            $image_file_name = 'damage_comment_17_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_17_photo_db_file_path = $this->uploadMedia($damage_comment_17_photo,$image_file_name,$image_path);

            $damage_array['comment_17_photo'] = $damage_comment_17_photo_db_file_path;
        endif;

        if($damage_comment_18_photo):
            $image_file_name = 'damage_comment_18_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_18_photo_db_file_path = $this->uploadMedia($damage_comment_18_photo,$image_file_name,$image_path);

            $damage_array['comment_18_photo'] = $damage_comment_18_photo_db_file_path;
        endif;

        if($damage_comment_19_photo):
            $image_file_name = 'damage_comment_19_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_19_photo_db_file_path = $this->uploadMedia($damage_comment_19_photo,$image_file_name,$image_path);

            $damage_array['comment_19_photo'] = $damage_comment_19_photo_db_file_path;
        endif;

        if($damage_comment_20_photo):
            $image_file_name = 'damage_comment_20_photo_'.$order_id;
            $image_path = 'images/documents/vehicle/damage/';
            $damage_comment_20_photo_db_file_path = $this->uploadMedia($damage_comment_20_photo,$image_file_name,$image_path);

            $damage_array['comment_20_photo'] = $damage_comment_20_photo_db_file_path;
        endif;
        if($request->comment) $damage_array['comment'] = $request->comment;
        $damage_array['created_at'] = $current_timestamp;
        $damage_array['updated_at'] = $current_timestamp;

        Damage::updateOrInsert(
            ['order_id' => $order_id],
            $damage_array
        );

        $order_info = Order::with([
                        'customer_details',
                        'rc_details',
                        'customer_details',
                        'rc_details',
                        'chassis_details',
                        'vehicle_details',
                        'vehicle_photos',
                        'exterior_front_side',
                        'exterior_rhs_side',
                        'exterior_back_side',
                        'exterior_lhs_side',
                        'Interior',
                        'test_derive',
                        'engine_compartment',
                        'special_features',
                        'any_damage',
                        ])->where('id',$order_id)->first();

        $brand_image = Brand::where('id',$order_info->brand_id)->value('image_path');

        $path = 'https://thecarsdoctor.com/admin/img/logo.png';
        $rcpath = 'https://thecarsdoctor.com/TCD/images/1.png';
        $type = pathinfo($path, PATHINFO_EXTENSION);
        $img_data = file_get_contents($path);

        $rc_base64 = 'data:image/' . $type . ';base64,' . base64_encode($rcpath);
        $base64 = 'data:image/' . $type . ';base64,' . base64_encode($img_data);

        $order_info['base64'] = $base64;
        $order_info['brand_image'] = $brand_image;
        $storage_path = str_replace('attach/storage','',storage_path());
        $save_path = 'images/invoice/inspection_report_'.$order_info->order_no.'.pdf';
        $invoice_path = $storage_path.'images/invoice/inspection_report_'.$order_info->order_no.'.pdf';
        $pdf =  Pdf::loadView('admin.sample_pdf', $order_info->toArray());
        $pdf->save($invoice_path);

        Order::where('id',$order_id)
        ->update([
                    'status'=>'4',
                    'document_status'=>'0',
                    'document_pdf'=>$save_path,
                    'document_update'=>$current_timestamp,
                ]);

        $response = array("error"=>false,"message"=>"Details updated successfully");
        return $response;

    }

    public function generatePdf()
    {
        $invoice_path = public_path() . '/images/';

        $order_info = Order::with([
                                    'customer_details',
                                    'rc_details',
                                    'customer_details',
                                    'rc_details',
                                    'chassis_details',
                                    'vehicle_details',
                                    'vehicle_photos',
                                    'exterior_front_side',
                                    'exterior_rhs_side',
                                    'exterior_back_side',
                                    'exterior_lhs_side',
                                    'Interior',
                                    'test_derive',
                                    'engine_compartment',
                                    'special_features',
                                    'any_damage',
                                    ])->find(24);
        $brand_image = Brand::where('id',$order_info->brand_id)->value('image_path');
        $order_info['brand_image'] = $brand_image;
        $path = 'https://thecarsdoctor.com/admin/img/logo.png';
        $rcpath = 'https://thecarsdoctor.com/TCD/images/1.png';
        $type = pathinfo($path, PATHINFO_EXTENSION);
        $img_data = file_get_contents($path);

        $rc_base64 = 'data:image/' . $type . ';base64,' . base64_encode($rcpath);
        $base64 = 'data:image/' . $type . ';base64,' . base64_encode($img_data);
        // $data = [
        //     'order_info' => $order_info,
        //     'base64' => $base64
        // ];
        $order_info['base64'] = $base64;
        $pdf = PDF::loadView('admin.sample_pdf', $order_info->toArray());
        // $pdf = view('admin.invoice_test', $data);
        // return "asd";
        // return $pdf->save($invoice_path);
        // return $pdf;
        return $pdf->stream();
        // $storage_path = str_replace('attach/storage','',storage_path());
        // $save_path = asset('images/invoice/').'/invoice_1.pdf';
        // $invoice_path = $storage_path.'images/invoice/invoice_1.pdf';
        // dd($invoice_path);

        // $pdf =  Pdf::loadView('admin.sample_pdf', $order_info->toArray());
        // $pdf->save($invoice_path);
        // // ->stream('download.pdf');
        // return 'adasd';


        // $html = view('admin.invoice_pdf', $data)->render();
        // return PDF::loadHTML($html, 'utf-8')->stream();
    }
    public function edit(Request $request)
    {
        $id = $request->id;

        $order_info = Order::select('id')->with([
                                    'customer_details',
                                    'rc_details',
                                    'customer_details',
                                    'rc_details',
                                    'chassis_details',
                                    'vehicle_details',
                                    'vehicle_photos',
                                    'exterior_front_side',
                                    'exterior_rhs_side',
                                    'exterior_back_side',
                                    'exterior_lhs_side',
                                    'Interior',
                                    'test_derive',
                                    'engine_compartment',
                                    'special_features',
                                    'any_damage',
                                    ])->where('id',$id)->first();
        return $order_info;
    }
}
