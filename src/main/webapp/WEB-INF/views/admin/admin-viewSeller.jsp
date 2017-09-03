<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Seller</title>
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css">
<link href="resources/css/main.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
<!-- Font-Family -->
<link href="https://fonts.googleapis.com/css?family=Caveat|Ubuntu" rel="stylesheet">
<link href="resources/css/all-themes.css" rel="stylesheet" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <link href="resources/css/custom.css" rel="stylesheet" />
 <link href="resources/css/font-awesome.min.css" rel="stylesheet">
</head>
<body class="theme-blush">
	<!-- Page Loader -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="preloader">
				<div class="spinner-layer pl-blush">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
			</div>
			<p>Please wait...</p>
		</div>
	</div>
	<!-- #END# Page Loader -->

	<!-- Overlay For Sidebars -->
	<div class="overlay"></div>
	<!-- #END# Overlay For Sidebars -->

	<%@ include file = "admin-includeRightBar.jsp" %>

	<section class="content patients">
    <div class="container-fluid">
        <div class="block-header">
            <h2>All Listed Sellers</h2>
            <small class="text-muted">Welcome to Wedlock Application</small>
        </div>
        
        <div class="row clearfix" id="sellerDiv">
           
	    </div>
    </div>
</section>
<!-- main content -->
	<div class="color-bg"></div>

	<!-- Dropzone Plugin Js  -->
	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script src="resources/js/sweetalert.min.js"></script>
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
	<script type="text/javascript">
	$(document).ready(function(){
		fetchAllSellers();
	});
	
	 function fetchAllSellers(){
		$.ajax({
			type : "GET",
			url : "admin-fetchAllSellers",
			data : "",
			processData : false,
			contentType :"application/json",
			success : function(data) {
				if(data.status){
					$("#sellerDiv").html("");
					var abc = "";
					for(var i = 0; i< data.sellerDetails.length; i++){
						var url = "<img src=\"getImage?id="+ data.sellerDetails[i].sellerImg+ "\" class=\"img-circle profilePixHeight\" alt=\"seller\">"
						var active;
						var classSelected;
						var inactiveClass;
						if(data.sellerDetails[i].active){
							active = "Active";
							classSelected = "   class = activeClass"
						}else{
							active = "Inactive";
						}
						
						abc = abc + " <div class=\"col-md-4 col-sm-6 col-xs-12 \">"
		                +"<div class=\"card all-patients sellerCard\">"
		                +"<div class=\"body\">"
		                +"<div class=\"row\">"
		                +"<div class=\"col-md-4 col-sm-4 text-center m-b-0\">"
		                +"<a href=\"#\" class=\"p-profile-pix \">"+url+"</a>"
		                +"<medium><i class=\"fa fa-info-circle\" aria-hidden=\"true\"></i>&nbsp;&nbsp;"+data.sellerDetails[i].typeOfSeller+"</medium></br>"
		                +"<medium"+classSelected+">"+active+"</medium>"
		                +"</div>"
		                +"<div class=\"col-md-8 col-sm-8 m-b-0\">"
		                +"<h5 class=\"m-b-0\">"+data.sellerDetails[i].sellerFirstName+" "+data.sellerDetails[i].sellerLastName+"<a href=\"admin-addEditSeller?id="+data.sellerDetails[i].id+"\" title=\"Edit Details\"class=\"edit\"><i class=\"zmdi zmdi-edit\"></i></a></h5>"
		                +"<medium><i class=\"fa fa-id-card\" aria-hidden=\"true\"></i>&nbsp;&nbsp;"+data.sellerDetails[i].id+"</medium><br>"
		                +"<medium><i class=\"fa fa-envelope emailSize\" aria-hidden=\"true\"></i>&nbsp;&nbsp;" +data.sellerDetails[i].sellerEmailId+"</medium><br>"
		                +"<medium><i class=\"fa fa-unlock passwordSize\" aria-hidden=\"true\"></i>&nbsp;"+data.sellerDetails[i].sellerPassword+"</medium>"
		                +"<address class=\"m-t-10 m-b-0 sampleAddress\"><i class=\"fa fa-map-marker fa-lg\" aria-hidden=\"true\"></i>&nbsp;&nbsp;&nbsp;"+data.sellerDetails[i].sellerPresentAddress+"<br>"
		                +"<abbr title=\"ContactNumber\">PhNo#:</abbr>&nbsp;&nbsp;"+data.sellerDetails[i].sellerContactNumber
		                +"</address>"
		                +"</div>"
		                +"</div>"
		                +"</div>"
		                +"</div>"
		                +"</div>"
					}
					
					$("#sellerDiv").html(abc);
				}
			},
			error : function(e) {
				alert("Error");
				swal({
					  title: 'Error!',
					  text: 'Seller Details Not Fetched Successfully!!!',
					  type: 'error',
					  confirmButtonText :"OK",
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});

			}
	});
	} 
	</script>
	<%@ include file="admin-includeFooter.jsp"%>
	</body>
	</html>