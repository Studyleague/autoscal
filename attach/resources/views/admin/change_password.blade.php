@section('title','Change Password')
@include('admin.partial.link')
	</head>
	<style>
	    .invalid-feedback
	    {
	        display: block!important;
	    }
	</style>
	<body>
		<section class="body">
		    @include('admin.partial.sidebar')

			<div class="inner-wrapper">

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Change Password</h2>

						<div class="right-wrapper text-right">
							<ol class="breadcrumbs">
								<li>
									<a href="{{ route('admin.home') }}">
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

                        @if (session()->has('change_password_message'))
                            <div class="col-lg-12 mb-3">
                                <div class="card">
                                    <div class="card-body" style="background-color: #2592ba;">
                                        <strong style="color: #fff;">{{ session()->get('change_password_message') }}</strong>
                                    </div>
                                </div>
                            </div>
                        @endif

						<div class="col">
							<section class="card">
								<header class="card-header">
									<div class="card-actions">
										<a href="#" class="card-action card-action-toggle" data-card-toggle></a>
									</div>
									<h2 class="card-title">Change Password</h2>
								</header>
								<div class="card-body">
									<form id="changePassword" method="post" action="{{ route('admin.change-password') }}" name="changePassword" class="form-horizontal form-bordered">
                                        @csrf
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault">Old Password</label>
											<div class="col-lg-6">
												<input type="password" class="form-control" id="current_password" name="current_password" value="{{ old('current_password') }}">
                                                @error('current_password')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
											</div>
										</div>

                                        <div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault">New Password</label>
											<div class="col-lg-6">
												<input type="password" class="form-control" name="new_password" id="new_password" value="{{ old('new_password') }}">
                                                @error('new_password')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
											</div>
										</div>

                                        <div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault">Confirm New Password</label>
											<div class="col-lg-6">
												<input type="password" class="form-control" id="confirm_new_password" name="confirm_new_password" value="{{ old('confirm_new_password') }}">
                                                @error('confirm_new_password')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
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
		@include('admin.partial.script')
          <!--<script type="text/javascript">
            $(function () {
                $('#dob').datepicker();
            });
        </script>-->

        {{-- <script>
            $(document).ready( function () {
                $('#datatable-editable').DataTable();
            } );
        </script> --}}
	</body>
</html>
