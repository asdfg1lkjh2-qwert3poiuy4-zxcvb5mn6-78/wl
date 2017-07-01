<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock</title>
<%@ include file="admin-includeHeader.jsp"%>
</head>

<body>
	
		<div id="imageFile">
		</div>
	
<script src="resources/js/jquery-2.1.3.min.js"></script>
<script src="resources/js/dropzone.js"></script>
<!-- Dropzone Plugin Js -->
<script type="text/javascript">
$(document).ready(function (){
	
	$
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
		
	});
});

</script>

 </body>
</html>