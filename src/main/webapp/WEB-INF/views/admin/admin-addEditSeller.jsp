<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Seller</title>
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
				<h2>Add Seller</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>Basic Information</h2>
						</div>
						<div class="body">
							<div class="row clearfix">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
												placeholder="Seller First Name">
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
												placeholder="Seller Last Name">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
												placeholder="Seller Contact Number">
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
												placeholder="Seller Alternate Number">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-12">
									<div class="form-group">
										<div class="form-line">
											<textarea rows="4" class="form-control no-resize"
												placeholder="Seller Present Address"></textarea>
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-12 col-xs-12">
									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" value=""> <span
												class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
												Same as present address...
											</label>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="form-group margin-top0">
										<div class="form-line">
											<textarea rows="4" class="form-control no-resize"
												placeholder="Seller Present Address"></textarea>
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-4 col-xs-12">
									<div class="form-group drop-custum">
										<select class="form-control show-tick">
											<option value="">-- State --</option>
											<option value="10">XXX</option>
											<option value="20">XXXX</option>
										</select>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group drop-custum">
										<select class="form-control show-tick">
											<option value="">-- City --</option>
											<option value="10">XXX</option>
											<option value="20">XXXX</option>
										</select>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group drop-custum">
										<select class="form-control show-tick">
											<option value="">-- Zip Code --</option>
											<option value="10">XXX</option>
											<option value="20">XXXX</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="datepicker form-control"
												placeholder="Date of Birth">
										</div>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group drop-custum">
										<select class="form-control show-tick">
											<option value="">-- Gender --</option>
											<option value="10">XXX</option>
											<option value="20">XXXX</option>
										</select>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
												placeholder="Seller Company Name">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix"></div>
							<div class="header margin-left-right-zero marginb15">
								<h2>Document's Provided</h2>
							</div>
							<div class="row clearfix">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group drop-custum">
										<select class="form-control show-tick">
											<option value="">-- Address Proof --</option>
											<option value="10">XXX</option>
											<option value="20">XXXX</option>
										</select>
									</div>
								</div>
								<div class="col-sm-6 col-xs-12">
									<div class="form-group drop-custum">
										<select class="form-control show-tick">
											<option value="">-- Id Proof --</option>
											<option value="10">XXX</option>
											<option value="20">XXXX</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 _addressProof">
									<form action="#" id="singleUpload" class="dropzone"
										method="post" enctype="multipart/form-data">
										<div class="dz-message">
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
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 _idProof">
									<form action="#" id="singleUpload" class="dropzone"
										method="post" enctype="multipart/form-data">
										<div class="dz-message">
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
							<div class="row clearfix">
								<div class="header marginb15 margin-bottom10">
									<h2>Seller Image</h2>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">

									<form action="#" id="doubleUpload" class="dropzone"
										method="post" enctype="multipart/form-data">
										<div class="dz-message">
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
							<div class="row clearfix">
								<div class="header marginb15">
									<h2>Our Service Available</h2>
								</div>
								<div class="col-sm-12 col-xs-12">
									<div
										class="col-xs-12 col-sm-12 col-md-6 div-center hundred-width padding-left-right">
										<select name="langOpt2[]" class="selectHeader" multiple
											id="langOpt2">
											<option value="Flower">Flower</option>
											<option value="Grocery">Grocery</option>
											<option value="Priest">Priest</option>
											<option value="Wedding">Wedding Cards</option>
											<option value="Transport">Transport</option>
											<option value="Photographer">Photographer</option>
											<option value="Cook">Cook</option>
											<option value="Catering">Catering</option>
										</select>
									</div>

									<div class="col-xs-12 col-sm-12 col-md-6 privew-link-panel">
										<div class="quick-price-link">
											<span><i class="fa fa-inr"></i>Lorem Ipsum</span> <label>Lorem
												Ipsum is</label>
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="header marginb15 margin-bottom10">
									<div class="checkbox header-add">
										<label> <input type="checkbox" value=""> <span
											class="cr" id="bank-check"> <i
												class="cr-icon glyphicon glyphicon-ok"></i>
										</span> Add Bank Account Details
										</label>
									</div>
								</div>
							</div>
							<div id="open-bank-account">
								<div class="row clearfix">
									<div class="col-sm-6 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="form-control"
													placeholder="Account Holder Name">
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="form-control"
													placeholder="Account Number">
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-sm-6 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control"
													placeholder="IFSC Code">
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control"
													placeholder="Branch Code">
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-sm-6 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control"
													placeholder="Branch Name">
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div class="form-group"></div>
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

	<script src="resources/js/dropzone.js"></script>
	<!-- Dropzone Plugin Js  -->
	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<!--jquery-2.1.3.min Library Js -->
	<script type="text/javascript">
		$(document).ready(function() {
			alert("Hello");

		});

		Dropzone.options.singleUpload = {
			url : "testController",
			init : function() {
				this.on("success", function(file, response) {
					classpath= this.element.classList;
				});
			},
			renameFilename :function(fileName){
				var classpath = fileName;
				classpath = classpath.split("_");
				var file  = classpath[0];
				classpath = classpath[2];
				classpath = $("form."+"_"+classpath).parent().attr("class");
				classpath = classpath.split("_");
				classpath = classpath[1];
				return "Seller"+"_"+classpath+"_"+file;  
				return fileName;
			}
		};
		
	</script>
	<%@ include file="admin-includeFooter.jsp"%>

</body>
</html>