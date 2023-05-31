@section('title','Car Transfer')
@include('admin.partial.link')
</head>

<body>
    <section class="body">
        @include('admin.partial.sidebar')

        <div class="inner-wrapper">
            <section role="main" class="content-body">
                <header class="page-header">
                    <h2>Car Transfer</h2>

                    <div class="right-wrapper text-right">
                        <ol class="breadcrumbs">
                            <li>
                                <a href="{{ route('admin.home') }}">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li><span>Car Transfer</span></li>
                        </ol>

                        <label class="sidebar-right-toggle" data-open=""></label>
                    </div>
                </header>

                <!-- start: page -->

                <div class="row">
                    <div class="col">
                        <section class="card">
                            <header class="card-header mt-3">
                                <h2 class="card-title">Car Transfer</h2>
                            </header>
                            <div class="card-body">
                                {{-- <div class="row">
                                    <div class="col-sm-6">
                                        <div class="mb-3">
                                            <button id="addToTable" class="btn btn-primary">Add <i class="fas fa-plus"></i></button>
                                            <button id="btnCancel" class="btn btn-danger" style="display:none;">Cancel</button>
                                        </div>
                                    </div>
                                </div> --}}
                                <table class="table table-bordered table-striped mb-0" id="datatable-tabletools">
                                    <thead>
                                        <tr>
                                            <th>Sr. No.</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            {{-- <th>Status</th> --}}
                                            <th>Created On</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tableContainer">
                                        @forelse ($insuarance as $key=>$user)
                                            <tr>
                                                <td>{{ $key+1 }}</td>
                                                <td>{{ $user->name }}</td>
                                                <td>{{ $user->email }}</td>
                                                <td>{{ $user->mobile }}</td>
                                                {{-- @if ($user->status) --}}
                                                    {{-- <a type="btn" href="{{ route('admin.deactivate-user', $user->id) }}" data-id="{{ $user->id }}" class="btn btn-success deactivate">Unblock</a> --}}
                                                    {{-- <td> <a href="#"  name="status" id="{{ $user->id }}" class="activate" data-original-title="update"><button type="button" class="btn btn-success btn-lg" >Active</button></td>
                                                @else
                                                    <td> <a href="#"  name="status" id="{{ $user->id }}" class="deactivate" data-original-title="update"><button type="button" class="btn btn-danger btn-lg" >Inactive</button></td>
                                                @endif --}}
                                                <td>{{ \Carbon\Carbon::parse($user->created_at)->format('d M, Y | h:i:s') }}</td>
                                            </tr>
                                        @empty
                                            <tr>
                                                <strong>No records to display</strong>
                                            </tr>
                                        @endforelse
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

    @include('admin.partial.script')

    <script>
        $("#tableContainer").on("click",".activate", function(e)
        {
            e.preventDefault();
            if(confirm("Are You Sure??"))
            {
                var user_id = $(this).attr("id");
                $.ajax({
                    url: '{{ route('admin.deactivate-user') }}',
                    type: 'POST',
                    data:
                    {
                        'user_id': user_id,
                        '_token': "{{ csrf_token() }}"
                    },
                    success: function(data, textStatus, jqXHR)
                    {
                        if (!data.error)
                        {
                            alert(data.success);
                            window.location.href = '{{ route('admin.users') }}';
                        }
                        else
                        {
                            alert(data.error);
                            window.location.href = '{{ route('admin.users') }}';
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
                    url: '{{ route('admin.activate-user') }}',
                    type: 'POST',
                    data:
                    {
                        'user_id': user_id,
                        '_token': "{{ csrf_token() }}"
                    },
                    success: function(data, textStatus, jqXHR)
                    {
                        if (!data.error)
                        {
                            alert(data.success);
                            window.location.href = '{{ route('admin.users') }}';
                        }
                        else
                        {
                            alert(data.error);
                            window.location.href = '{{ route('admin.users') }}';
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
