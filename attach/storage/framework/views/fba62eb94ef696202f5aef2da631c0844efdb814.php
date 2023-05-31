<?php $__env->startSection('title','Transactions'); ?>
<?php echo $__env->make('admin.partial.link', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

	</head>
	<body>
		<section class="body">

		    <?php echo $__env->make('admin.partial.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
			<div class="inner-wrapper">
				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Transactions</h2>

						<div class="right-wrapper text-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.php">
										<i class="fas fa-home"></i>
									</a>
								</li>
								<li><span>Transactions</span></li>
							</ol>

							<label class="sidebar-right-toggle" data-open=""></label>
						</div>
					</header>

				<div class="row">
					<div class="col">
                        <section class="card">
							<header class="card-header mt-3">
								<h2 class="card-title">Transactions</h2>
							</header>
							<div class="card-body">
                                <div id="tableContainer">
                                    <table class="table table-bordered table-striped mb-0" id="datatable-tabletools">
                                        <thead>
                                            <tr>
                                              <th>Sr. No</th>
                                              <th>Lead Id</th>
                                              <th>User Details</th>
                                              <th>Amount</th>
                                              <th>Discount</th>
                                              <th>TXN ID</th>
                                              <th>Payment Type</th>
                                              <th>CreatedOn</th>
                                            </tr>
                                          </thead>
                                          <tbody>
                                              <?php $__currentLoopData = $transactions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                              <td><?php echo e($key + 1); ?></td>
                                              <td><?php echo e($val->order->order_no); ?></td>
                                              <td>
                                                Name: <?php echo e($val->user->name); ?> <br>
                                                email: <?php echo e($val->user->email); ?> <br>
                                                Mobile: <?php echo e($val->user->mobile); ?> <br>
                                              </td>
                                              <td>₹<?php echo e($val->fee); ?></td>
                                              <td><?php echo e($val->order->discount); ?></td>
                                              <td><?php echo e($val->transaction_id); ?></td>
                                              <td><?php echo e('Online'); ?></td>
                                              <td><?php echo e(\Carbon\Carbon::parse($val->start_date)->format('Y-m-d H:i:s')); ?></td>
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
<?php /**PATH /var/www/thecarsdoctor.com/html/attach/resources/views/admin/transactions.blade.php ENDPATH**/ ?>