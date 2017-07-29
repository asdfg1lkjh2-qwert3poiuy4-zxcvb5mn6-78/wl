<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Photographer</title>
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert2.css">
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
							<ul class="header-dropdown m-r--5">
								<li class="dropdown"><a href="javascript:void(0);"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-haspopup="true" aria-expanded="false"> <i
										class="material-icons">more_vert</i>
								</a>
									<ul class="dropdown-menu pull-right">
										<li><a href="javascript:void(0);">Action</a></li>
										<li><a href="javascript:void(0);">Another action</a></li>
										<li><a href="javascript:void(0);">Something else here</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="body">
							<table
								class="table table-bordered table-striped table-hover js-basic-example dataTable" id="photographyTable">
								<thead>
									<tr>
										<th class="text-center">Sl.No</th>
										<th class="text-center">Id</th>
										<th class="text-center">Name</th>
										<th class="text-center">Photo Type</th>
										<th class="text-center">Occasion</th>
										<th class="text-center">Pricing</th>
										<th class="text-center">Adv. Payment Percent</th>
										<th class="text-center">Availability</th>
										<th class="text-center">Freebie</th>
										<th class="text-center">Discount</th>
										<th class="text-center">isActive</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>MBA</td>
										<td>Lorem Ipsum is simply dummy text of the printing</td>
										<td>info@gamil.com</td>
										<td>+123 456 7890</td>
										<td>Airi Satou</td>
									</tr>
									<tr>
										<td>2</td>
										<td>MBA</td>
										<td>Lorem Ipsum is simply dummy text of the printing</td>
										<td>info@gamil.com</td>
										<td>+123 456 7890</td>
										<td>Airi Satou</td>
									</tr>
									<tr>
										<td>3</td>
										<td>MBA</td>
										<td>Lorem Ipsum is simply dummy text of the printing</td>
										<td>info@gamil.com</td>
										<td>+123 456 7890</td>
										<td>Airi Satou</td>
									</tr>
									<tr>
										<td>4</td>
										<td>MBA</td>
										<td>Lorem Ipsum is simply dummy text of the printing</td>
										<td>info@gamil.com</td>
										<td>+123 456 7890</td>
										<td>Airi Satou</td>
									</tr>
									<tr>
										<td>5</td>
										<td>MBA</td>
										<td>Lorem Ipsum is simply dummy text of the printing</td>
										<td>info@gamil.com</td>
										<td>+123 456 7890</td>
										<td>Airi Satou</td>
									</tr>
									<tr>
										<td>6</td>
										<td>M.COM</td>
										<td>Lorem Ipsum is simply dummy text of the printing</td>
										<td>info@gamil.com</td>
										<td>+123 456 7890</td>
										<td>Airi Satou</td>
									</tr>
									<tr>
										<td>7</td>
										<td>MBA</td>
										<td>Lorem Ipsum is simply dummy text of the printing</td>
										<td>info@gamil.com</td>
										<td>+123 456 7890</td>
										<td>Airi Satou</td>
									</tr>
									<tr>
										<td>8</td>
										<td>B.COM</td>
										<td>Lorem Ipsum is simply dummy text of the printing</td>
										<td>info@gamil.com</td>
										<td>+123 456 7890</td>
										<td>Airi Satou</td>
									</tr>
									<tr>
										<td>9</td>
										<td>MBA</td>
										<td>Lorem Ipsum is simply dummy text of the printing</td>
										<td>info@gamil.com</td>
										<td>+123 456 7890</td>
										<td>Airi Satou</td>
									</tr>
									<tr>
										<td>10</td>
										<td>BBA</td>
										<td>Lorem Ipsum is simply dummy text of the printing</td>
										<td>info@gamil.com</td>
										<td>+123 456 7890</td>
										<td>Airi Satou</td>
									</tr>
									<tr>
										<td>11</td>
										<td>MBA</td>
										<td>Lorem Ipsum is simply dummy text of the printing</td>
										<td>info@gamil.com</td>
										<td>+123 456 7890</td>
										<td>Airi Satou</td>
									</tr>
									<tr>
										<td>12</td>
										<td>MCA</td>
										<td>Lorem Ipsum is simply dummy text of the printing</td>
										<td>info@gamil.com</td>
										<td>+123 456 7890</td>
										<td>Airi Satou</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
		</div>
	</section>
	<div class="color-bg"></div>

	<!-- Dropzone Plugin Js  -->
	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script src="resources/js/sweetalert2.min.js"></script>
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
	<script type="text/javascript">
	$(document).ready(function(){
		fetchAllPhotographyProducts();
	});
	
	function fetchAllPhotographyProducts(){
		$.ajax({
			type : "GET",
			url : "admin-fetchAllPhotographyProducts",
			data : "",
			processData : false,
			contentType :"application/json",
			success : function(data) {
				if(data.status){
					$("#photographyTable > tbody").html("");
					var abc ="";
					for(var i = 0; i< data.sellerDetails.length; i++){
						var active;
						if(data.sellerPhotography[i].active){
							active = "Yes";
						}else{
							active = "No";
						}
						abc = abc +"<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
						+"<td class=\"text-center\">"+data.sellerPhotography[i].id+"</td>"
						+"<td class=\"text-center\">"+data.sellerPhotography[i].productName</td>"
						+"<td class=\"text-center\">"+data.sellerPhotography[i].photographyType.typeName+"</td>"
						+"<td class=\"text-center\">"+data.sellerPhotography[i].occasion+"</td>"
						+"<td class=\"text-center\">"+price+"</td>"
						+"<td class=\"text-center\">"+data.sellerPhotography[i].advancePaymentPercentage+"</td>"
						+"<td class=\"text-center\">"+data.sellerPhotography[i].freebie+"</td>"
						+"<td class=\"text-center\">"+discount+"</td>"
						+"<td class=\"text-center\">"+active+"</td>"
						+"<td class=\"text-center\"><a href=\"#\">Edit</a><a href=\"\">Y</a></td></tr>"
					}
					$("#photographyTable > tbody").html(abc);
				}
			},
			error : function(e) {
				alert("Error");
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