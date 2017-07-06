<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Flower Type</title>

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
	<%@ include file="admin-includeRightBar.jsp"%>

	<!-- main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<h2>Add Flower Type</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>Flower Type Details</h2>
						</div>
						<div class="body">
						<form id="flowerTypeForm" method="post">
							<div class="row clearfix">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="flowerTypeName"
												id="flowerTypeName" placeholder="Flower Type">
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<label for="comment">Description</label>
										<textarea class="form-control textarea-add" rows="5"
											name="flowerTypeDescription" id="flowerTypeDescription"></textarea>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-xs-12">
									<input type="hidden" name="editFlowerTypeId" id="editFlowerTypeId" value="0">
									<button type="submit" class="btn btn-raised gradient-right"
										id="submit">Submit</button>
									<button type="submit" class="btn btn-raised gradient-left">Cancel</button>
								</div>
							</div>
							</form>
						</div>
					</div>
					<!-- Data Table Start -->

					<div class="card">
						<div class="header">
							<h2>All Listed Flower Type</h2>
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
								class="table table-bordered table-striped table-hover js-basic-example dataTable" id ="flowerTypeTable">
								<thead>
									<tr>
										<th class="text-center">Sl.No</th>
										<th class="text-center">Flower Type Id</th>
										<th class="text-center">Flower Type Name</th>
										<th class="text-center">Flower Type Description</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>

					<!-- Data Table End -->
					
				</div>
			</div>
		</div>
	</section>

	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script src="resources/js/sweetalert2.min.js"></script>
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
	
	<script type="text/javascript">
		$(document).ready(function(){
			fetchAllFlowerType();
		});	
	
		function fetchAllFlowerType(){
			$.ajax({
				type : "GET",
				url : "admin-fetchAllFlowerType",
				data : "",
				processData : false,
				contentType : "application/json",
				success : function(data) {
						if(data.status){
							$("#flowerTypeTable > tbody ").html("");
							var abc ="";
							for(var i=0; i<data.listAllFlowerType.length; i++){
								var flowerTypeDescription;
								alert(data.listAllFlowerType[i].description);
								if(data.listAllFlowerType[i].description === ""){
									description = "---";
								}else{
									description = data.listAllFlowerType[i].description;
								}
								abc = abc +"<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
								+"<td class =\"text-center\">"+data.listAllFlowerType[i].id+"</td>"
								+"<td class =\"text-center\">"+data.listAllFlowerType[i].name+"</td>"
								+"<td class =\"text-center\">"+description+"</td>"
								+"<td class =\"text-center\"><a href=\"#\" onclick=\"editFlowerTypeById('"+data.listAllFlowerType[i].id+"')\">Edit</a><a href=\"#\">Y</a></td></tr>"
							}
							$("#flowerTypeTable > tbody ").html(abc);
						}

				},
				error : function(e) {
					alert("Error");
					swal({
						  title: 'Error!',
						  text: 'Flower Type Not Fetched Successfully!!!',
						  type: 'error',
						  confirmButtonText :"OK",
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
					
				}
			}); 
		}
		
		$("#submit").click(function (event){
			
			event.preventDefault();
			
			if($("#flowerTypeName").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Flower Type!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else{
				var job = {};
				job["editId"] =$("#editFlowerTypeId").val();
				job["name"] = $("#flowerTypeName").val();
				job["description"] = $("#flowerTypeDescription").val();
				alert(JSON.stringify(job));
				$("#submit").prop("disabled", true);
				$.ajax({
				type : "POST",
				url : "admin-addEditFlowerType",
				data : JSON.stringify(job),
				processData : false,
				contentType : "application/json",
				success : function(data) {
						swal({
							  title: 'Success!',
							  text: 'Flower Type Successfully Inserted!!!',
							  type: 'success',
							  showConfirmButton :false,
							  allowEscapeKey:true,
							  timer:3000,
							  animation:true
							});
					
					
					$("#submit").prop("disabled", false);

				},
				error : function(e) {
					alert("Error");
					swal({
						  title: 'Error!',
						  text: 'Flower Type Not Inserted Successfully!!!',
						  type: 'error',
						  confirmButtonText :"OK",
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
					$("#submit").prop("disabled", false);

				}, complete : function(){
					$("#flowerTypeName").val("");
					$("#flowerTypeDescription").val("");
					$("#editFlowerTypeId").val("0");
					fetchAllFlowerType();
				}
		}); 
				
			}
		});
	
		function editFlowerTypeById(flowerTypeId){
			$.ajax({
				type : "GET",
				url : "admin-fetchFlowerTypeById?id="+flowerTypeId,
				data : "",
				processData : false,
				contentType : "application/json",
				success : function(data) {
						if(data.status){
							$("#flowerTypeName").val(data.flowerType.name);
							if(data.flowerType.description !== ""){
								$("#flowerTypeDescription").val(data.flowerType.description);
							}
							$("#editFlowerTypeId").val(flowerTypeId);
						}

				},
				error : function(e) {
					alert("Error");
					swal({
						  title: 'Error!',
						  text: 'Flower Type By Id Not Fetched Successfully!!!',
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
	
	
	<div class="color-bg"></div>
	<%@ include file="admin-includeFooter.jsp"%>