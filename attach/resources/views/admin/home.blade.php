@section('title','Home')
@include('admin.partial.link')

@php
$user_count = App\Models\User::count() ?? 0;
$total_inspection_count = App\Models\Order::count() ?? 0;
$pending_inspection_count = App\Models\Order::where('status','0')->count() ?? 0;
$completed_inspection_count = App\Models\Order::where('status','5')->count() ?? 0;
$ongoing_inspection_count = App\Models\Order::where('status','2')->count() ?? 0;
@endphp
	</head>
	<body>
		<section class="body">
			@include('admin.partial.sidebar')
			<div class="inner-wrapper">
				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Home</h2>
						<div class="right-wrapper text-right">
							<ol class="breadcrumbs">
								<li>
									<a href="{{ route('admin.home') }}">
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
															<strong class="amount">{{ $user_count }}</strong>
														</div>
													</div>
													<div class="summary-footer">
														<a class="text-muted text-uppercase" href="{{ route('admin.users') }}">(view Detail)</a>
													</div>
												</div>
											</div>
										</div>
									</section>
								</div>
                                {{--  --}}
                                {{--  --}}
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
															<strong class="amount">{{ $total_inspection_count }}</strong>
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
                                {{--  --}}
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
															<strong class="amount">{{ $pending_inspection_count }}</strong>
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
                                {{--  --}}
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
															<strong class="amount">{{ $completed_inspection_count }}</strong>
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
                                {{--  --}}
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
															<strong class="amount">{{ $ongoing_inspection_count }}</strong>
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
                                {{--  --}}


							</div>
						</div>
					</div>

				</section>
			</div>
		</section>

		@include('admin.partial.script')

	</body>
</html>
