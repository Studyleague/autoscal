@section('title','Models')
@include('admin.partial.link')

</head>

<body>
    <section class="body">

        @include('admin.partial.sidebar')
        <div class="inner-wrapper">
            <section role="main" class="content-body">
                <header class="page-header">
                    <h2>Models</h2>

                    <div class="right-wrapper text-right">
                        <ol class="breadcrumbs">
                            <li>
                                <a href="index.php">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li><span>Models</span></li>
                        </ol>

                        <label class="sidebar-right-toggle" data-open=""></label>
                    </div>
                </header>

                <!-- Add Form Start -->
                <div class="row" id="addContainer" style="display:none;">
                    <div class="col">
                        <section class="card">
                            <header class="card-header">
                                <h2 class="card-title">Add Model</h2>
                            </header>
                            <div class="card-body">
                                <form action="#" method="post" id="addForm">
                                    @csrf

                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Brand</label>
                                        <div class="col-lg-6">
                                            <select class="form-control" name="brand_id" required>
                                                <option value="">Select Brand</option>
                                                @foreach ($brands as $skey => $res)
                                                    <option value="{{$res->id}}">{{$res->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Model</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="model" id="edit_brand_name" required>
                                            <span class="text-danger error-text edit_brand_name_err"></span>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Price</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="price" id="edit_brand_name" required>
                                            <span class="text-danger error-text edit_brand_name_err"></span>
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
                                <h2 class="card-title">Edit Model</h2>
                            </header>
                            <div class="card-body">
                                <form class="form-horizontal form-bordered" method="post" id="editForm">
                                    @csrf

                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Brand</label>
                                        <div class="col-lg-6">
                                            <select class="form-control" name="brand_id">
                                                <option value="">Select Brand</option>
                                                @foreach ($brands as $skey => $res)
                                                    <option value="{{$res->id}}">{{$res->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Model</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="model" id="model">
                                            <span class="text-danger error-text edit_brand_name_err"></span>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Price</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="price" id="price">
                                            <input type="hidden" class="form-control" name="id" id="id">
                                            <span class="text-danger error-text edit_brand_name_err"></span>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault"></label>
                                        <div class="col-lg-6">
                                            <input type="submit" class="btn btn-primary" id="update_brand_submit" value="Update">
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
                                <h2 class="card-title">Models</h2>
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
                                            <th>Brand Image</th>
                                            <th>Brand Name</th>
                                            <th>Model</th>
                                            <th>Price</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tableContainer">
                                        @foreach ($models as $key => $val)
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td> <img src="{{ asset($val->image_path) }}" alt="" class="img-fluid myImg" width="100" height="70"> </td>
                                                <td>{{$val->name}}</td>
                                                <td>{{$val->model_no}}</td>
                                                <td>{{$val->price}}</td>
                                                <td>
                                                    <a href="#" data-id="{{$val->id}}" data-brand="{{$val->brand_id}}" data-modelno="{{$val->model_no}}" data-price="{{$val->price}}" class="edit-element" data-original-title="Edit">
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
                    url: "{{route('admin.add_model')}}",
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
                    url: "{{route('admin.edit_model')}}",
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
        $("#tableContainer").on("click",".rem-element",function(){

            if(confirm("Are You Sure??")){
                var ID = $(this).attr('id');
                ele = $(this);
                $.ajax({
                    type: "GET",
                    url: "model_delete/"+ID,
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
        $("#tableContainer").on("click",".edit-element",function(e) {

        e.preventDefault();
        var id = $(this).attr('data-id');
        var brand_id = $(this).attr('data-brand');
        var model = $(this).attr('data-modelno');
        var price = $(this).attr('data-price');
        $("#addContainer").slideUp();
        $("#btnCancel").show();
        $("#addToTable").hide();
        $("#editContainer").slideDown();
        $("#addContainer").slideUp();
        topFunction();

        $("#editForm input[name='id']").val(id);
        $("#editForm select[name='brand_id']").val(brand_id);
        $("#editForm input[name='model']").val(model);
        $("#editForm input[name='price']").val(price);

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0; // For Safari
            document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
        }
    });


    </script>
</body>


</html>
