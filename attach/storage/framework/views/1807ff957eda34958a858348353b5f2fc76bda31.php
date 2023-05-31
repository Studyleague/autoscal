<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>TCD - The Cars Doctor</title>
</head>
<style type="text/css">
    body{
        font-family: 'Roboto Condensed', sans-serif;
        /* font-family: DejaVu Sans; sans-serif; */
    }
    @page {
        margin-top: 150px;
        margin-bottom: 0px;
    }

    header {
        position: fixed;
        top: -120px;
        left: 0px;
        right: 0px;
        height: 50px;

        /** Extra personal styles **/
        line-height: 35px;
    }
    .ripee-sign{
        /*font-family: DejaVu Sans; sans-serif;*/
    }
    .m-0{
        margin: 0px;
    }
    .p-0{
        padding: 0px;
    }
    .pt-5{
        padding-top:5px;
    }
    .mt-10{
        margin-top:5px;
    }
    .text-center{
        text-align:center !important;
    }
    .w-100{
        width: 100%;
    }
    .w-50{
        width:50%;
    }
    .w-60{
        width:60%;
    }

    .w-30{
        width:30%;
    }
    .w-70{
        width:70%;
    }

    .w-40{
        width:40%;
    }
    .w-85{
        width:80%;
    }
    .w-15{
        width:20%;
    }
    .logo img{
        width:120px;
        height:120px;
        /*padding-top:30px;*/
    }
    .logo span{
        /*margin-left:8px;*/
        position: absolute;
        bottom:19px;
        right:0;
        font-weight: bold;
        font-size:14px;
    }
    .gray-color{
        color:#5D5D5D;
    }
    .text-bold{
        font-weight: bold;
    }
    .border{
        border:1px solid black;
    }
    table tr,th,td{
        border: 1px solid #d2d2d2;
        border-collapse:collapse;
        padding:7px 8px;
    }
    table tr th{
        background: #F4F4F4;
        font-size:15px;
    }
    table tr td{
        font-size:13px;
    }
    table{
        border-collapse:collapse;
    }
    .box-text p{
        line-height:10px;
    }
    .float-left{
        float:left;
    }
    .total-part{
        font-size:16px;
        line-height:12px;
    }
    .total-right p{
        padding-right:20px;
    }
    .page-break {
        page-break-after: always;
    }
    .text-left {
        float: left;
    }
</style>
<body>
<header>
    <div class="text-left logo w-60">
        <img src="<?php echo e($base64); ?>">
    </div>
    <div class="text-left logo w-40" style="margin-top:35px;">
        <h2 class="text-right m-0 p-0" style="text-align:right;">Inspection Report</h2>
    </div>
    <div style="clear: both;"></div>
