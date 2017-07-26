<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock</title>
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css">
<%@ include file="admin-includeHeader.jsp"%>
</head>

<body>
	
		<div id="imageFile">
		</div>
	
<script src="resources/js/jquery-2.1.3.min.js"></script>
<script src="resources/js/dropzone.js"></script>
<script src="resources/js/sweetalert.min.js"></script>
<!-- Dropzone Plugin Js -->
<script type="text/javascript">
$(document).ready(function (){
	
	/* $
	.ajax({
		url : "admin-fetchAllCategoryAvailble",
		type : "GET",
		data : "",
		contentType : false,
		success : function(data) {
			if(data.status){
				var abc = "";
				for(var i =0; i< data.categoryAvailables.length; i++){
					 var url =data.categoryAvailables[i].iconFile;
					abc = abc + "<img src = \"getImageSocial\" alt=\"\" height=\"60\" width=\"60\">";

					}	
					$("#imageFile").html(abc);
				}
		
		},
		error : function (data){
			alert("error");
		}
		
	}); */
	swal({
		  title: "Are you sure?",
		  text: "You will not be able to recover this imaginary filesss!",
		  type: "warning",
		  showCancelButton: true,
		  confirmButtonColor: "#DD6B55",
		  confirmButtonText: "Yes, delete it!",
		  closeOnConfirm: false
		},
		function(isConfirm){
			if(isConfirm){
				swal("Deleted!", "Your imaginary file has been deleted.", "success");
			}
		});
});

</script>

 </body>
</html>