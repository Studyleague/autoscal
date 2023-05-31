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
        /* font-family: DejaVu Sans; sans-serif; */
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

    .w-30{
        width:30%;
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
        <p class="m-0 pt-5 text-bold w-100">INV ID - <span class="gray-color">#<?php echo e('45612'); ?></span></p>
        <p class="m-0 pt-5 text-bold w-100">REQUEST ID - <span class="gray-color"><?php echo e('4512'); ?></span></p>
        <p class="m-0 pt-5 text-bold w-100">REQUEST DATE - <span class="gray-color"><?php echo e('20/01/2022'); ?></span></p>
    </div>
    <div class="w-50 float-left logo mt-10" style="text-align:right">
        <img src="<?php echo e($base64); ?>" > 
    </div>
    <div style="clear: both;"></div>
</div>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-50">Customer Details</th>
            <th class="w-50">Partner Details</th>
        </tr>
        <tr>
            <td>
                <div class="box-text">
                    <p>Name: <?php echo e('Marry Jane'); ?>.</p>
                    <p>Contact Info: <?php echo e('9898989898'); ?>.</p>
                </div>
            </td>
            <td>
                <div class="box-text">
                    <p>Name: <?php echo e('John Doe'); ?>.</p>
                    <p>Contact Info: <?php echo e('8989898989'); ?>.</p>
                </div>
            </td>
        </tr>
    </table>
</div>
<div>
    <h4 style="margin:5px; color:#7B2C82;">Partner Attendance</h4>
</div>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        <tr>
            <th class="w-40">Date</th>
            <th class="w-30">In Time</th>
            <th class="w-30">Out Time</th>
        </tr>
        <tr>
            <td>
                <div class="box-text">
                    <p><?php echo e('20/01/2022'); ?>.</p>
                </div>
            </td>
            <td>
                <div class="box-text">
                    <p><?php echo e('07:00 AM'); ?></p>
                </div>
            </td>
            <td>
                <div class="box-text">
                    <p><?php echo e('09:00 AM'); ?></p>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="box-text">
                    <p><?php echo e('20/01/2022'); ?>.</p>
                </div>
            </td>
            <td>
                <div class="box-text">
                    <p><?php echo e('07:00 AM'); ?></p>
                </div>
            </td>
            <td>
                <div class="box-text">
                    <p><?php echo e('09:00 AM'); ?></p>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="box-text">
                    <p><?php echo e('20/01/2022'); ?>.</p>
                </div>
            </td>
            <td>
                <div class="box-text">
                    <p><?php echo e('07:00 AM'); ?></p>
                </div>
            </td>
            <td>
                <div class="box-text">
                    <p><?php echo e('09:00 AM'); ?></p>
                </div>
            </td>
        </tr>
    </table>
</div>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        
        <tr>
            <td><?php echo e('Booked On'); ?></td>
            <td><?php echo e('20/01/2022 02:50 AM'); ?></td>
        </tr>
        <tr>
            <td><?php echo e('Accepted On'); ?></td>
            <td><?php echo e('20/01/2022 02:50 AM'); ?></td>
        </tr>
        <tr>
            <td><?php echo e('Partner assigned'); ?></td>
            <td><?php echo e('20/01/2022 02:50 AM'); ?></td>
        </tr>
        <tr>
            <td><?php echo e('In Progress'); ?></td>
            <td><?php echo e('20/01/2022 02:50 AM'); ?></td>
        </tr>
        <tr>
            <td><?php echo e('Completed'); ?></td>
            <td><?php echo e('20/01/2022 02:50 AM'); ?></td>
        </tr>
        <tr>
            <td><?php echo e('Billed'); ?></td>
            <td><?php echo e('20/01/2022 02:50 AM'); ?></td>
        </tr>
    </table>
</div>
<div>
    <h4 style="margin:5px; color:#7B2C82;">Summary</h4>
</div>
<div class="table-section bill-tbl w-100 mt-10">
    <table class="table w-100 mt-10">
        
        <tr>
            <td><?php echo e('Final Cost'); ?></td>
            <td><span style="font-family: DejaVu Sans;">&#x20b9;</span><?php echo e('800'); ?></td>
        </tr>
        <tr>
            <td><?php echo e('Final Duration'); ?></td>
            <td><?php echo e('3 Days'); ?></td>
        </tr>
    </table>
</div>
</html>
<?php /**PATH E:\AQIB\c2c\health_care\resources\views/admin/invoice_test.blade.php ENDPATH**/ ?>