</header>
<div class="add-detail mt-10">
    
    <div class="text-left logo w-60">
        
    </div>
    <div class="text-left logo w-40">
        
        <p style="text-align:right;">
            <b>Order No:</b> #<?php echo e($order_no); ?> <br>
            <b>Date:</b> <?php echo e(date("d-m-Y")); ?>

        </p>
    </div>

    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <div class="head-title w-100">
        <h2 class="text-center m-0 p-0">Customer Deatils</h2>
    </div>
    <br>
    <table class="table w-100 mt-10">
        <tr>
            <th style="font-size:20px">Buyer Details</th>
        </tr>
        <tr>
            <td>
                <div class="box-text">
                    <p style="font-size:20px">Buyer Name : <?php echo e($customer_details['purchase_cust_name']); ?></p>
                    <p style="font-size:20px">Buyer Number: <?php echo e($customer_details['purchase_cust_no']); ?></p>
                    <p style="font-size:20px">Location: <?php echo e($customer_details['purchase_location']); ?></p>
                </div>
            </td>
        </tr>
    </table>
    <br>
    <table class="table w-100 mt-10">
        <tr>
            <th style="font-size:20px">Seller Details</th>
        </tr>
        <tr>
            <td>
                <div class="box-text">
                    <p style="font-size:20px">Seller Name : <?php echo e($customer_details['sell_cust_name']); ?></p>
                    <p style="font-size:20px">Seller Number: <?php echo e($customer_details['sell_cust_no']); ?></p>
                    <p style="font-size:20px">Location: <?php echo e($customer_details['sell_location']); ?></p>
                </div>
            </td>
        </tr>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">Car Body Evaluation</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <div class="head-title text-center">
        <img class="w-100" src="https://leadstoclient.tech/TCD/images/tcd_car.png" alt="">
    </div>
    <table class="table w-100 mt-10">
        <tr>
            <td class="text-left">
                <b style="color:#D6B92A;background-color:#D6B92A;font-size:18px;">
                    FD
                </b>
                Headlight
            </td>
            <td class="text-left">
                <b style="color:#0A4D9E;background-color:#0A4D9E;font-size:18px;">
                    FD
                </b>
                Turn Signal
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <b style="color:#8B1737;background-color:#8B1737;font-size:18px;">
                    FD
                </b>
                Handle
            </td>
            <td class="text-left">
                <b style="color:#585BA8;background-color:#585BA8;font-size:18px;">
                    FD
                </b>
                Wheel
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <b style="color:#5BBE89;background-color:#5BBE89;font-size:18px;">
                    FD
                </b>
                Fuel Cap
            </td>

            <td class="text-left">
                <b style="color:#E53325;background-color:#E53325;font-size:18px;">
                    FD
                </b>
                Rear Bumper
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <b style="color:#6DBF62;background-color:#6DBF62;font-size:18px;">
                    FD
                </b>
                Bonnet
            </td>

            <td class="text-left">
                <b style="color:#8A4C9E;background-color:#8A4C9E;font-size:18px;">
                    FD
                </b>
                Roof
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <b style="color:#079B83;background-color:#079B83;font-size:18px;">
                    FD
                </b>
                Wind Shield
            </td>

            <td class="text-left">
                <b style="color:#C366A8;background-color:#C366A8;font-size:18px;">
                    FD
                </b>
                Dicky
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <b style="color:#F68720;background-color:#F68720;font-size:18px;">
                    FD
                </b>
                Quarter Panel
            </td>

            <td class="text-left">
                <b style="color:#8BC63F;background-color:#8BC63F;font-size:18px;">
                    FD
                </b>
                Bonnet, Back Door
            </td>
        </tr>
        <tr>
            <td class="text-left">
                <b style="color:#A2A337;background-color:#A2A337;font-size:18px;">
                    FD
                </b>
                Front Door
            </td>

            <td class="text-left">
                <b style="color:#F05323;background-color:#F05323;font-size:18px;">
                    FD
                </b>
                Front Bumper
            </td>
        </tr>
    </table>
</div>

