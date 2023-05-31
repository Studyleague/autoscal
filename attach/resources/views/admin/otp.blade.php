@include('admin.partial.link')

</head>

<body>
    <section class="body">

        @include('admin.partial.sidebar')
        <div class="inner-wrapper">
            <section role="main" class="content-body">
                <header class="page-header">
                    <h2>OTP</h2>

                    <div class="right-wrapper text-right">
                        <ol class="breadcrumbs">
                            <li>
                                <a href="{{ route('admin.home') }}">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li><span>OTP</span></li>
                        </ol>

                        <label class="sidebar-right-toggle" data-open=""></label>
                    </div>
                </header>

                <!-- Add Form Start -->

                <!-- start: page -->

                <div class="row">
                    <div class="col">
                        <section class="card">
                            <header class="card-header mt-3">
                                <h2 class="card-title">OTP</h2>
                            </header>
                            <div class="card-body">

                                <table class="table table-bordered table-striped mb-0" id="datatable-tabletools">
                                    <thead>
                                        <tr>
                                            <th>Sr. No.</th>
                                            <th>Mobile Number</th>
                                            <th>OTP </th>
                                            <th>Created On</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tableContainer">
                                        @foreach ($otps as $key=>$otp)
                                            <tr>
                                                <td>{{ $key+1 }}</td>
                                                <td>{{ $otp->mobile }}</td>
                                                <td>{{ $otp->code }}</td>
                                                <td>{{ \Carbon\Carbon::parse($otp->created_at)->format('d M, Y | h:i:s') }}</td>
                                            </tr>
                                        @endforeach
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


@include('admin.partial.script')



</body>

</html>
