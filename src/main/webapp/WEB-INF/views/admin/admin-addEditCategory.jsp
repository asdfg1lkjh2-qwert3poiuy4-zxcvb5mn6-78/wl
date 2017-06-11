<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Category</title>
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
									<div class="header marginb15 margin-bottom10">
										<h2>Category Icon</h2>
									</div>
									<div
										class="col-lg-12 col-md-12 col-sm-6 col-xs-6 _categoryIcon">
										<form action="#" id="singleUpload" class="dropzone"
											method="post" enctype="multipart/form-data"
											style="height: 10px;">
											<div class="dz-message" style="height: 10px;">
												<div class="drag-icon-cph">
													<i class="material-icons">touch_app</i>
												</div>
												<h3>Drop files here or click to upload.</h3>
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
				</div>
			</div>
		</div>
	</section>

	<div class="color-bg"></div>

	<!-- Dropzone Plugin Js  -->

	<!--jquery-2.1.3.min Library Js -->

	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script src="resources/js/dropzone.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			alert("Hello");
		});
		var file;
		var file1;
		Dropzone.options.singleUpload = {
			url : "singleUpload",
			init : function() {
				this.on("success", function(file, response) {
					classpath = this.element.classList;
				});
			},
			renameFilename : function(fileName) {
				var classpath = fileName;
				classpath = classpath.split("_");
				file = classpath[0];
				classpath = classpath[2];
				classpath = $("form." + "_" + classpath).parent().attr("class");
				classpath = classpath.split("_");
				classpath = classpath[1];
				return "Category" + "_" + classpath + "_" + file;

			}
		};
		$("#submit").click(function() {
			if (file !== undefined) {

				var job = {};
				job["categoryName"] = $("#categoryName").val();
				job["categoryDescription"] = $("#categoryDescription").val();
				job["packageFor"] = $("#packageFor").val();
				job["registrationCharge"] = $("#registrationCharge").val();

				$.ajax({
					type : "POST",
					url : "admin-addEditCategoryAvailable",
					data : JSON.stringify(job),
					contentType : "application/json",
					processData : false,
					success : function(data) {
						alert(JSON.stringify(data));
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
	<%@ include file="admin-includeFooter.jsp"%>

</body>
</html>