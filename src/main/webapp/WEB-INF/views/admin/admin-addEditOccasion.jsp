<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Add Occasion</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/sweetalert.css">
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

	<%@ include file="admin-includeRightBar.jsp"%>

	<!-- main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<h2>Add Occasion</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>Occasion Information</h2>
						</div>
						<div class="body">
							<div class="row clearfix">
								<div class="col-sm-12 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
											name="occasionName" id="occasionName"
												placeholder="Occasion Name">
										</div>
									</div>
								</div>
							</div>

							<div class="row clearfix">
								<div class="col-sm-8 col-xs-12">
									<div class="form-group">
										<label for="comment">Occasion Description</label>
										<textarea class="form-control textarea-add" rows="5"
										name="occasionDescription" id="occasionDescription"></textarea>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<!-- <div class="col-sm-12 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control"
													placeholder="Discount">
											</div>
										</div>
									</div> -->
									<div id="statusDiv">
										<div class="form-group drop-custum">
											<select class="form-control show-tick">
												<option value="true">Active</option>
												<option value="false">Inactive</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-xs-12">
								<input type="hidden" name="editFlowerTypeId" id="editOccasionId" value="0"> 
								<input type="hidden" name="statusClick" id="statusClick" value="">
									<button type="submit" class="btn btn-raised gradient-right" id="submit">Submit</button>
									<button type="button" class="btn btn-raised gradient-left" onclick="clearForm()">Clear</button>
								</div>
							</div>
						</div>
					</div>
					
					<!-- Data Table Start -->
					<div class="card">
						<div class="header">
							<h2>All Listed Occasion</h2>
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
								class="table table-bordered table-striped table-hover js-basic-example dataTable"
								id="occasionTable">
								<thead>
									<tr>
										<th class="text-center">Sl.No</th>
										<th class="text-center">Occasion Id</th>
										<th class="text-center">Occasion Name</th>
										<th class="text-center">Occasion Description</th>
										<th class="text-center">Occasion Status</th>
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
	<script src="resources/js/sweetalert.min.js"></script>
	<%@ include file="admin-includeDynamicSideNavBarFromSession.jsp"%>

	<!-- Jquery Js -->
	
	<script type="text/javascript">
		$(document).ready(function() {
			fetchAllOccasion();
		});

		function fetchAllOccasion() {
			$.ajax({
				type : "GET",
				url : "admin-fetchAllOccasion",
				data : "",
				processData : false,
				contentType : "application/json",
				success : function(data) {
					//alert(JSON.stringify(data));
					if (data.status) {
						$("#occasionTable > tbody ").html("");
						var abc = "";
						for (var i = 0; i < data.listAllOccasion.length; i++) {
							var occasionDescription;
							var status;
							//alert(data.listAllOccasion[i].status);
							if (data.listAllOccasion[i].description === "") {
								description = "---";
							} else {
								description = data.listAllOccasion[i].description;
							}
							if (data.listAllOccasion[i].status)
								status = "Active";
							else
								status = "Inactive";

							abc = abc
									+ "<tr><td class=\"text-center\">"
									+ Number(Number(i) + Number(1))
									+ "</td>"
									+ "<td class =\"text-center\">"
									+ data.listAllOccasion[i].id
									+ "</td>"
									+ "<td class =\"text-center\">"
									+ data.listAllOccasion[i].name
									+ "</td>"
									+ "<td class =\"text-center\">"
									+ description
									+ "</td>"
									+ "<td class =\"text-center\">"
									+ status
									+ "</td>"
									+ "<td class =\"text-center\"><a href=\"#\" onclick=\"editOccasionById('"
									+ data.listAllOccasion[i].id
									+ "')\"title=\"Edit\"><i class=\"fa fa-pencil-square-o  editIcon\" aria-hidden=\"true\"></i></a><a href=\"#\" title=\"Delete\"><i class=\"material-icons deleteIcon\" style=\"margin-top:-13%;\">delete_sweep</i> <span class=\"icon-name\"></span></td></tr>"
						}
						$("#occasionTable > tbody ").html(abc);
					}

				},
				error : function(e) {
					//alert("Error");
					swal({
						title : 'Error!',
						text : 'Occasion Not Fetched Successfully!!!',
						type : 'error',
						confirmButtonText : "OK",
						allowEscapeKey : true,
						confirmButtonClass : "btn btn-raised gradient-right",
						animation : true
					});

				}
			});
		}

		$("#submit").click(
				function(event) {
					event.preventDefault();
					if ($("#occasionName").val() === "") {
						swal({
							title : 'Warning!',
							text : 'Please Enter Occasion Name!!!',
							type : 'warning',
							confirmButtonText : 'OK',
							allowEscapeKey : true,
							confirmButtonClass : "btn btn-raised gradient-right",
							animation : true
						});
					} else {
						var job = {};
						//alert($("#editOccasionId").val());
						job["editId"] = $("#editOccasionId").val();
						job["name"] = $("#occasionName").val();
						job["description"] = $("#occasionDescription").val();
						if ($("#statusClick").val() === "") {
							job["status"] = $("#statusDiv option:selected").val();
						} else {
							job["status"] = $("#statusClick").val();
						}
						//alert(JSON.stringify(job));
						$("#submit").prop("disabled", true);
						$.ajax({
							type : "POST",
							url : "admin-addEditOccasion",
							data : JSON.stringify(job),
							processData : false,
							contentType : "application/json",
							success : function(data) {
								swal({
									title : 'Success!',
									text : 'Occasion Successfully Inserted!!!',
									type : 'success',
									showConfirmButton : "OK",
									allowEscapeKey : true,
									timer : 2000,
									animation : true
								});

								$("#submit").prop("disabled",false);
							},

							error : function(e) {
								//alert("Error");
								swal({
									title : 'Error!',
									text : 'Occasion Not Inserted Successfully!!!',
									type : 'error',
									confirmButtonText : "OK",
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
								$("#submit").prop("disabled",false);

							},
							complete : function() {
								$("#occasionName").val("");
								$("#occasionDescription").val("");
								$("#statusClick").val("");
								$("#editOccasionId").val("0");

								fetchAllOccasion();
							}
						});
					}
				});

		function clearForm() {
			$("#occasionName").val("");
			$("#occasionDescription").val("");
			$("#statusClick").val("");
			$("#editOccasionId").val("0");
		}

		function editOccasionById(occasionId) {
			$.ajax({
				type : "GET",
				url : "admin-fetchOccasionById?id=" + occasionId,
				data : "",
				processData : false,
				contentType : "application/json",
				success : function(data) {
					if (data.status) {
						$("#occasionName").val(data.occasion.name);
						if (data.occasion.description !== "") {
							$("#occasionDescription").val(
									data.occasion.description);
						}
						$("#editOccasionId").val(occasionId);
						statusClick(data.occasion.status); 
					}

				},
				error : function(e) {
					//alert("Error");
					swal({
						title : 'Error!',
						text : 'Occasion By Id Not Fetched Successfully!!!',
						type : 'error',
						confirmButtonText : "OK",
						allowEscapeKey : true,
						confirmButtonClass : "btn btn-raised gradient-right",
						animation : true
					});

				}
			});
		}

		function statusClick(str) {
			$("#statusClick").val(str);
			var clicked;
			var title;
			$("#statusDiv").html("");
			if (str === true) {
				title = "Active";
				clicked = "<li data-original-index=\"1\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"statusClick("
						+ true
						+ ")\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						+ "<li data-original-index=\"2\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"statusClick("
						+ false
						+ ")\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
			} else {
				title = "Inactive";
				clicked = "<li data-original-index=\"1\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"statusClick("
						+ true
						+ ")\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						+ "<li data-original-index=\"2\" class=\"selected\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"statusClick("
						+ false
						+ ")\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
			}
			var abc = "<div class=\"form-group drop-custum\">"
					+ "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title="+title+"><span class=\"filter-option pull-left\">"
					+ title
					+ "</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
					+ "<ul class=\"dropdown-menu inner\" role=\"menu\">"
					+ clicked + "</div>"
			$("#statusDiv").html(abc);

		}
	</script>

	<div class="color-bg"></div>
	<%@ include file="admin-includeFooter.jsp"%>

</body>
</html>