<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Category</title>

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
				<h2>Add Category</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>Category Details</h2>
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
										class="col-lg-12 col-md-12 col-sm-6 col-xs-6 _categoryIcon">
										<form action="#" id="singleUpload" class="dropzone"
											method="post" enctype="multipart/form-data">
											<div class="dz-message catdzmsg">
												<div class="drag-icon-cph">
													<i class="material-icons catdzicn">touch_app</i>
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
	<script src="resources/js/sweetalert2.min.js"></script>

	<script type="text/javascript">
	
		var files;       //For renaming the file with PageName and LabelName for the file
		var file1="";	 //For storing the unwanted files being uploaded in the server and not in the database
		var dateTime = new Date().getTime();    //For getting the current time in milli seconds
		
		//Upload and renaming the files being uploaded in dropzone.js
		Dropzone.options.singleUpload = {
			url : "singleUpload",
			init : function() {
				this.on("success", function(file, response) {
					if(file1 === ""){
						file1 = dateTime+file.name;
					}else{
						file1 = file1+","+dateTime+file.name;
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
				return "Category" + "_" + classpath + "_" + dateTime+files;

			}
		};
		
		//For submit
		$("#submit").click(function() {
			if (files !== undefined) {
				if($("#categoryName").val() === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Category Name!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if($("#packageFor").val() === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Package For The Category!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if($("#registrationCharge").val() === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Registration Charge!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if($("#categoryDescription").val() === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Category Description!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else{
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
						swal({
							  title: 'Success!',
							  text: 'Category Successfully Inserted!!!',
							  type: 'success',
							  showConfirmButton :false,
							  allowEscapeKey:true,
							  timer:3000,
							  animation:true
							});
					},
					error : function(e) {
						alert("Error");
						swal({
							  title: 'Error!',
							  text: 'Category Not Inserted Successfully!!!',
							  type: 'error',
							  confirmButtonText :"OK",
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
					},complete : function (){
						
						//For removing all data from textboxes after successful insertion
						$("#categoryName").val("");
						$("#categoryDescription").val("");
						$("#packageFor").val("");
						$("#registrationCharge").val("");
						files = "";   
						file1 = "";
						dateTime ="";
						dateTime = new Date().getTime();    //Creating a new date time for another file to upload
						
						//Remove the thumbnails after each insertion being completed from dropzone.js
						$('.dropzone')[0].dropzone.files.forEach(function(file) { 
							  file.previewElement.remove(); 
							});

							$('.dropzone').removeClass('dz-started');
					}
				});
			  }
			} else {
				swal({
					  title: 'Warning!',
					  text: 'Please Upload Category Icon!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}
		});
	</script>
	<%@ include file="admin-includeFooter.jsp"%>

</body>
</html>