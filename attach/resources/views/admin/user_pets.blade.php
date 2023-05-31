@section('title','Users')
@include('admin.partial.link')
</head>

<body>
    <section class="body">
        @include('admin.partial.sidebar')

        <div class="inner-wrapper">
            <section role="main" class="content-body">
                <header class="page-header">
                    <h2>Pets</h2>

                    <div class="right-wrapper text-right">
                        <ol class="breadcrumbs">
                            <li>
                                <a href="{{ route('admin.home') }}">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li><span>Pets</span></li>
                        </ol>

                        <label class="sidebar-right-toggle" data-open=""></label>
                    </div>
                </header>

                <!-- start: page -->

                <div class="row">
                    <div class="col">
                        <section class="card">
                            <header class="card-header mt-3">
                                <h2 class="card-title">John Pets</h2>
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
                                            <th>Image</th>
                                            <th>Main Category</th>
                                            <th>Sub Category</th>
                                            <th>Pet Name</th>
                                            <th>Pet Info</th>
                                            <th>Status</th>
                                            <th>Created On</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tableContainer">
                                            <tr>
                                                <td>{{ 1 }}</td>
                                                <td><img src="https://www.underseaproductions.com/wp-content/uploads/2013/11/dummy-image-square.jpg" width="80"></td>
                                                <td>{{ 'Pets' }}</td>
                                                <td>{{ 'Dog' }}</td>
                                                <td>{{ 'Jonny' }}</td>
                                                <td>
                                                    Breed: Siberian<br>
                                                    Birth Year: 2014 <br>
                                                    Sex: Male <br>
                                                    Color: Black
                                                </td>
                                                    {{-- <a type="btn" href="{{ route('admin.deactivate-user', $user->id) }}" data-id="{{ $user->id }}" class="btn btn-success deactivate">Unblock</a> --}}
                                                <td> <a href="#"  name="status" id="" class="activate" data-original-title="update"><button type="button" class="btn btn-success btn-lg" >Active</button></td>
                                            
                                                <td>2022-12-03</td>
                                            </tr>
                                            <tr>
                                                <td>{{ 2 }}</td>
                                                <td><img src="https://www.underseaproductions.com/wp-content/uploads/2013/11/dummy-image-square.jpg" width="80"></td>
                                                <td>{{ 'Pets' }}</td>
                                                <td>{{ 'Cat' }}</td>
                                                <td>{{ 'Micky' }}</td>
                                                <td>
                                                    Breed: Siberian<br>
                                                    Birth Year: 2018 <br>
                                                    Sex: Female <br>
                                                    Color: Black
                                                </td>
                                                    {{-- <a type="btn" href="{{ route('admin.deactivate-user', $user->id) }}" data-id="{{ $user->id }}" class="btn btn-success deactivate">Unblock</a> --}}
                                                <td> <a href="#"  name="status" id="" class="activate" data-original-title="update"><button type="button" class="btn btn-primary btn-lg" >Pending</button></td>
                                            
                                                <td>2022-12-03</td>
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



</body>

</html>