<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">RC and Insurance Details</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">RC</th>
            <th class="w-50">RC Type</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($rc_details['rc_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($rc_details['rc']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($rc_details['rc_type_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($rc_details['rc_type']); ?></b>
                <br><br>
            </td>
        </tr>
        <tr>
            <th class="w-50">Insurance Type</th>
            <th class="w-50">Expiry Date</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($rc_details['insuarance_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($rc_details['zero_dep_insuarance']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($rc_details['expiry_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($rc_details['expiry_date']); ?></b>
                <br><br>
            </td>
        </tr>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">Chassis Details</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Chassis No</th>
            <th class="w-50">Engine No</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($chassis_details['chasis_no']); ?>

            </td>
            <td class="text-center">
                <?php echo e($chassis_details['engine_no']); ?>

            </td>
        </tr>
        <tr>
            <td class="text-center">
                <img class="w-100" src="<?php echo e(asset($chassis_details['chasis_photo'])); ?>" alt="">
            </td>
            <td class="text-center">
                <?php if($chassis_details['chasis_photo']): ?>
                <img class="w-100" src="<?php echo e(asset($chassis_details['engine_photo'])); ?>" alt="">
                <?php endif; ?>
            </td>
        </tr>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">Vehicle Details</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Vehicle State
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['vehicle_state']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Vehicle Number
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['vehicle_no']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Vehicle Make
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['vehicle_make']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Vehicle Model
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['vehicle_model']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Variant
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['veriant']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                MFG Year
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['mfg_year']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                REG Year
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['reg_year']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Tax Validity
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['tax_validity']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Colour
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['vehicle_color']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Engine Cubic Capacity
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['engine_cube_capacity']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Fuel type
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['fuel_type']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Owner Serial No
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['owner_serial_no']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Odometer Reading
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['odometer_reading']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Accidental Summary
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['accidental_summary']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Flooded Condition
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['flooded_condition']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Special Comments
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($vehicle_details['special_comments']); ?>

            </td>
        </tr>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">Uploaded Photos</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Front View</th>
            <th class="w-50">Front Glass</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['front_view'])); ?>" style="width:250px;height:250px">
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['front_glass'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <tr>
            <th class="w-50">Engine Compartment</th>
            <th class="w-50">Roof</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['engine_compartment'])); ?>" style="width:250px;height:250px">
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['roof'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <tr>
            <th class="w-50">Front RHS side Triangle View</th>
            <th class="w-50">Front RHS Tyre</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['front_rhs_side_tringle_view'])); ?>" style="width:250px;height:250px">
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['front_rhs_tyre'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <tr>
            <th class="w-50">RHS side View</th>
            <th class="w-50">RHS side Interior View</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['rhs_side_view'])); ?>" style="width:250px;height:250px">
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['rhs_side_interior_view'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <tr>
            <th class="w-50">Rear RHS tyre</th>
            <th class="w-50">Back side View</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['rear_rhs_tyre'])); ?>" style="width:250px;height:250px">
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['back_side_view'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <tr>
            <th class="w-50">Dicky Door Open View</th>
            <th class="w-50">Dicky Floor View</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['dicky_door_open_view'])); ?>" style="width:250px;height:250px">
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['dicky_floor_view'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
    </table>
    <div class="page-break"></div>
    <table class="table w-100 mt-10">

        <tr>
            <th class="w-50">Rear Glass</th>
            <th class="w-50">Spare Wheel tyre</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['rear_glass'])); ?>" style="width:250px;height:250px">
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['spare_wheel_tyre'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <tr>
            <th class="w-50">Rear LHS side Triangle View</th>
            <th class="w-50">Rear LHS Tyre</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['rear_lhs_side_triangle_view'])); ?>" style="width:250px;height:250px">
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['rear_lhs_tyre'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <tr>
            <th class="w-50">LHS side View</th>
            <th class="w-50">Rear interior View</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['lhs_side_view'])); ?>" style="width:250px;height:250px">
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['rear_interior_view'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
    </table>
    <div class="page-break"></div>
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Front LHS tyre</th>
            <th class="w-50">Dashboard View</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['front_lhs_tyre'])); ?>" style="width:250px;height:250px">
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['dashboard_view'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <tr>
            <th class="w-50">Odometer View</th>
            <th class="w-50"></th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($vehicle_photos['odometer_view'])); ?>" style="width:250px;height:250px">
            </td>
            <td class="text-center">
                
            </td>
        </tr>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">Exterior Front Side</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Front Bumper</th>
            <th class="w-50">Bonnet</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_front_side['front_bumper_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_front_side['front_bumper']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_front_side['bonnet_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_front_side['bonnet']); ?></b>
                <br><br>
            </td>
        </tr>
        <tr>
            <th class="w-50">Front Glass</th>
            <th class="w-50">Roof</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_front_side['front_glass_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_front_side['front_glass']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_front_side['roof_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_front_side['roof']); ?></b>
                <br><br>
            </td>
        </tr>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">Exterior RHS Side</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">RHS side Appron </th>
            <th class="w-50">Front RHS Tyre percentage</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_rhs_side['rhs_appron_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_rhs_side['rhs_side_appron']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($brand_image)); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_rhs_side['front_rhs_tyre_percentage']); ?></b>
            </td>
        </tr>
        <tr>
            <th class="w-50">RHS Fender</th>
            <th class="w-50">A Piller</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_rhs_side['rhs_tyre_fender_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_rhs_side['rhs_fender']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_rhs_side['a_piller_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_rhs_side['a_piller']); ?></b>
                <br><br>
            </td>
        </tr>
    </table>
    <div class="page-break"></div>
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">B Piller</th>
            <th class="w-50">Front RHS Window</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_rhs_side['b_piller_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_rhs_side['b_piller']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($brand_image)); ?>" style="width:250px;height:250px">
                <br><br>
                <b>
                    <?php echo e($exterior_rhs_side['front_rhs_window']); ?>

                </b>

            </td>
        </tr>
        <tr>
            <th class="w-50">Front RHS Door </th>
            <th class="w-50">Rear RHS Door</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_rhs_side['front_rhs_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_rhs_side['front_rhs_door']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_rhs_side['rear_rhs_door_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b>
                    <?php echo e($exterior_rhs_side['rear_rhs_door']); ?>

                </b>
            </td>
        </tr>
    </table>
    <div class="page-break"></div>
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Rear RHS Window</th>
            <th class="w-50">RHS Running board</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($brand_image)); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_rhs_side['rear_rhs_window']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_rhs_side['rhs_window_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_rhs_side['rhs_running_board']); ?></b>
                <br><br>
            </td>
        </tr>
        <tr>
            <th class="w-50">C Piller</th>
            <th class="w-50">Rear RHS Tyre percentage</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_rhs_side['c_piller_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_rhs_side['c_piller']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($brand_image)); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_rhs_side['rear_rhs_tyre_percentage']); ?></b>
                <br><br>
            </td>
        </tr>
    </table>
    <div class="page-break"></div>
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">RHS Quater panel</th>
            <th class="w-50"></th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_rhs_side['rear_rhs_tyre_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_rhs_side['rhs_quater_panel']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                
            </td>
        </tr>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">Exterior Back Side</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Dicky Door</th>
            <th class="w-50">Rear Glass</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_back_side['dicky_door_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_back_side['dicky_door']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_back_side['rear_glass_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_back_side['rear_glass']); ?></b>
                <br><br>
            </td>
        </tr>
        <tr>
            <th class="w-50">Dicky Floor Condition</th>
            <th class="w-50">Spare Wheel Tyre percentage</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_back_side['dicky_floor_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_back_side['dicky_floor_condition']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($brand_image)); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_back_side['spare_wheel_tyre_percentage']); ?></b>
            </td>
        </tr>
    </table>
    <div class="page-break"></div>
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Rear Bumper</th>
            <th class="w-50"></th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_back_side['spare_wheel_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b>
                    <?php echo e($exterior_back_side['rear_bumper']); ?>

                </b>
            </td>
            <td class="text-center">
            </td>
        </tr>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">Exterior Lhs side</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Lhs side Appron</th>
            <th class="w-50">Front Lhs Tyre percentage</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_lhs_side['lhs_appron_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_lhs_side['lhs_side_appron']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($brand_image)); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_lhs_side['front_lhs_tyre_percentage']); ?></b>
            </td>
        </tr>
        <tr>
            <th class="w-50">Lhs Fender</th>
            <th class="w-50">A Piller</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_lhs_side['lhs_tyre_fender_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_lhs_side['lhs_fender']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_lhs_side['a_piller_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_lhs_side['a_piller']); ?></b>
                <br><br>
            </td>
        </tr>
    </table>
    <div class="page-break"></div>
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">B Piller</th>
            <th class="w-50">Front LHS Window</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_lhs_side['b_piller_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_lhs_side['b_piller']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($brand_image)); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_lhs_side['front_lhs_window']); ?></b>
            </td>
        </tr>
        <tr>
            <th class="w-50">Front LHS Door </th>
            <th class="w-50">Rear LHS Door</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_lhs_side['front_lhs_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_lhs_side['front_lhs_door']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_lhs_side['rear_lhs_door_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b>
                    <?php echo e($exterior_lhs_side['rear_lhs_door']); ?>

                </b>
            </td>
        </tr>
    </table>
    <div class="page-break"></div>
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Rear LHS Window</th>
            <th class="w-50">LHS Running board</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($brand_image)); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_lhs_side['rear_lhs_window']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_lhs_side['lhs_window_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_lhs_side['lhs_running_board']); ?></b>
                <br><br>
            </td>
        </tr>
        <tr>
            <th class="w-50">C Piller</th>
            <th class="w-50">Rear LHS Tyre percentage</th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_lhs_side['c_piller_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_lhs_side['c_piller']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($brand_image)); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_lhs_side['rear_lhs_tyre_percentage']); ?></b>
                <br><br>
            </td>
        </tr>
    </table>
    <div class="page-break"></div>
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">LHS Quater panel</th>
            <th class="w-50"></th>
        </tr>
        <tr>
            <td class="text-center">
                <img src="<?php echo e(asset($exterior_lhs_side['rear_lhs_tyre_photo'])); ?>" style="width:250px;height:250px">
                <br><br>
                <b><?php echo e($exterior_lhs_side['lhs_quater_panel']); ?></b>
                <br><br>
            </td>
            <td class="text-center">
                
            </td>
        </tr>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0" style="font-size:32px;">Interior</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Airbag
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['airbag']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                ABS
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['abs']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Music System
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['music_system']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Speaker
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['speaker']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Steering Wheel condition
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['steering_wheel_condition']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Steering Wheel Audio Control buttons
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['steering_wheel_audio_control_button']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Auto AC Condition
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['auto_ac_condition']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Ac Flow
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['ac_flow']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Ac Blower motor condition
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['ac_blower_moto_condition']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Ac Direction Mode
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['ac_direction_mode']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Ac Heater
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['ac_heater']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Glow Box
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['glow_box']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Gear Lever Knob
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['gear_lever_knob']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Power Window
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['power_window']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                RHS side Seat
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['rhs_side_seat_condition']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                LHS side Seat Condition
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['lhs_side_seat_condition']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Rear seat Condition
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['rear_seat_condition']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                All seat cover Available
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['all_seat_cover_available']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                All Mats Available
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($interior['all_mats_available']); ?>

            </td>
        </tr>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">Test Drive</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Front Suspension
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['front_suspension_noise']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Axle Noise
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['axie_noise']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Rear suspension Noise
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['rear_suspension_noise']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Clutch Condition
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['clutch_condition']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Automatic Gear Box
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['automatic_gear_box']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Gear Box
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['gear_box']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Gear Box Nosie
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['gear_box_noise']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Gear Shifting
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['gear_shifting']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Wheel Alignment
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['w_a']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Steering Noise
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['steering_noise']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Steering Colum noise
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['steering_column_noise']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Speedometer Knob
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['speedometer_knob']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Odometer Reading
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($test_derive['odometer_reading']); ?>

            </td>
        </tr>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">Engine Compartment</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Tappet Noise
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($engine_compartment['tapped_noise']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Engine overheating
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($engine_compartment['engine_overheating']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Engine oil Sludge
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($engine_compartment['engine_oil_sludge']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Engine oil Condition
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($engine_compartment['engine_oil_condition']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Coolent
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($engine_compartment['coolent']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Timeing Side Noise
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($engine_compartment['timeing_side_noise']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Alternater Noise
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($engine_compartment['altmeter_condition']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Battery condition
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($engine_compartment['bettery_condition']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Ac compressor
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($engine_compartment['ac_compressor']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Starter motor Noise
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($engine_compartment['starter_motor_noise']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Air Filter Assy
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <?php echo e($engine_compartment['air_fiter_assy']); ?>

            </td>
        </tr>
        <tr>
            <td class="w-50 text-left" style="font-size:20px">
                Video
            </td>
            <td class="w-50 text-left" style="font-size:20px">
                <a href="<?php echo e($engine_compartment['engine_video_link']); ?>" target="_blank">Video Link</a>
            </td>
        </tr>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">Special Feature</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <?php if($special_features['comment_1']): ?>
        <tr>
            <th class="w-50">Comment 1</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_1']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_1_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_2']): ?>
        <tr>
            <th class="w-50">Comment 2</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_2']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_2_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_3']): ?>
        <tr>
            <th class="w-50">Comment 3</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_3']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_3_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_4']): ?>
        <tr>
            <th class="w-50">Comment 4</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_4']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_4_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_5']): ?>
        <tr>
            <th class="w-50">Comment 5</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_5']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_5_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_6']): ?>
        <tr>
            <th class="w-50">Comment 6</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_6']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_6_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_7']): ?>
        <tr>
            <th class="w-50">Comment 7</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_7']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_7_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_8']): ?>
        <tr>
            <th class="w-50">Comment 8</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_8']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_8_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_10']): ?>
        <tr>
            <th class="w-50">Comment 9</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_9']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_9_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_11']): ?>
        <tr>
            <th class="w-50">Comment 10</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_10']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_10_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_11']): ?>
        <tr>
            <th class="w-50">Comment 11</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_11']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_11_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_12']): ?>
        <tr>
            <th class="w-50">Comment 12</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_12']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_12_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_13']): ?>
        <tr>
            <th class="w-50">Comment 13</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_13']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_13_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_14']): ?>
        <tr>
            <th class="w-50">Comment 14</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_14']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_14_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($special_features['comment_15']): ?>
        <tr>
            <th class="w-50">Comment 15</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($special_features['comment_15']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($special_features['comment_15_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
    </table>
</div>
<div class="page-break"></div>
<div class="add-detail mt-10">

    <div class="head-title">
        <h2 class="text-center m-0 p-0">Extra Damage</h2>
    </div>
    <div style="clear: both;"></div>
</div>
<br>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <?php if($any_damage['comment_1']): ?>
        <tr>
            <th class="w-50">Comment 1</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_1']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_1_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_2']): ?>
        <tr>
            <th class="w-50">Comment 2</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_2']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_2_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_3']): ?>
        <tr>
            <th class="w-50">Comment 3</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_3']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_3_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_4']): ?>
        <tr>
            <th class="w-50">Comment 4</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_4']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_4_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_5']): ?>
        <tr>
            <th class="w-50">Comment 5</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_5']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_5_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_6']): ?>
        <tr>
            <th class="w-50">Comment 6</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_6']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_6_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_7']): ?>
        <tr>
            <th class="w-50">Comment 7</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_7']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_7_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_8']): ?>
        <tr>
            <th class="w-50">Comment 8</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_8']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_8_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_9']): ?>
        <tr>
            <th class="w-50">Comment 9</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_9']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_9_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_10']): ?>
        <tr>
            <th class="w-50">Comment 10</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_10']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_10_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_11']): ?>
        <tr>
            <th class="w-50">Comment 11</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_11']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_11_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_12']): ?>
        <tr>
            <th class="w-50">Comment 12</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_12']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_12_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_13']): ?>
        <tr>
            <th class="w-50">Comment 13</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_13']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_13_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_14']): ?>
        <tr>
            <th class="w-50">Comment 14</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_14']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_14_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_15']): ?>
        <tr>
            <th class="w-50">Comment 15</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_15']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_15_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_16']): ?>
        <tr>
            <th class="w-50">Comment 16</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_16']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_16_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_17']): ?>
        <tr>
            <th class="w-50">Comment 17</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_17']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_17_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_18']): ?>
        <tr>
            <th class="w-50">Comment 18</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_18']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_18_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_19']): ?>
        <tr>
            <th class="w-50">Comment 19</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_19']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_19_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment_20']): ?>
        <tr>
            <th class="w-50">Comment 20</th>
            <th class="w-50">Photo</th>
        </tr>
        <tr>
            <td class="text-center">
                <?php echo e($any_damage['comment_20']); ?>

            </td>
            <td class="text-center">
                <img src="<?php echo e(asset($any_damage['comment_20_photo'])); ?>" style="width:250px;height:250px">
            </td>
        </tr>
        <?php endif; ?>
        <?php if($any_damage['comment']): ?>
        <tr>
            <th colspan="2">Comment</th>
        </tr>
        <tr>
            <td colspan="2" class="text-center">
                <?php echo e($any_damage['comment']); ?>

            </td>
        </tr>
        <?php endif; ?>
    </table>
    <br><br><br>
    <div class="add-detail mt-10">

        <div class="head-title">
            <h2 class="text-center m-0 p-0">Disclaimer</h2>
        </div>
        <div style="clear: both;"></div>
    </div>
    <div>
        <p>
            1) All information in the report are depends on the facts at the time of inspection & TCD cannot be held responsible for any discrepancy in the mentioned facts. TCD has not validated the authenticity of the odometer reading and is not responsible for any tampering performed by the current owner of the vehicle. <br>

            2) Ownership documents of the vehicle were verified by the Inspection engineer, TCD is not responsible for validating the authenticity of the document. <br>

            3) This inspection report was generated by TCD based on the request raised by the party, whom the report is addressed to, for the stated purpose only. The above inspection is valid for 24hrs. <br>
        </p>
    </div>
</div>
</html>
<?php /**PATH /var/www/thecarsdoctor.com/html/attach/resources/views/admin/sample_pdf.blade.php ENDPATH**/ ?>