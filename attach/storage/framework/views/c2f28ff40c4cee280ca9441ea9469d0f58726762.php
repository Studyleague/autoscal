<?php $__env->startSection('title','Home'); ?>
<?php echo $__env->make('admin.partial.link', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
	</head>
	<body>
		<section class="body">
			<?php echo $__env->make('admin.partial.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
			<div class="inner-wrapper">
				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Home</h2>
						<div class="right-wrapper text-right">
							<ol class="breadcrumbs">
								<li>
									<a href="<?php echo e(route('admin.home')); ?>">
										<i class="fas fa-home"></i>
									</a>
								</li>
								<li><span>Home</span></li>
							</ol>
							<a class="sidebar-right-toggle" data-open=""></a>
						</div>
					</header>

					<!-- start: page -->
					<div class="row">
						<div class="col-lg-12">
							<div class="row mb-3">

								<div class="col-xl-4">
									<section class="card card-featured-left card-featured-tertiary mb-3">
										<div class="card-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-tertiary">
														<i class="fas fa-users"></i>
													</div>
												</div>
												<div class="widget-summary-col">
													<div class="summary">
														<h4 class="title">Total Users</h4>
														<div class="info">
															<strong class="amount"><?php echo e($users_count); ?></strong>
														</div>
													</div>
													<div class="summary-footer">
														<a class="text-muted text-uppercase" href="<?php echo e(route('admin.users')); ?>">(view Detail)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
                                
                                
                                <div class="col-xl-4">
									<section class="card card-featured-left card-featured-success mb-3">
										<div class="card-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-success">
														<i class="fas fa-search"></i>
													</div>
												</div>
												<div class="widget-summary-col">
													<div class="summary">
														<h4 class="title">Total Inspection</h4>
														<div class="info">
															<strong class="amount"><?php echo e('52'); ?></strong>
														</div>
													</div>
													<div class="summary-footer">
														<a class="text-muted text-uppercase" href="#">(view Detail)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
                                
                                <div class="col-xl-4">
									<section class="card card-featured-left card-featured-success mb-3">
										<div class="card-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-primary">
														<i class="fas fa-search-minus"></i>
													</div>
												</div>
												<div class="widget-summary-col">
													<div class="summary">
														<h4 class="title">Total Pending Inspection</h4>
														<div class="info">
															<strong class="amount"><?php echo e('10'); ?></strong>
														</div>
													</div>
													<div class="summary-footer">
														<a class="text-muted text-uppercase" href="#">(view Detail)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
                                
                                <div class="col-xl-4">
									<section class="card card-featured-left card-featured-success mb-3">
										<div class="card-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-success">
														<i class="fas fa-search-plus"></i>
													</div>
												</div>
												<div class="widget-summary-col">
													<div class="summary">
														<h4 class="title">Total Completed Inspection</h4>
														<div class="info">
															<strong class="amount"><?php echo e('40'); ?></strong>
														</div>
													</div>
													<div class="summary-footer">
														<a class="text-muted text-uppercase" href="#">(view Detail)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
                                
                                <div class="col-xl-4">
									<section class="card card-featured-left card-featured-success mb-3">
										<div class="card-body">
											<div class="widget-summary">
												<div class="widget-summary-col widget-summary-col-icon">
													<div class="summary-icon bg-warning">
														<i class="fas fa-search-plus"></i>
													</div>
												</div>
												<div class="widget-summary-col">
													<div class="summary">
														<h4 class="title">Total Ongoing Inspection</h4>
														<div class="info">
															<strong class="amount"><?php echo e('2'); ?></strong>
														</div>
													</div>
													<div class="summary-footer">
														<a class="text-muted text-uppercase" href="#">(view Detail)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
                                
                                

							</div>
						</div>
					</div>

				</section>
			</div>
		</section>

		<?php echo $__env->make('admin.partial.script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	</body>
</html>
<?php /**PATH E:\AQIB\c2c\TCD\attach\resources\views/admin/home.blade.php ENDPATH**/ ?>