<?php $__env->startSection('title','Users'); ?>
<?php echo $__env->make('admin.partial.link', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>

<body>
    <section class="body">
        <?php echo $__env->make('admin.partial.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <div class="inner-wrapper">
            <section role="main" class="content-body">
                <header class="page-header">
                    <h2>Users</h2>

                    <div class="right-wrapper text-right">
                        <ol class="breadcrumbs">
                            <li>
                                <a href="<?php echo e(route('admin.home')); ?>">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li><span>Users</span></li>
                        </ol>

                        <label class="sidebar-right-toggle" data-open=""></label>
                    </div>
                </header>

                <!-- start: page -->

                <div class="row">
                    <div class="col">
                        <section class="card">
                            <header class="card-header mt-3">
                                <h2 class="card-title">Users</h2>
                            </header>
                            <div class="card-body">
                                
                                <table class="table table-bordered table-striped mb-0" id="datatable-tabletools">
                                    <thead>
                                        <tr>
                                            <th>Sr. No.</th>
                                            <th>Full Name</th>
                                            <th>Email</th>
                                            <th>Mobile Number</th>
                                            <th>Orders</th>
                                            <th>Status</th>
                                            <th>Created On</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tableContainer">
                                        <?php $__empty_1 = true; $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$user): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                            <tr>
                                                <td><?php echo e($key+1); ?></td>
                                                <td><?php echo e($user->full_name); ?></td>
                                                <td><?php echo e($user->email); ?></td>
                                                <td><?php echo e($user->mobile); ?></td>
                                                <td>
                                                    <a href="user_orders" target="_blank"><button type="button" class="btn btn-success btn-lg" >Orders</button></a>
                                                </td>
                                                <?php if($user->status): ?>
                                                    
                                                    <td> <a href="#"  name="status" id="<?php echo e($user->id); ?>" class="activate" data-original-title="update"><button type="button" class="btn btn-success btn-lg" >Active</button></td>
                                                <?php else: ?>
                                                    <td> <a href="#"  name="status" id="<?php echo e($user->id); ?>" class="deactivate" data-original-title="update"><button type="button" class="btn btn-danger btn-lg" >Inactive</button></td>
                                                <?php endif; ?>
                                                <td><?php echo e(\Carbon\Carbon::parse($user->created_at)->format('d M, Y | h:i:s')); ?></td>
                                            </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                            <tr>
                                                <strong>No records to display</strong>
                                            </tr>
                                        <?php endif; ?>
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
        <!-- Modal popup for the franchise other details -->
        <div class="modal fade bd-example-modal-lg" id="user-address" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Other Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div id="result"></div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <?php echo $__env->make('admin.partial.script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <script>
        $("#tableContainer").on("click",".activate", function(e)
        {
            e.preventDefault();
            if(confirm("Are You Sure??"))
            {
                var user_id = $(this).attr("id");
                $.ajax({
                    url: '<?php echo e(route('admin.deactivate-user')); ?>',
                    type: 'POST',
                    data:
                    {
                        'user_id': user_id,
                        '_token': "<?php echo e(csrf_token()); ?>"
                    },
                    success: function(data, textStatus, jqXHR)
                    {
                        if (!data.error)
                        {
                            alert(data.success);
                            window.location.href = '<?php echo e(route('admin.users')); ?>';
                        }
                        else
                        {
                            alert(data.error);
                            window.location.href = '<?php echo e(route('admin.users')); ?>';
                        }
                    },
                    error: function(error, jqXHR, textStatus, errorThrown)
                    {
                        alert("Some thing went wrong");
                    },
                });
            }
        });

        $("#tableContainer").on("click",".deactivate", function(e)
        {
            e.preventDefault();
            if(confirm("Are You Sure??"))
            {
                var user_id = $(this).attr("id");
                $.ajax({
                    url: '<?php echo e(route('admin.activate-user')); ?>',
                    type: 'POST',
                    data:
                    {
                        'user_id': user_id,
                        '_token': "<?php echo e(csrf_token()); ?>"
                    },
                    success: function(data, textStatus, jqXHR)
                    {
                        if (!data.error)
                        {
                            alert(data.success);
                            window.location.href = '<?php echo e(route('admin.users')); ?>';
                        }
                        else
                        {
                            alert(data.error);
                            window.location.href = '<?php echo e(route('admin.users')); ?>';
                        }
                    },
                    error: function(error, jqXHR, textStatus, errorThrown)
                    {
                        alert("Some thing went wrong");
                    },
                });
            }
        });
    </script>

</body>

</html>
<?php /**PATH E:\AQIB\c2c\TCD\attach\resources\views/admin/users.blade.php ENDPATH**/ ?>