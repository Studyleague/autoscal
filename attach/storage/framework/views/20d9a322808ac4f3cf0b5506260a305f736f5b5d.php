<?php $__env->startSection('title','Coupons'); ?>
<?php echo $__env->make('admin.partial.link', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	</head>
	<body>
		<section class="body">

		    <?php echo $__env->make('admin.partial.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
			<div class="inner-wrapper">
				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Coupons</h2>

						<div class="right-wrapper text-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.php">
										<i class="fas fa-home"></i>
									</a>
								</li>
								<li><span>Coupons</span></li>
							</ol>

							<label class="sidebar-right-toggle" data-open=""></label>
						</div>
					</header>

                    <!-- Add Form Start -->

                    <div class="row" id="addContainer" style="display: none;">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header pb-0">
                                    <h5>Add Coupon</h5>
                                </div>
                                <div class="card-body">
                                    <form class="form-wizard" id="addForm" method="POST" enctype="multipart/form-data">
                                        <?php echo csrf_field(); ?>
                                        <div class="form-group">
                                            <label for="edit_excel_file">Enter Coupon Code</label>
                                            <input type="text" class="form-control" name="coupon_name">
                                        </div>

                                        <div class="form-group">
                                            <label for="edit_excel_file">Start Date</label>
                                            <input type="date" class="form-control" name="start_date">
                                        </div>

                                        <div class="form-group">
                                            <label for="edit_excel_file">End Date</label>
                                            <input type="date" class="form-control" name="end_date">
                                        </div>

                                        <div class="form-group">
                                            <label for="edit_excel_file">Minimum Order Amount</label>
                                            <input type="text" class="form-control" name="min_order_amt">
                                        </div>

                                        <div class="form-group">
                                            <label for="edit_excel_file">Discount</label>
                                            <input type="text" class="form-control" name="discount">
                                        </div>

                                        <div class="form-group">
                                            <label for="edit_excel_file">Discount Type</label>
                                            <select name="value_type" class="form-control">
                                                <option value="">--Select--</option>
                                                <option value="Percent">Percent</option>
                                                <option value="Bucks">Bucks</option>
                                              </select>
                                          </div>
                                          <div class="form-group">
                                              <label for="edit_excel_file">No of time/user</label>
                                              <input type="number" class="form-control" name="no_of_time_use">
                                          </div>
                                          <div class="form-group">
                                              <label for="edit_excel_file">Max. use count</label>
                                              <input type="number" class="form-control" name="no_of_users">
                                          </div>

                                        <div class="mt-4">
                                            <div class="btn-m">
                                                <button class="btn btn-primary" type="submit">Add</button>
                                                <input class="btn btn-secondary" type="reset" value="Reset">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="editContainer" style="display: none;">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header pb-0">
                                    <h5>Add Coupon</h5>
                                </div>
                                <div class="card-body">
                                    <form class="form-wizard" id="editForm" method="POST" enctype="multipart/form-data">
                                        <?php echo csrf_field(); ?>
                                        <div class="form-group">
                                            <label for="edit_excel_file">Enter Coupon Code</label>
                                            <input type="text" class="form-control" name="coupon_name" readonly>
                                            <input type="hidden" class="form-control" name="id" readonly>
                                        </div>

                                        <div class="form-group">
                                            <label for="edit_excel_file">Start Date</label>
                                            <input type="date" class="form-control" name="start_date">
                                        </div>

                                        <div class="form-group">
                                            <label for="edit_excel_file">End Date</label>
                                            <input type="date" class="form-control" name="end_date">
                                        </div>

                                        <div class="form-group">
                                            <label for="edit_excel_file">Minimum Order Amount</label>
                                            <input type="text" class="form-control" name="min_order_amt">
                                        </div>

                                        <div class="form-group">
                                            <label for="edit_excel_file">Discount</label>
                                            <input type="text" class="form-control" name="discount">
                                        </div>

                                        <div class="form-group">
                                            <label for="edit_excel_file">Discount Type</label>
                                            <select name="value_type" class="form-control">
                                                <option value="">--Select--</option>
                                                <option value="Percent">Percent</option>
                                                <option value="Bucks">Bucks</option>
                                              </select>
                                          </div>
                                          <div class="form-group">
                                              <label for="edit_excel_file">No of time/user</label>
                                              <input type="number" class="form-control" name="no_of_time_use">
                                          </div>
                                          <div class="form-group">
                                              <label for="edit_excel_file">Max. use count</label>
                                              <input type="number" class="form-control" name="no_of_users">
                                          </div>

                                        <div class="mt-4">
                                            <div class="btn-m">
                                                <button class="btn btn-primary" type="submit">Update</button>
                                                <input class="btn btn-secondary" type="reset" value="Reset">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- start: page -->

				<div class="row">
					<div class="col">
                        <section class="card">
							<header class="card-header mt-3">
								<h2 class="card-title">Coupons</h2>
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
                                <div id="tableContainer">
                                    <table class="table table-bordered table-striped mb-0" id="datatable-tabletools">
                                        <thead>
                                            <tr>
                                              <th>Sr. No</th>
                                              <th>Code</th>
                                              <th>Mazx use count</th>
                                              <th>No of time/user</th>
                                              <th>Minimum Order Amount</th>
                                              <th>Discount</th>
                                              <th>Start Date</th>
                                              <th>Expiry Date</th>
                                              <th>Action</th>
                                            </tr>
                                          </thead>
                                          <tbody>
                                              <?php $__currentLoopData = $coupons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                              <td><?php echo e($key + 1); ?></td>
                                              <td><?php echo e($val->coupon_name); ?></td>
                                              <td><?php echo e($val->no_of_time_use); ?></td>
                                              <td><?php echo e($val->no_of_users); ?></td>
                                              <td><?php echo e($val->min_order_amt); ?></td>
                                              <td><?php echo e($val->value.' '.$val->value_type); ?></td>
                                              <td><?php echo e($val->start_date); ?></td>
                                              <td><?php echo e($val->expiry_date); ?></td>
                                              <td>
                                                  <a href="#" class="btn btn-danger btn-xs remove-element" id="<?php echo e($val->id); ?>">Delete</a>
                                                  <a href="#" class="btn btn-primary btn-xs edit-element" id="<?php echo e($val->id); ?>">Edit</a>
                                              </td>
                                            </tr>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                          </tbody>
                                    </table>
                                </div>
							</div>
						</section>
                        </div>
					</div>
					<!-- end: page -->
				</section>
            </div>
        </section>
		<!-- Vendor -->
		<?php echo $__env->make('admin.partial.script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <script>
            $("#addToTable").click(function() {
              $("#addContainer").slideDown();
              $("#editContainer").slideUp();
              $(this).hide();
              $("#btnCancel").show();
            });


          $("#btnCancel").click(function() {
            $("#addContainer").slideUp();
            $("#editContainer").slideUp();
            $(this).hide();
            $("#addToTable").show();
          });

          $("#addForm").on('submit',function(e){

              e.preventDefault();
              var formData = new FormData(this);
              $.ajax({
                      type: "POST",
                      url: "<?php echo e(route('admin.add_coupon')); ?>",
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
                      url: "<?php echo e(route('admin.update_coupon')); ?>",
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
          $("#tableContainer").on("click",".edit-element",function(){
              var id = $(this).attr('id');
              $("#addContainer").slideUp();
              $("#editContainer").slideDown();
              $("#btnCancel").show();
              $("#addToTable").show();
              $.ajax({
                  type: "POST",
                  url: "<?php echo e(route('admin.edit_coupon')); ?>",
                  data: {'id':id,'_token': "<?php echo e(csrf_token()); ?>"},
                  success: function(obj) {
                      result = $.parseJSON(obj);
                          if(result.response == 'y'){
                              $("#editContainer").slideDown();


                              $("#editForm input[name='id']").val(result.id)
                              $("#editForm input[name='coupon_name']").val(result.coupon_name);
                              $("#editForm input[name='start_date']").val(result.start_date);
                              $("#editForm input[name='end_date']").val(result.expiry_date);
                              $("#editForm input[name='min_order_amt']").val(result.min_order_amt);
                              $("#editForm input[name='discount']").val(result.value);
                              $("#editForm select[name='value_type']").val(result.value_type);
                              $("#editForm input[name='no_of_time_use']").val(result.no_of_time_use);
                              $("#editForm input[name='no_of_users']").val(result.no_of_users);
                          }
                          else
                          {
                              $("#addContainer").slideUp();
                              $("#btnCancel").hide();
                              $("#addToTable").show();
                              alert(result.message);
                          }
                  },
                  error: function() {alert('failed');}
              });

          });
          $("#tableContainer").on("click",".remove-element",function(){
              if(confirm("Are You Sure?")){
                  debugger;
                  var ID = $(this).attr('id');
                  ele = $(this);
                  $.ajax({
                      type: "POST",
                      url: "<?php echo e(route('admin.coupon_delete')); ?>",
                      data: {'id':ID,'_token': "<?php echo e(csrf_token()); ?>"},
                      //timeout: 3000,
                          success: function(obj) {
                              debugger;
                              result = $.parseJSON(obj);
                              if(result.response == 'y')
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
              }
          });

          </script>
	</body>
</html>
<?php /**PATH /var/www/leadstoclient.tech/html/TCD/attach/resources/views/admin/coupons.blade.php ENDPATH**/ ?>