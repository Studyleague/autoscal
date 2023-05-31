@include('admin.partial.link')
@section('title','Admin Panel')

</head>

<body>
    <section class="body">

        @include('admin.partial.sidebar')
        <div class="inner-wrapper">
            <section role="main" class="content-body">
                <header class="page-header">
                    <h2>Partners</h2>

                    <div class="right-wrapper text-right">
                        <ol class="breadcrumbs">
                            <li>
                                <a href="index.php">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li><span>Partners</span></li>
                        </ol>

                        <label class="sidebar-right-toggle" data-open=""></label>
                    </div>
                </header>

                <!-- Add Form Start -->
                <div class="row" id="addContainer" style="display:none;">
                    <div class="col">
                        <section class="card">
                            <header class="card-header">
                                <h2 class="card-title">Add Partner</h2>
                            </header>
                            <div class="card-body">
                                <form action="#" method="post" id="addForm">
                                    @csrf

                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Full Name</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="name" id="name" required>
                                            <span class="text-danger error-text brand_name_err"></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Email</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="email" id="email" required>
                                            <span class="text-danger error-text brand_name_err"></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Mobile</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="mobile" id="mobile" required>
                                            <span class="text-danger error-text brand_name_err"></span>
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault"></label>
                                        <div class="col-lg-6">
                                            <input type="submit" id="add_brand_submit" class="btn btn-primary" value="Add">
                                            <input type="reset" class="btn btn-warning" value="Reset">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </section>
                    </div>
                </div>

                {{-- EDIT SECTION --}}
                <div class="row" id="editContainer" style="display:none;">
                    <div class="col">
                        <section class="card">
                            <header class="card-header">
                                <h2 class="card-title">Edit Partner</h2>
                            </header>
                            <div class="card-body">
                                <form action="#" method="post" id="editForm">
                                    @csrf

                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Full Name</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="name" id="name" >
                                            <span class="text-danger error-text brand_name_err"></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Email</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="email" id="email" >
                                            <span class="text-danger error-text brand_name_err"></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Mobile</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="mobile" id="mobile" >
                                            <input type="hidden" class="form-control" name="id" id="id" >
                                            <span class="text-danger error-text brand_name_err"></span>
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault"></label>
                                        <div class="col-lg-6">
                                            <input type="submit" id="add_brand_submit" class="btn btn-primary" value="Update">
                                            <input type="reset" class="btn btn-warning" value="Reset">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </section>
                    </div>
                </div>
                {{-- EDIT SECTINO ENDS HERE --}}


                <div class="row">
                    <div class="col">
                        <section class="card">
                            <header class="card-header mt-3">
                                <h2 class="card-title">Partners</h2>
                            </header>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="mb-3">
                                            <button id="addToTable" class="btn btn-primary">Add <i class="fas fa-plus"></i></button>
                                            <button id="btnCancel" class="btn btn-danger" style="display:none;">Cancel</button>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-bordered table-striped mb-0" id="datatable-tabletools">
                                    <thead>
                                        <tr>
                                            <th>Sr. No.</th>
                                            <th>Full Name</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Document</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tableContainer">
                                        @foreach ($partners as $key => $val)
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td>{{$val->name}}</td>
                                                <td>{{$val->email}}</td>
                                                <td>{{$val->mobile}}</td>
                                                <td>
                                                    @if($val->adhaar_front) Adhaar Front: <a href="{{asset($val->adhaar_front)}}">View</a><br> @else - <br> @endif
                                                    @if($val->adhaar_back) Adhaar Back: <a href="{{asset($val->adhaar_back)}}">View</a><br> @else - <br> @endif
                                                    @if($val->pan_card) Pan: <a href="{{asset($val->pan_card)}}">View</a><br> @else - <br> @endif
                                                </td>
                                                <td>
                                                    <a
                                                        href="#"
                                                        class="edit-element"
                                                        id="{{$val->id}}"
                                                        data-name="{{$val->name}}"
                                                        data-email="{{$val->email}}"
                                                        data-mobile="{{$val->mobile}}"
                                                        data-original-title="Edit"
                                                    >
                                                        <i class="fas fa-pencil-alt"></i>
                                                    </a>
                                                    <a href="#" class="rem-element" id="{{$val->id}}" data-original-title="Delete">
                                                        <i class="far fa-trash-alt"></i>
                                                    </a>
                                                </td>
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
    <script>
        $("#addForm").on('submit',function(e){

            e.preventDefault();
            var formData = new FormData(this);
            $.ajax({
                    type: "POST",
                    url: "{{route('admin.partner_add')}}",
                    data: formData,
                    contentType: false,
                    processData: false,
                    success: function(obj) {
                        var result = $.parseJSON(obj);
                        if(result.response=='y')
                        {
                            alert(result.message);
                            location.reload();
                        }
                        else
                        {
                            alert(result.message);
                        }
                    },
                    error: function() {alert('failed');}
                });
            return false;
        });
        $("#editForm").on('submit',function(e){

            e.preventDefault();
            var formData = new FormData(this);
            $.ajax({
                    type: "POST",
                    url: "{{route('admin.partner_edit')}}",
                    data: formData,
                    contentType: false,
                    processData: false,
                    success: function(obj) {
                        var result = $.parseJSON(obj);
                        if(result.response=='y')
                        {
                            alert(result.message);
                            location.reload();
                        }
                        else
                        {
                            alert(result.message);
                        }
                    },
                    error: function() {alert('failed');}
                });
            return false;
        });
        $("#tableContainer").on("click",".edit-element",function(e) {

            e.preventDefault();
            var id = $(this).attr('id');
            var name = $(this).attr('data-name');
            var email = $(this).attr('data-email');
            var mobile = $(this).attr('data-mobile');
            $("#addContainer").slideUp();
            $("#btnCancel").show();
            $("#addToTable").hide();
            $("#editContainer").slideDown();
            $("#addContainer").slideUp();
            topFunction();

            $("#editForm input[name='id']").val(id);
            $("#editForm input[name='name']").val(name);
            $("#editForm input[name='mobile']").val(mobile);
            $("#editForm input[name='email']").val(email);

            // When the user clicks on the button, scroll to the top of the document
            function topFunction() {
                document.body.scrollTop = 0; // For Safari
                document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
            }
        });
        $("#tableContainer").on("click",".rem-element",function(){

            if(confirm("Are You Sure??")){
                var ID = $(this).attr('id');
                ele = $(this);
                $.ajax({
                    type: "GET",
                    url: "delete_partner/"+ID,
                    //timeout: 3000,
                    success: function(obj) {
                        result = $.parseJSON(obj);
                        if(result.response == 'y'){
                            alert(result.message);
                            location.reload();
                        }
                        else{
                            alert(result.message);
                        }


                    },
                    error: function() {alert('failed');}
                });
            }
        });

    </script>
</body>


</html>
