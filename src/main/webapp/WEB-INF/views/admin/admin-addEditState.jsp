<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | State</title>

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

	<!--Side menu and right menu -->

	<!-- main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<h2>Add State</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
			
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>State Details</h2>
						</div>
						<div class="body">
						<form id="stateForm" method="post">
							<div class="row clearfix">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="stateName"
												id="stateName" placeholder="State Name">
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<label for="comment">State Description</label>
										<textarea class="form-control textarea-add" rows="5"
											name="stateDescription" id="stateDescription"></textarea>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-xs-12">
									<input type="hidden" name="editStateId" id="editStateId" value="0">
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
							<h2>All Listed States</h2>
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
								class="table table-bordered table-striped table-hover js-basic-example dataTable" id ="stateTable">
								<thead>
									<tr>
										<th class="text-center">Sl.No</th>
										<th class="text-center">State Id</th>
										<th class="text-center">State Name</th>
										<th class="text-center">State Description</th>
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
			fetchAllStates();
		});	
	
		function fetchAllStates(){
			$.ajax({
				type : "GET",
				url : "admin-fetchAllStates",
				data : "",
				processData : false,
				contentType : "application/json",
				success : function(data) {
						if(data.status){
							$("#stateTable > tbody ").html("");
							var abc ="";
							for(var i=0; i<data.listAllStates.length; i++){
								var stateDescription;
								alert(data.listAllStates[i].stateDescription);
								if(data.listAllStates[i].stateDescription === ""){
									stateDescription = "---";
								}else{
									stateDescription = data.listAllStates[i].stateDescription;
								}
								abc = abc +"<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
								+"<td class =\"text-center\">"+data.listAllStates[i].id+"</td>"
								+"<td class =\"text-center\">"+data.listAllStates[i].stateName+"</td>"
								+"<td class =\"text-center\">"+stateDescription+"</td>"
								+"<td class =\"text-center\"><a href=\"#\" onclick=\"editStateById('"+data.listAllStates[i].id+"')\" title=\"Edit\"><i class=\"fa fa-pencil-square-o  editIcon\" aria-hidden=\"true\"></i></a><a href=\"#\" title=\"Delete\"><i class=\"material-icons deleteIcon\" style=\"margin-top: -9%;\">delete_sweep</i> <span class=\"icon-name\"></span></a></td></tr>"
							}
							$("#stateTable > tbody ").html(abc);
						}

				},
				error : function(e) {
					alert("Error");
					swal({
						  title: 'Error!',
						  text: 'State Not Fetched Successfully!!!',
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
			
			if($("#stateName").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter State Name!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else{
				var job = {};
				job["editStateId"] =$("#editStateId").val();
				job["stateName"] = $("#stateName").val();
				job["stateDescription"] = $("#stateDescription").val();
				$("#submit").prop("disabled", true);
				alert(JSON.stringify(job));
				$.ajax({
				type : "POST",
				url : "admin-addEditState",
				data : JSON.stringify(job),
				processData : false,
				contentType : "application/json",
				success : function(data) {
						swal({
							  title: 'Success!',
							  text: 'State Successfully Inserted!!!',
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
						  text: 'State Not Inserted Successfully!!!',
						  type: 'error',
						  confirmButtonText :"OK",
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
					$("#submit").prop("disabled", false);

				}, complete : function(){
					$("#stateName").val("");
					$("#stateDescription").val("");
					$("#editStateId").val("0");
					fetchAllStates();
				}
		}); 
				
			}
		});
	
		function editStateById(stateId){
			$.ajax({
				type : "GET",
				url : "admin-fetchStateById?id="+stateId,
				data : "",
				processData : false,
				contentType : "application/json",
				success : function(data) {
						if(data.status){
							$("#stateName").val(data.state.stateName);
							if(data.state.stateDescription !== ""){
								$("#stateDescription").val(data.state.stateDescription);
							}
							$("#editStateId").val(stateId);
						}

				},
				error : function(e) {
					alert("Error");
					swal({
						  title: 'Error!',
						  text: 'State By Id Not Fetched Successfully!!!',
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