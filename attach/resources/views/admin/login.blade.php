@section('title','Admin Panel - Login')
@include('admin.partial.link')

</head>
	<body>
		<!-- start: page -->
		<section class="body-sign">

			<div class="center-sign">
				<a href="" class="logo float-left">
					<img src="{{ asset('admin/img/logo.png') }}" style="margin-top: 15px;width:65px;"/>
				</a>

				<div class="panel card-sign">
					<div class="card-title-sign mt-3 text-right">
						<h2 class="title text-uppercase font-weight-bold m-0"><i class="fas fa-user mr-1"></i> Sign In</h2>
					</div>
					<div class="card-body">
						<form method="post" action="{{ route('admin.auth') }}" name="loginform">
                            @csrf
                            <div class="form-group mb-3">
                                @if (Session::get('status'))
                                    <div class="alert alert-danger">
                                        {{ Session::get('status') }}
                                    </div>
                                @endif
                                @if (Session::get('changepassword'))
                                    <div class="alert alert-success">
                                        {{ Session::get('changepassword') }}
                                    </div>
                                @endif
                            </div>

							<div class="form-group mb-3">
								<label>Username</label>
								<div class="input-group">
									<input name="email" id="email" type="text" value="{{ old('email') }}" autocomplete="off" class="form-control form-control-lg" tabindex="1" />
									<span class="input-group-append">
										<span class="input-group-text">
											<i class="fas fa-user"></i>
										</span>
									</span>
								</div>
                                <span class="text-danger">@error('email'){{ $message }}@enderror</span>
							</div>

							<div class="form-group mb-3">
								<div class="clearfix">
									<label class="float-left">Password</label>
								</div>
								<div class="input-group">
									<input name="password" type="password" value="{{ old('password') }}" class="form-control form-control-lg" tabindex="2" />
									<span class="input-group-append">
										<span class="input-group-text">
											<i class="fas fa-lock"></i>
										</span>
									</span>
								</div>
                                <span class="text-danger">@error('password'){{ $message }}@enderror</span>
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

        @include('admin.partial.script')

	</body>
</html>
