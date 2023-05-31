@section('title','Leads')
@include('admin.partial.link')

</head>
<style>
    .modal {
        background-color: rgb(0 0 0 / 5%);
    }
</style>
<body>
    <section class="body">

        @include('admin.partial.sidebar')
        <div class="inner-wrapper">
            <section role="main" class="content-body">
                <header class="page-header">
                    <h2>Leads</h2>

                    <div class="right-wrapper text-right">
                        <ol class="breadcrumbs">
                            <li>
                                <a href="index.php">
                                    <i class="fas fa-home"></i>
                                </a>
                            </li>
                            <li><span>Leads</span></li>
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
                                <form action="#" method="post" id="add_brand_form">
                                    @csrf

                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Full Name</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control @error('brand_name') is-invalid @enderror" value="{{ old('brand_name') }}" name="brand_name" id="brand_name" >
                                            <span class="text-danger error-text brand_name_err"></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Email</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control @error('brand_name') is-invalid @enderror" value="{{ old('brand_name') }}" name="brand_name" id="brand_name" >
                                            <span class="text-danger error-text brand_name_err"></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Mobile</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control @error('brand_name') is-invalid @enderror" value="{{ old('brand_name') }}" name="brand_name" id="brand_name" >
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
                                <h2 class="card-title">Edit Model</h2>
                            </header>
                            <div class="card-body">
                                <form class="form-horizontal form-bordered" method="post" id="editForm">
                                    @csrf
                                    <input type="hidden" id="edit_brand_id" name="edit_brand_id" value="">

                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Brand</label>
                                        <div class="col-lg-6">
                                            <select class="form-control" name="brand_id">
                                                <option value="">Select Brand</option>
                                                <option value="">Tata</option>
                                                <option value="">Ford</option>
                                                <option value="">BMW</option>
                                                <option value="">Toyota</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 control-label text-lg-right pt-2">Model</label>
                                        <div class="col-lg-6">
                                            <input type="text" class="form-control" name="edit_brand_name" id="edit_brand_name">
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
                                <h2 class="card-title">Leads</h2>
                            </header>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="mb-3">
                                            {{-- <button id="addToTable" class="btn btn-primary">Add <i class="fas fa-plus"></i></button>
                                            <button id="btnCancel" class="btn btn-danger" style="display:none;">Cancel</button> --}}
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-bordered table-striped mb-0" id="datatable-tabletools">
                                    <thead>
                                        <tr>
                                            <th>Sr. No.</th>
                                            <th>LeadId</th>
                                            <th>Vehicle Details</th>
                                            <th>Seller Details</th>
                                            <th>Seller Address</th>
                                            <th>User Details</th>
                                            <th>Inspection Price</th>
                                            <th>Discount</th>
                                            <th>Paid</th>
                                            <th>Assign Partner</th>
                                            {{-- <th>Reason</th> --}}
                                            <th>Car Specification</th>
                                            <th width="150">Document Status</th>
                                            <th>Created On</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tableContainer">
                                        @foreach($orders as $key=>$val)
                                        @php
                                        $modal = optional($val->model);
                                        @endphp
                                            <tr>
                                                <td><?=$key+1?></td>
                                                <td>#<?=$val->order_no?></td>
                                                <td>
                                                    <b>Brand:</b> <?=$val->brand->name?><br>
                                                    <b>Car Model Type:</b> <?=$modal->model_no?><br>
                                                    <b>Manufacturing Year:</b> <?=$val->manfacturing_year?><br>
                                                </td>
                                                <td>
                                                    Name: <?=$val->seller_name?> <br>
                                                    Mobile: <?=$val->contact_no?> <br>
                                                </td>
                                                <td>
                                                    <?=$val->house_no.', '.$val->landmark.', '.$val->city.', '.$val->state.' '.$val->pincode?>
                                                </td>
                                                <td>
                                                    Name: <?=optional($val->user)->name?> <br>
                                                    Mobile: <?=optional($val->user)->mobile?> <br>
                                                </td>
                                                <td><?=$val->inspection_price?></td>
                                                <td><?=$val->discount?></td>
                                                <td><?=$val->total?></td>
                                                <td>
                                                    <select class="form-control partner_id" name="partner_id" data-id="{{$val->id}}">
                                                        <option value="">Select Partner</option>
                                                        @foreach($partners as $pkey=> $res)
                                                            <option value="<?=$res->id?>" @if($res->id == $val->partner_id) selected @endif><?=$res->name?></option>
                                                        @endforeach
                                                    </select>
                                                </td>
                                                {{-- <td>{{ ($val->reason) ? $val->reason : "--" }}</td> --}}
                                                <td>
                                                    @if($val->document_pdf)
                                                    <a target="_blank" href="{{asset($val->document_pdf)}}">view pdf</a><br>
                                                    @else
                                                    ---
                                                    @endif
                                                </td>
                                                <td>
                                                    @if($val->document_status == 'Under Review' && $val->status =='Under Review')
                                                    <a href="#" class="btn btn-success btn-sm document_status" data-id="{{$val->id}}" data-status="1">Approved</a>
                                                    <a href="#" class="btn btn-danger btn-sm reject_status" data-id="{{$val->id}}" data-status="2">Reject</a>
                                                    @elseif($val->document_status == 'Approved' && $val->status =='Completed')
                                                    <b style="color:green">Completed</b>
                                                    @elseif($val->document_status == 'Rejected')
                                                    <b style="color:red">Rejected</b>
                                                    @else
                                                    <b style="color:blue">{{$val->status}}</b>
                                                    @endif

                                                </td>
                                                <td>
                                                    {{$val->created_at}}
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
    <div class="modal fade bd-example-modal-lg" id="details-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Reason</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="addReason" method="post">
                        @csrf
                        <textarea name="reason" id="reason" class="form-control" placeholder="Reason"></textarea>
                        <input type="hidden" id="order_id" name="id"><br>
                        <input type="hidden" id="status" name="status"><br>
                        <input type="submit" class="btn btn-success btn-block">
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary " data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

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

<script>

    $(".reject_status").on("click",function(e){
        e.preventDefault();
        var id = $(this).attr('data-id');
        var status = $(this).attr('data-status');
        $("#order_id").val(id);
        $("#status").val(status);
        $("#details-modal").modal("show");

    });
    $(".partner_id").on("change",function(e){
        e.preventDefault();
        var id = $(this).val();
        var order_id = $(this).attr('data-id');
        if(confirm("Are you sure?"))
        {
            $.ajax({
                    type: "POST",
                    url: "{{route('admin.assign_partner')}}",
                    data: {'id':id,'order_id':order_id, '_token': "{{ csrf_token() }}"},
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
        }
    })
    $(".document_status").on("click",function(e){
        e.preventDefault();
        var id = $(this).attr('data-id');
        var status = $(this).attr('data-status');
        if(status == 1)
        {
            $msg = "Are you sure you want to Approve?"
        }
        else
        {
            $msg = "Are you sure you want to Reject?"

        }
        if(confirm($msg))
        {
            $.ajax({
                    type: "POST",
                    url: "{{route('admin.document_status')}}",
                    data: {'status':status,'id':id, '_token': "{{ csrf_token() }}"},
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
        }
    });
    $("#addReason").on('submit',function(e){

        e.preventDefault();
        var formData = new FormData(this);
        $.ajax({
                type: "POST",
                url: "{{route('admin.document_status')}}",
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
</script>
</html>
