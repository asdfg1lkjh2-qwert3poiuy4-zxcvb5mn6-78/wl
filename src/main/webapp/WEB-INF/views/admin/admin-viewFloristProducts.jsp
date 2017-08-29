<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Florist</title>
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css">
<%@ include file="admin-includeHeader.jsp"%>
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

	<!-- main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<h2>View Product Details</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="card">
				<div class="header">
					<h2>All Listed Products</h2>
				</div>
				<div class="body">
					<ul class="thumbnails" id ="productPageDiv">
					</ul>
				</div>
			</div>
		</div>
	</section>
	<div class="color-bg"></div>

	<!-- Dropzone Plugin Js  -->
	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script src="resources/js/sweetalert.min.js"></script>
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
	<script type="text/javascript">
	$(document).ready(function(){
		fetchAllProducts();
	});
	function fetchAllProducts(){
		$.ajax({
			type : "GET",
			url : "admin-fetchAllFlowerProductsById",
			data : "",
			processData : false,
			contentType :"application/json",
			success : function(data) {
				if(data.status){
					$("#productPageDiv").html("");
					var abc ="";
					for(var i = 0; i< data.listAllFlower.length; i++){
						alert(data.listAllFlower[i].dpUrl)
						var url = "<img src=\"getImage?id="+data.listAllFlower[i].dpUrl+ "\" class=\"img-responsive\"/>"
						var price = data.listProductPricings[i].price;
						if(price === 0){
							price = "Price Unavailable";
						} else{
							price = "<i class=\"fa fa-inr\" aria-hidden=\"true\">"+price+"</i>";
						} 
						abc = abc + "<div class=\"col-md-4 col-sm-12 col-xs-12\">"
						+"<div class=\"thumbnail\">"
						+url
						+"<div class=\"caption\">"
						+"<h3>"+data.listAllFlower[i].name+"</h3>"
						+"<p>"+price+"</p>" 
						+"<p align=\"center\">"
						+"<a href=\"admin-addEditFlower?id="+data.listAllFlower[i].id+"\"class=\"btn btn-block gradient-right waves-effect\">View Product</a>"
						+"</p>"
						+"</div>"
					    +"</div>"
				        +"</div>";
					}
					$("#productPageDiv").html(abc);
				}
			},
			error : function(e) {
				 swal({
					  title: 'Error!',
					  text: 'Product Details Not Fetched Successfully!!!',
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