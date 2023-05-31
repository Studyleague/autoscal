<?php $__env->startSection('title','Slider'); ?>
<?php echo $__env->make('admin.partial.link', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
		
	</head>
	<body>
		<section class="body">

		    <?php echo $__env->make('admin.partial.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
			<div class="inner-wrapper">
				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Sliders</h2>
					
						<div class="right-wrapper text-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.php">
										<i class="fas fa-home"></i>
									</a>
								</li>
								<li><span>Sliders</span></li>
							</ol>
					
							<label class="sidebar-right-toggle" data-open=""></label>
						</div>
					</header>

                    <!-- Add Form Start -->
                    
                    <div class="row" id="addContainer" style="display:none;">
					    <div class="col">
							<section class="card">
								<header class="card-header">
									<h2 class="card-title">Add Slider</h2>
								</header>
								<div class="card-body">
									<form class="form-horizontal form-bordered" method="POST" name="addForm" id="addForm">
									    <?php echo csrf_field(); ?>
									    
									    <div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2">Slider Image</label>
											<div class="col-lg-6">
												<input type="file" class="form-control" name="image_path" id="image_path">
											</div>
										</div>
										
                       			        <div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault"></label>
											<div class="col-lg-6">
												<input type="submit" class="btn btn-primary" value="Add">
                                                <input type="reset" class="btn btn-warning" value="Reset">
											</div>
										</div>
										
									</form>
								</div>
							</section>
						</div>
					</div>
                    

                    <div class="row" id="editContainer" style="display:none;">
					    <div class="col">
							<section class="card">
								<header class="card-header">
									<h2 class="card-title">Edit Board</h2>
								</header>
								<div class="card-body">
									<form class="form-horizontal form-bordered" id="editForm" method="POST">
									    <?php echo csrf_field(); ?>
									    <div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2">Board Name</label>
											<div class="col-lg-6">
												<input type="text" name="name" class="form-control">
												<input type="hidden" name="id" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2">Short Form</label>
											<div class="col-lg-6">
												<input type="text" class="form-control" name="short_form" id="short_form">
											</div>
										</div>
										
                       			        <div class="form-group row">
											<label class="col-lg-3 control-label text-lg-right pt-2" for="inputDefault"></label>
											<div class="col-lg-6">
												<input type="submit" class="btn btn-primary" value="Update">
                                                <input type="reset" class="btn btn-warning" value="Reset">
											</div>
										</div>
										
									</form>
								</div>
							</section>
						</div>
					</div>
                    
                    <!-- start: page -->
                    
				<div class="row">
					<div class="col">
                        <section class="card">
							<header class="card-header mt-3">
								<h2 class="card-title">Sliders</h2>
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
											<th>image</th>
											<th>Createdon</th>
                                            <th>Actions</th>
                                          
                                    	</tr>
                                  
									</thead>
									<tbody id="tableContainer">
		                                
									    <?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=> $val): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									    
			                            <tr>
											<td><?php echo e($key+1); ?></td>
											<td><img src="<?php echo e(asset($val->image_path)); ?>" width="60" height="60"></td>
											<td><?php echo e($val->created_at); ?></td>
									     	<td>
                                                <a href="#"  name="delete" id="<?php echo e($val->id); ?>" class="remove-element" data-original-title="Edit">
                                                	<i class="far fa-trash-alt"></i>
                                                </a>
                                            </td>  
										</tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    									

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
		<!-- Vendor -->
		<?php echo $__env->make('admin.partial.script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
		<script>
			$("#addForm").on('submit',function(e){
		
				e.preventDefault();
				var formData = new FormData(this);
				$.ajax({
						type: "POST",
						url: "add_slider",
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
			
            $("#tableContainer").on("click",".remove-element",function(){
      
			if(confirm("Are You Sure??")){
				var ID = $(this).attr('id');
				ele = $(this);
				$.ajax({
					type: "GET",
					url: "delete_slider/"+ID,
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
		<script>
		    $("#addToTable").click(function(){
    
                $("#addContainer").slideDown();
                $("#addphotos").slideUp();
                $("#editContainer").slideUp();
                $(this).hide();
                $("#btnCancel").show();
            });

            $("#edittable").click(function(){
        
                $("#editContainer").slideDown();
                $("#addphotos").slideUp();
                $("#addContainer").slideUp();
                $(this).hide();
                $("#btnCancel").show();
            });
            $("#btnCancel").click(function(){
                $("#addContainer").slideUp();
                $("#editContainer").slideUp();
                $(this).hide();
                $("#addToTable").show();
				
            });
			
        });
		</script>
	</body>
</html><?php /**PATH /var/www/leadstoclient.tech/html/TCD/attach/resources/views/admin/sliders.blade.php ENDPATH**/ ?>