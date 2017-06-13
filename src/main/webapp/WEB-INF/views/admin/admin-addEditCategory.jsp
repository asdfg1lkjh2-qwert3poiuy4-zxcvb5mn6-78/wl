<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Category</title>
<%@ include file="admin-includeHeader.jsp"%>
<!-- <link href="resources/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet"> -->
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
				<h2>Add Category</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>Add Category</h2>
						</div>
						<div class="body">
							<div class="row clearfix">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="categoryName"
												id="categoryName" placeholder="Category Name">
										</div>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12 padding-left">
									<div class="form-group drop-custum">
										<select class="form-control show-tick" name="packageFor"
											id="packageFor">
											<option value="">-- Package For --</option>
											<option value="HalfYearly">Half Yearly</option>
											<option value="Yearly">Yearly</option>
										</select>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
												name="registrationCharge" id="registrationCharge"
												placeholder="Registration Charge">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<label for="comment">Category Description</label>
										<textarea class="form-control textarea-add" rows="5"
											name="categoryDescription" id="categoryDescription"></textarea>
									</div>
								</div>
								<div class="col-sm-6 col-xs-12">
									<div class="form-group catgroup">
										<label class="catgroup-label">Category Icon</label>
									</div>
									<div
										class="col-lg-12 col-md-12 col-sm-6 col-xs-6 _categoryIcon drpimgpdng">
										<form action="#" id="singleUpload"
											class="dropzone new-drphieght" method="post"
											enctype="multipart/form-data" style="height: 10px;">
											<div class="dz-message catdzmsg" style="height: 10px;">
												<div class="drag-icon-cph">
													<i class="material-icons catdzicn">touch_app</i>
												</div>
												<h3 class="cattitle">Drop files here or click to
													upload.</h3>
												<em>(This is just a demo dropzone. Selected files are <strong>not</strong>
													actually uploaded.)
												</em>
											</div>
											<div class="fallback">
												<input name="file" type="file" multiple />
											</div>
										</form>
									</div>
								</div>
							</div>

							<div class="row clearfix">
								<div class="col-xs-12">
									<button type="submit" class="btn btn-raised gradient-right"
										id="submit">Submit</button>
									<button type="submit" class="btn btn-raised gradient-left">Cancel</button>
								</div>
							</div>
						</div>
					</div>

					<!-- Data Table Start -->

					<div class="card">
						<div class="header">
							<h2>All Departments</h2>
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
								class="table table-bordered table-striped table-hover js-basic-example dataTable">
								<thead>
									<tr>
										<th>no</th>
										<th>Dept. Name</th>
										<th>Brief</th>
										<th>Email</th>
										<th>Phone</th>
										<th>No. of Students</th>
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

					<!-- Data Table End -->

				</div>
			</div>
		</div>
	</section>

	<div class="color-bg"></div>

	<!-- Dropzone Plugin Js  -->

	<!--jquery-2.1.3.min Library Js -->

	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script src="resources/js/dropzone.js"></script>

<!-- 	<script src="resources/js/libscripts.bundle.js"></script> Lib Scripts Plugin Js 
	<script src="resources/js/vendorscripts.bundle.js"></script> Lib Scripts Plugin Js
	 
	<script src="resources/js/jquery-datatable/jquery.dataTables.js"></script>
	<script
		src="resources/js/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
	<script
		src="resources/js/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
	<script
		src="resources/js/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
	<script
		src="resources/js/jquery-datatable/extensions/export/jszip.min.js"></script>
	<script
		src="resources/js/jquery-datatable/extensions/export/pdfmake.min.js"></script>
	<script
		src="resources/js/jquery-datatable/extensions/export/vfs_fonts.js"></script>
	<script
		src="resources/js/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
	<script
		src="resources/js/jquery-datatable/extensions/export/buttons.print.min.js"></script>
		<script src="resources/js/mainscripts.bundle.js"></script>Custom Js 
<script src="resources/js/jquery.dataTables.js"></script>

<script src="resources/js/index.js"></script> -->
	

	<script type="text/javascript">
		$(document).ready(function() {
			alert("Hello");

		});
		var files;
		var file1 = "";
		var dateTime = new Date().getTime();
		Dropzone.options.singleUpload = {
			url : "singleUpload",
			init : function() {
				this.on("success", function(file, response) {
					if (file1 === "") {
						file1 = dateTime + file.name;
					} else {
						file1 = file1 + "," + dateTime + file.name;
					}
					this.element.classList;
				});
			},
			renameFilename : function(fileName) {
				var classpath = fileName;
				classpath = classpath.split("_");
				files = classpath[0];
				classpath = classpath[2];
				classpath = $("form." + "_" + classpath).parent().attr("class");
				classpath = classpath.split("_");
				classpath = classpath[1];
				return "Category" + "_" + classpath + "_" + dateTime + files;

			}
		};
		$("#submit").click(function() {
			if (files !== undefined) {
				alert(file1);
				var job = {};
				job["categoryName"] = $("#categoryName").val();
				job["categoryDescription"] = $("#categoryDescription").val();
				job["packageFor"] = $("#packageFor").val();
				job["registrationCharge"] = $("#registrationCharge").val();
				job["allFiles"] = file1;
				$.ajax({
					type : "POST",
					url : "admin-addEditCategoryAvailable",
					data : JSON.stringify(job),
					contentType : "application/json",
					processData : false,
					success : function(data) {
						alert(JSON.stringify(data));
						dateTime = "";
						dateTime = new Date().getTime();
						alert("Success");
					},
					error : function(e) {
						alert("Error");
					}
				});

			} else {
				alert("Please choose upload an icon to submit");
			}
		});
	</script>
	<%@include file="admin-includeFooter.jsp" %>
</body>
</html>