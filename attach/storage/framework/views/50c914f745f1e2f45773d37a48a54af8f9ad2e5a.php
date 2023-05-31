<?php $__env->startSection('title','Change Password'); ?>
<?php echo $__env->make('admin.partial.link', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
	</head>
	<style>
	    .invalid-feedback
	    {
	        display: block!important;
	    }
	</style>
	<body>
		<section class="body">
		    <?php echo $__env->make('admin.partial.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

			<div class="inner-wrapper">

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Change Password</h2>

						<div class="right-wrapper text-right">
							<ol class="breadcrumbs">
								<li>
									<a href="<?php echo e(route('admin.home')); ?>">
										<i class="fas fa-home"></i>
									</a>
								</li>
								<li><span>Change Password</span></li>
							</ol>

							<label href="#" class="sidebar-right-toggle" data-open=""></label>
						</div>
					</header>

                    <!-- Add Form Start -->
                    <div class="row" id="addContainer">

                        <?php if(session()->has('change_password_message')): ?>
                            <div class="col-lg-12 mb-3">
                                <div class="card">
                                    <div class="card-body" style="background-color: #2592ba;">
                                        <strong style="color: #fff;"><?php echo e(session()->get('change_password_message')); ?></strong>
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>

						<div class="col">
							<section class="card">
								<header class="card-header">
									<div class="card-actions">
										<a href="#" class="card-action card-action-toggle" data-card-toggle></a>
									</div>
									<h2 class="card-title">Change Password</h2>
								</header>
								<div class="card-body">
									<form id="changePassword" method="post" action="<?php echo e(route('admin.change-password')); ?>" name="changePassword" class="form-horizontal form-bordered">
                                        <?php echo csrf_field(); ?>
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault">Old Password</label>
											<div class="col-lg-6">
												<input type="password" class="form-control" id="current_password" name="current_password" value="<?php echo e(old('current_password')); ?>">
                                                <?php $__errorArgs = ['current_password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong><?php echo e($message); ?></strong>
                                                    </span>
                                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div>
										</div>

                                        <div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault">New Password</label>
											<div class="col-lg-6">
												<input type="password" class="form-control" name="new_password" id="new_password" value="<?php echo e(old('new_password')); ?>">
                                                <?php $__errorArgs = ['new_password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong><?php echo e($message); ?></strong>
                                                    </span>
                                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div>
										</div>

                                        <div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault">Confirm New Password</label>
											<div class="col-lg-6">
												<input type="password" class="form-control" id="confirm_new_password" name="confirm_new_password" value="<?php echo e(old('confirm_new_password')); ?>">
                                                <?php $__errorArgs = ['confirm_new_password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong><?php echo e($message); ?></strong>
                                                    </span>
                                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault"></label>
											<div class="col-lg-6">
												<input type="submit" class="btn btn-primary" value="Change">
                                                <input type="reset" class="btn btn-warning">
											</div>
										</div>

									</form>
								</div>
							</section>
						</div>
					</div>
                    <!-- Add Form End -->
				</section>
			</div>
        </section>
		<?php echo $__env->make('admin.partial.script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
          <!--<script type="text/javascript">
            $(function () {
                $('#dob').datepicker();
            });
        </script>-->

        
	</body>
</html>
<?php /**PATH /var/www/thecarsdoctor.com/html/attach/resources/views/admin/change_password.blade.php ENDPATH**/ ?>