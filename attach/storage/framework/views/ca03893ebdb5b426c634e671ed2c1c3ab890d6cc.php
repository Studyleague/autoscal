<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Debris</title>
</head>
<style type="text/css">
    body{
        font-family: 'Roboto Condensed', sans-serif;
        /*font-family: DejaVu Sans; sans-serif;*/
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
        margin-top:10px;
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
    .w-85{
        width:80%;
    }
    .w-15{
        width:20%;
    }
    .logo img{
        width:85px;
        height:70px;
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
</style>
<body>
<div class="head-title">
    <h1 class="text-center m-0 p-0">INVOICE</h1>
</div>
<div class="add-detail mt-10">
    <div class="w-50 float-left mt-10">
        <p class="m-0 pt-5 text-bold w-100">Invoice Id - <span class="gray-color">#<?php echo e($invoice_id); ?></span></p>
        <p class="m-0 pt-5 text-bold w-100">Order Id - <span class="gray-color"><?php echo e($order_id); ?></span></p>
        <p class="m-0 pt-5 text-bold w-100">Order Date - <span class="gray-color"><?php echo e($order_date); ?></span></p>
    </div>
    <div class="w-50 float-left logo mt-10" style="text-align:right">
        <img src="<?php echo e(asset('admin/img/logo_payment.png')); ?>"> 
        <p>https://debris.co.in</p>
    </div>
    <div style="clear: both;"></div>
</div>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Pickup Address</th>
            <th class="w-50">Receiver Detail</th>
        </tr>
        <tr>
            <td>
                <div class="box-text">
                    <p>Add : <?php echo e($house_building); ?>, <?php echo e($landmark); ?>, <?php echo e($locality); ?>.</p>
                    <p>Pincode : <?php echo e($pincode); ?>.</p>
                    <p>City : <?php echo e($city); ?>.</p>
                    <p>State : <?php echo e($state); ?>.</p>
                    <p>Contact : <?php echo e($mobile); ?>.</p>
                </div>
            </td>
            <td>
                <div class="box-text">
                    <p>Receiver Type : <?php echo e($receiver_type); ?></p>
                    <p>Receiver Name :<?php echo e($receiver_name); ?></p>
                    <p>Receiver Mob : <?php echo e($receiver_mobile); ?></p>
                </div>
            </td>
        </tr>
    </table>
</div>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Payment Method</th>
            <th class="w-50">Total Amount</th>
        </tr>
        <tr>
            <td><?php echo e($payment_method); ?></td>
            <td>Total Amount - <span class="ripee-sign">INR </span><?php echo e(number_format($total_paid)); ?></td>
        </tr>
    </table>
</div>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Sr No.</th>
            <th class="w-50">Bag Type</th>
            <th class="w-50">Per Bag Price (INR)</th>
            <th class="w-50">Qty</th>
            <th class="w-50">Subtotal (INR)</th>
        </tr>
        <tr align="center">
            <td>1. </td>
            <td>Bag</td>
            <td><?php echo e(number_format($bag_charge)); ?></td>
            <td><?php echo e(number_format($bag_count)); ?></td>
            <td><?php echo e(number_format($bag_amount)); ?></td>
        </tr>
        <tr align="center">
            <td>2. </td>
            <td>Loose Debris</td>
            <td><?php echo e(number_format($loose_bag_charge)); ?></td>
            <td><?php echo e(number_format($loose_bag_count)); ?></td>
            <td><?php echo e(number_format($loose_bag_amount)); ?></td>
        </tr>
        <tr>
            <td colspan="5">
                <div class="total-part">
                    <div class="total-left w-85 float-left" align="right">
                        <p>Sub Total : </p>
                        <p>Service Charge : </p>
                        <p>GST : </p>
                        <?php if($coupon_discount): ?>
                        <p>Coupon Discount : </p>
                        <?php endif; ?>
                        <p>Total : </p>
                    </div>
                    <div class="total-right w-15 float-left text-bold" align="right">
                        <p><span class="ripee-sign">INR </span><?php echo e(number_format($bag_amount+$loose_bag_amount)); ?></p>
                        <p>+<span class="ripee-sign">INR </span><?php echo e(number_format($service_charge)); ?></p>
                        <p>+<span class="ripee-sign">INR </span><?php echo e(number_format($gst_charge)); ?></p>
                        <?php if($coupon_discount): ?>
                        <p>-<span class="ripee-sign">INR </span><?php echo e(number_format($coupon_discount)); ?></p>
                        <?php endif; ?>
                        <p><span class="ripee-sign">INR </span><?php echo e(number_format($total_paid)); ?></p>
                    </div>
                    <div style="clear: both;"></div>
                </div>
            </td>
        </tr>
    </table>
</div>
</html>
<?php /**PATH E:\AQIB\c2c\health_care\resources\views/admin/invoice_pdf.blade.php ENDPATH**/ ?>