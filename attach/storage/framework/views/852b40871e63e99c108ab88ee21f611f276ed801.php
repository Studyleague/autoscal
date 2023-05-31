<section>
    <div id="myModal" class="modal">

        <!-- The Close Button -->
        <span class="close" onclick="document.getElementById('myModal').style.display='none'">&times;</span>

        <!-- Modal Content (The Image) -->
        <img class="modal-content" id="img01">

        <!-- Modal Caption (Image Text) -->
        <div id="caption"></div>
    </div>
</section>

<script src="<?php echo e(asset('admin/vendor/jquery/jquery.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/jquery-ui/jquery-ui.min.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/jquery-browser-mobile/jquery.browser.mobile.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/popper/umd/popper.min.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/bootstrap/js/bootstrap.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/common/common.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/nanoscroller/nanoscroller.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/magnific-popup/jquery.magnific-popup.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/jquery-placeholder/jquery-placeholder.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/jquery-validation/jquery.validate.js')); ?>"></script>
<script src="<?php echo e(asset('admin/assets/admin/location.js')); ?>"></script>
<script src="<?php echo e(asset('admin/assets/DataTables/datatables.js')); ?>"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
<script src="<?php echo e(asset('admin/vendor/bootstrap-markdown/js/markdown.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/bootstrap-markdown/js/to-markdown.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/bootstrap-markdown/js/bootstrap-markdown.js')); ?>"></script>
<script src="vendor/select2/js/select2.js"></script>
<script src="<?php echo e(asset('admin/vendor/datatables/media/js/jquery.dataTables.min.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/datatables/media/js/dataTables.bootstrap4.min.js')); ?>"></script>
<script src="<?php echo e(asset('admin/js/examples/examples.datatables.default.js')); ?>"></script>
<script src="<?php echo e(asset('admin/js/examples/examples.datatables.row.with.details.js')); ?>"></script>
<script src="<?php echo e(asset('admin/js/examples/examples.datatables.tabletools.js')); ?>"></script>

<script src="<?php echo e(asset('admin/vendor/datatables/extras/TableTools/Buttons-1.4.2/js/dataTables.buttons.min.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/datatables/extras/TableTools/Buttons-1.4.2/js/buttons.bootstrap4.min.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/datatables/extras/TableTools/Buttons-1.4.2/js/buttons.html5.min.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/datatables/extras/TableTools/Buttons-1.4.2/js/buttons.print.min.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/datatables/extras/TableTools/JSZip-2.5.0/jszip.min.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/datatables/extras/TableTools/pdfmake-0.1.32/pdfmake.min.js')); ?>"></script>
<script src="<?php echo e(asset('admin/vendor/datatables/extras/TableTools/pdfmake-0.1.32/vfs_fonts.js')); ?>"></script>


<script src="<?php echo e(asset('admin/js/theme.js')); ?>"></script>
<script src="<?php echo e(asset('admin/js/theme.init.js')); ?>"></script>
<script src="<?php echo e(asset('admin/js/examples/examples.dashboard.js')); ?>"></script>

<script>
    var modal = document.getElementById('myModal');

    // Get the image and insert it inside the modal - use its "alt" text as a caption
    var img = $('.myImg');
    var modalImg = $("#img01");
    var captionText = document.getElementById("caption");
    $('.myImg').click(function(){
        modal.style.display = "block";
        var newSrc = this.src;
        modalImg.attr('src', newSrc);
        captionText.innerHTML = this.alt;
    });

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
    modal.style.display = "none";
    }

    jQuery(".date-picker").datepicker({
        dateFormat: 'yy-mm-dd'
    });
    //Get the current date in a dateobject
    var currentDate = new Date();
    //Offset the current date by how many days you need
    currentDate.setDate(currentDate.getDate());
    //Insert placeholder date
    jQuery(".date-picker").datepicker("setDate", currentDate);  
</script>
<?php /**PATH E:\AQIB\c2c\TCD\attach\resources\views/admin/partial/script.blade.php ENDPATH**/ ?>