<?php echo $__env->make('admin.partial.link', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->startSection('title','Admin Panel'); ?>

</head>

<body>
    <section class="body">

        <?php echo $__env->make('admin.partial.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="inner-wrapper">
            <section role="main" class="content-body">
                <header class="page-header">
                    <h2>Orders</h2>

                    <div class="right-wrapper text-right">
                        <ol class="breadcrumbs">
                            <li>
                                <a href="index.php">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li><span>Orders</span></li>
                        </ol>

                        <label class="sidebar-right-toggle" data-open=""></label>
                    </div>
                </header>

                <!-- Add Form Start -->
                <div class="row" id="addContainer" style="display:none;">
                    <div class="col">
                        <section class="card">
                            <header class="card-header">
                                <h2 class="card-title">Add Partner</h2>
                            </header>
                            <div class="card-body">
                                <form action="#" method="post" id="add_brand_form">
                                    <?php echo csrf_field(); ?>

                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Full Name</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control <?php $__errorArgs = ['brand_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="<?php echo e(old('brand_name')); ?>" name="brand_name" id="brand_name" >
                                            <span class="text-danger error-text brand_name_err"></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Email</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control <?php $__errorArgs = ['brand_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="<?php echo e(old('brand_name')); ?>" name="brand_name" id="brand_name" >
                                            <span class="text-danger error-text brand_name_err"></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Mobile</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control <?php $__errorArgs = ['brand_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="<?php echo e(old('brand_name')); ?>" name="brand_name" id="brand_name" >
                                            <span class="text-danger error-text brand_name_err"></span>
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault"></label>
                                        <div class="col-lg-6">
                                            <input type="submit" id="add_brand_submit" class="btn btn-primary" value="Add">
                                            <input type="reset" class="btn btn-warning" value="Reset">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </section>
                    </div>
                </div>

                
                <div class="row" id="editContainer" style="display:none;">
                    <div class="col">
                        <section class="card">
                            <header class="card-header">
                                <h2 class="card-title">Edit Model</h2>
                            </header>
                            <div class="card-body">
                                <form class="form-horizontal form-bordered" method="post" id="editForm">
                                    <?php echo csrf_field(); ?>
                                    <input type="hidden" id="edit_brand_id" name="edit_brand_id" value="">

                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Brand</label>
                                        <div class="col-lg-6">
                                            <select class="form-control" name="brand_id">
                                                <option value="">Select Brand</option>
                                                <option value="">Tata</option>
                                                <option value="">Ford</option>
                                                <option value="">BMW</option>
                                                <option value="">Toyota</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Model</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="edit_brand_name" id="edit_brand_name">
                                            <span class="text-danger error-text edit_brand_name_err"></span>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault"></label>
                                        <div class="col-lg-6">
                                            <input type="submit" class="btn btn-primary" id="update_brand_submit" value="Update">
                                            <input type="reset" class="btn btn-warning" value="Reset">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </section>
                    </div>
                </div>
                


                <div class="row">
                    <div class="col">
                        <section class="card">
                            <header class="card-header mt-3">
                                <h2 class="card-title">Orders</h2>
                            </header>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="mb-3">
                                            
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-bordered table-striped mb-0" id="datatable-tabletools">
                                    <thead>
                                        <tr>
                                            <th>Sr. No.</th>
                                            <th>OrderId</th>
                                            <th>User Details</th>
                                            <th>Vehicle Details</th>
                                            <th>Owner Details</th>
                                            <th>RC & Insuarance</th>
                                            <th>Chassis Details</th>
                                            <th>Car photos</th>
                                            <th>Car Specification</th>
                                            <th>Assign Partner</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tableContainer">
                                            <tr>
                                                <td>1</td>
                                                <td>#10012</td>
                                                <td>
                                                    Name: John Doe <br>
                                                    Email: john@example.com <br>
                                                    Mobile: 9222222222 <br>
                                                </td>
                                                <td>
                                                    <b>Vehicle State:</b> MH 05<br>
                                                    <b>Vehicle No:</b> FH01256<br>
                                                    <b>Vehicle Brand:</b> Tata<br>
                                                    <b>Vehicle Model:</b> C8464<br>
                                                    <b>Vehicle Variant:</b> Zxi<br>
                                                    <b>MFG Year:</b> 01-09-2014<br>
                                                    <b>Tax Validity:</b> 01-09-2014<br>
                                                    <b>Vahicle Colour:</b> Red<br>
                                                    <b>Engine Cubic capacity:</b> 1197<br>
                                                    <b>Fuel Type: Petrol<br>
                                                    <b>Owner Serial No:</b> 0001<br>
                                                    <b>Odometer Reading:</b> 500001<br>
                                                    <b>Special Comment:</b> <br>
                                                </td>
                                                <td>
                                                    Purchase Customer Name: John Doe <br>
                                                    Purchase Customer No: 87446646 <br>
                                                    Location: Mumbai <br>
                                                    Sell Customer Name: John Doe <br>
                                                    Sell Customer No: 87446646 <br>
                                                    Location: Mumbai <br>
                                                </td>
                                                <td>
                                                    RC: Orignal <br>
                                                    RC Type: Orignal <br>
                                                    Insuarance: Orignal <br>
                                                </td>
                                                <td>
                                                    Chassis No: MAH4653210 <br>
                                                    Engine No: ADD20455 <br>
                                                </td>
                                                <td>
                                                    <a href="#">View</a><br>
                                                </td>
                                                <td>
                                                    <a href="#">Popup View</a><br>
                                                </td>
                                                <td>
                                                    <select class="form-control">
                                                        <option value="">Select Partner</option>
                                                        <option value="" selected>John Doe</option>
                                                        <option value="">Marry Jane</option>
                                                    </select>
                                                </td>
                                            </tr>

                                    </tbody>
                                </table>
                            </div>
                        </section>
                    </div>
                </div>
                <!-- end: page -->
            </section>
        </div>
    </section>


    <section>
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        ...
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <?php echo $__env->make('admin.partial.script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

</body>


</html>
<?php /**PATH E:\AQIB\c2c\TCD\attach\resources\views/admin/orders.blade.php ENDPATH**/ ?>