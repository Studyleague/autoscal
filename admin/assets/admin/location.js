
$(document).ready(function(){
        //alert(1);
        
 $("#addForm").validate({
        rules:{
            pincode:{
                required:true
            },
          
        },
        errorClass: "help-inline",
        errorElement: "span",
        highlight:function(element, errorClass, validClass) {
            $(element).parents('.control-group').addClass('error');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).parents('.control-group').removeClass('error');
            $(element).parents('.control-group').addClass('success');
        },
       
        
    });    
        
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

      $("#addtophotos").click(function(){
    
            $("#addphotos").slideDown();
            $("#addContainer").slideUp();
        });
    
        
    $("#btnCancel").click(function(){
            $("#addContainer").slideUp();
            $("#editContainer").slideUp();
            $(this).hide();
            $("#addToTable").show();
           
        });
         
  $("#tableContainer").on("click",".dremove-element",function(){
      
            if(confirm("Are You Sure??"))
            {
                var ID = $(this).attr('id');
                ele = $(this);
                $.ajax({
                    type: "POST",
                    url: "actions/location/delete.php",
                    data: {'ID':ID},
                    //timeout: 3000,
                    success: function(obj) 
                    {
                        //alert(obj);
                        location.reload();
                    },
                    error: function() 
                    {
                        alert('failed');
                    }
                });
            }
        });
        
});