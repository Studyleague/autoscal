<?php $__env->startSection('title','Admin Panel - Login'); ?>
<?php echo $__env->make('admin.partial.link', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

</head>
	<body>
		<!-- start: page -->
		<section class="body-sign">

			<div class="center-sign">
				<a href="" class="logo float-left">
					<img src="<?php echo e(asset('admin/img/logo.png')); ?>" style="margin-top: 15px;width:65px;"/>
				</a>

				<div class="panel card-sign">
					<div class="card-title-sign mt-3 text-right">
						<h2 class="title text-uppercase font-weight-bold m-0"><i class="fas fa-user mr-1"></i> Sign In</h2>
					</div>
					<div class="card-body">
						<form method="post" action="<?php echo e(route('admin.auth')); ?>" name="loginform">
                            <?php echo csrf_field(); ?>
                            <div class="form-group mb-3">
                                <?php if(Session::get('status')): ?>
                                    <div class="alert alert-danger">
                                        <?php echo e(Session::get('status')); ?>

                                    </div>
                                <?php endif; ?>
                                <?php if(Session::get('changepassword')): ?>
                                    <div class="alert alert-success">
                                        <?php echo e(Session::get('changepassword')); ?>

                                    </div>
                                <?php endif; ?>
                            </div>

							<div class="form-group mb-3">
								<label>Username</label>
								<div class="input-group">
									<input name="email" id="email" type="text" value="<?php echo e(old('email')); ?>" autocomplete="off" class="form-control form-control-lg" tabindex="1" />
									<span class="input-group-append">
										<span class="input-group-text">
											<i class="fas fa-user"></i>
										</span>
									</span>
								</div>
                                <span class="text-danger"><?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?><?php echo e($message); ?><?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?></span>
							</div>

							<div class="form-group mb-3">
								<div class="clearfix">
									<label class="float-left">Password</label>
								</div>
								<div class="input-group">
									<input name="password" type="password" value="<?php echo e(old('password')); ?>" class="form-control form-control-lg" tabindex="2" />
									<span class="input-group-append">
										<span class="input-group-text">
											<i class="fas fa-lock"></i>
										</span>
									</span>
								</div>
                                <span class="text-danger"><?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?><?php echo e($message); ?><?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?></span>
							</div>

							<div class="row">
								<div class="col-sm-7 text-right">
									<button type="submit" class="btn btn-primary mt-2">Sign In</button>
								</div>
							</div>

						</form>
					</div>
				</div>

				<p class="text-center text-muted mt-3 mb-3">&copy; Copyright <?php echo date("Y")?>. All Rights Reserved.</p>
			</div>
		</section>
		<!-- end: page -->

        <?php echo $__env->make('admin.partial.script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	</body>
</html>
<?php /**PATH /var/www/thecarsdoctor.com/html/attach/resources/views/admin/login.blade.php ENDPATH**/ ?>