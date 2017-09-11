<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Add Hall</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/sweetalert.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap-colorpicker.min.css">

<%@ include file="admin-includeHeader.jsp"%>
</head>
<body class="theme-blush">
	<!-- Test Modal -->
	<div id="dpModals"></div>
	<div id="allModals"></div>
	<!-- Test 3 Modal -->
	<div class="modal fade" id="showPriceModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content row priceShow">
				<div class="col-md-12 col-xs-12 col-sm-12 card">
					<div class="header">
						<h2>All Listed Prices</h2>
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
							id="priceTable">
							<thead>
								<tr>
									<th class="text-center">Sl.No</th>
									<th class="text-center">Start Date</th>
									<th class="text-center">End Date</th>
									<th class="text-center">Price</th>
									<th class="text-center">Status</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>

				<div class="row">
					<div class="modal-footer col-md-12 col-sm-12 col-xs-12 priceFooter">
						<button type="button" class="btn btn-secondary btn-raised"
							data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Test11 Modal -->
	<div class="modal fade" id="showDiscountModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content row priceShow">
				<div class="col-md-12 col-xs-12 col-sm-12 card">
					<div class="header">
						<h2>All Listed Discounts</h2>
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
							id="discountTable">
							<thead>
								<tr>
									<th class="text-center">Sl.No</th>
									<th class="text-center">Start Date</th>
									<th class="text-center">End Date</th>
									<th class="text-center">Discount</th>
									<th class="text-center">Status</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>

				<div class="row">
					<div class="modal-footer col-md-12 col-sm-12 col-xs-12 priceFooter">
						<button type="button" class="btn btn-secondary btn-raised"
							data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Test12 Modal -->
	<div class="modal fade" id="showFreeProductModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content row priceShow">
				<div class="col-md-12 col-xs-12 col-sm-12 card">
					<div class="header">
						<h2>All Listed Free Products</h2>
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
							id="freeProductTable">
							<thead>
								<tr>
									<th class="text-center">Sl.No</th>
									<th class="text-center">Start Date</th>
									<th class="text-center">End Date</th>
									<th class="text-center">Product Name</th>
									<th class="text-center">Qty</th>
									<th class="text-center">Status</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>

				<div class="row">
					<div class="modal-footer col-md-12 col-sm-12 col-xs-12 priceFooter">
						<button type="button" class="btn btn-secondary btn-raised"
							data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>
	</div>
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
				<h2>Add Hall</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>Hall Basic Information</h2>
						</div>
						<div class="body">
							<div class="row clearfix" id="productNameDiv">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="name" id="name"
												placeholder="Hall Name">
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerId"
												id="sellerId"
												value="${sessionScope.sellerDetailsSession.id}"
												placeholder="Seller ID" readonly="readonly">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<label for="comment">Hall Description</label>
										<textarea class="form-control textarea-add" rows="6"
											name="description" id="description"></textarea>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12">
									<div class="form-group div-center hundred-width"
										id="occasionDiv">
										<select class="form-control show-tick">
											<option value="">-- Occasion --</option>
										</select>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12">
									<div class="form-group drop-custum" id="hallTypeDiv">
										<select class="form-control show-tick">
											<option value="">--Hall Type--</option>
										</select>
									</div>
								</div>
							</div>
							<div class="header margin-left-right-zero marginb15">
								<h2>Hall Details</h2>
							</div>
							<div class="row clearfix">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<label for="comment">Freebie (if any)</label>
										<textarea class="form-control textarea-add" rows="6"
											name="freebie" id="freebie"></textarea>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12" id="availabilityDiv">
									<div class="form-group drop-custum">
										<select class="form-control show-tick" id="availability">
											<option value="">-- Availability --</option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</div>
								<div class="col-sm-2 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
												name="advancePaymentPercentage"
												id="advancePaymentPercentage"
												placeholder="Advance percentage">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix form-group">
								<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 _thumnailImage"
									id="displayDiv">
									<label for="comment" id="labelDisplayDiv">Hall Display
										Image</label>
									<div id="hallDisplayDiv">
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
								<div class="col-lg-8 col-md-6 col-sm-6 col-xs-12 _productImages"
									id="imagesDiv">
									<label for="comment" id="labelImagesDiv">Hall
										Description Images</label>
									<div id="hallImagesDiv">
										<form action="#" id="multipleUpload" class="dropzone"
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
							</div>
							<div class="header margin-left-right-zero marginb15">
								<div class="checkbox header-add">
									<label> <input type="checkbox" value=""
										id="freeProductsCheck"> <span class="cr"
										id="bank-check"> <i
											class="cr-icon glyphicon glyphicon-ok"></i>
									</span>Free Products(if any)
									</label>
								</div>
							</div>
							<div class="row clearfix">
								<div id="freeProductsDiv" class="hideDiv">
									<div class="col-sm-3 col-xs-12">
										<div class="form-group drop-custum freeProductClass"
											id="freeProductSelect">
											<select class="form-control show-tick" name="freeProduct"
												id="freeProduct">
												<option value="">-- Free Product --</option>
												<option value="10">XXX</option>
												<option value="20">XXXX</option>
											</select>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control"
													name="freeProductPieces" id="freeProductPieces"
													placeholder="Pieces">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="datepicker form-control"
													name="fromDateFreeProduct" id="fromDateFreeProduct"
													placeholder="From Date">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="datepicker form-control"
													name="toDateFreeProduct" id="toDateFreeProduct"
													placeholder="To Date">
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12">
										<div class="form-group">
											<!-- <button type="button" class="btn btn-raised gradient-right"
													id="plusbtnFreeDiv">Add</button> -->
											<button type="button" id="plusbtnFreeDiv"
												class="plusIconFreeDiv" title="Add Price">
												<img src="resources/images/icons8-Add-80.png"
													class="img-responsive">
											</button>
											<button type="button" id="clearPlusBtnFreeDiv"
												class="clearIconFreeDiv" title="Clear Dates">
												<img src="resources/images/icons8-Clear Symbol-80.png"
													class="img-responsive">
											</button>
											<button type="button" id="showFreeProducts"
												class="showIconFreeDiv hideDiv" title="Show Previous Prices"
												data-toggle="modal" data-target="#showFreeProductModal">
												<img src="resources/images/icons8-Show Property-100.png"
													class="img-responsive">
											</button>
											<!-- <button type="button" class="btn btn-raised gradient-right"
												id="showFreeProducts" data-toggle="modal" data-target="#showFreeProductModal">Show Frees</button> -->
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix hideDiv" id="freeProductsDiv1">
								<div class="col-sm-3 col-xs-12">
									<div class="form-group drop-custum freeProductClass"
										id="freeProductSelect1">
										<select class="form-control show-tick" name="freeProduct1"
											id="freeProduct1">
											<option value="">-- Free Product --</option>
											<option value="10">XXX</option>
											<option value="20">XXXX</option>
										</select>
									</div>
								</div>
								<div class="col-sm-1 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
												name="freeProductPieces1" id="freeProductPieces1"
												placeholder="Pieces">
										</div>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12">
									<div class="form-group mrgn-less-15">
										<div class="form-line">
											<input type="text" class="datepicker form-control"
												name="fromDateFreeProduct1" id="fromDateFreeProduct1"
												placeholder="From Date">
										</div>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12">
									<div class="form-group mrgn-less-15">
										<div class="form-line">
											<input type="text" class="datepicker form-control"
												name="toDateFreeProduct1" id="toDateFreeProduct1"
												placeholder="To Date">
										</div>
									</div>
								</div>
								<div class="col-sm-2 col-xs-12">
									<div class="form-group">
										<!-- <button type="button" class="btn btn-raised gradient-right"
												id="plusBtnFreeDiv1">Add</button>
												<button type="button" class="btn btn-raised gradient-right"
												id="removeBtnFreeDiv1">Add</button> -->

										<button type="button" id="plusBtnFreeDiv1"
											class="plusIconFreeDiv" title="Add Price">
											<img src="resources/images/icons8-Add-80.png"
												class="img-responsive">
										</button>
										<!-- <button type="button" class="btn btn-raised gradient-right"
													id="removePlusBtn1">Add</button> -->
										<button type="button" id="removeBtnFreeDiv1"
											class="minusIconFreeDiv" title="Remove Price">
											<img src="resources/images/minus.png" class="img-responsive">
										</button>
										<button type="button" id="clearPlusBtnFreeDiv1"
											class="clearIcon1FreeDiv" title="Clear Dates">
											<img src="resources/images/icons8-Clear Symbol-80.png"
												class="img-responsive">
										</button>
									</div>
								</div>
							</div>
							<div class="row clearfix hideDiv" id="freeProductsDiv2">
								<div class="col-sm-3 col-xs-12">
									<div class="form-group drop-custum freeProductClass"
										id="freeProductSelect2">
										<select class="form-control show-tick" name="freeProduct2"
											id="freeProduct2">
											<option value="">-- Free Product --</option>
											<option value="10">XXX</option>
											<option value="20">XXXX</option>
										</select>
									</div>
								</div>
								<div class="col-sm-1 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
												name="freeProductPieces2" id="freeProductPieces2"
												placeholder="Pieces">
										</div>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12">
									<div class="form-group mrgn-less-15">
										<div class="form-line">
											<input type="text" class="datepicker form-control"
												name="fromDateFreeProduct2" id="fromDateFreeProduct2"
												placeholder="From Date">
										</div>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12">
									<div class="form-group mrgn-less-15">
										<div class="form-line">
											<input type="text" class="datepicker form-control"
												name="toDateFreeProduct2" id="toDateFreeProduct2"
												placeholder="To Date">
										</div>
									</div>
								</div>
								<div class="col-sm-2 col-xs-12">
									<div class="form-group">
										<!-- <button type="button" class="btn btn-raised gradient-right"
												id="plusBtnFreeDiv12">Add</button>
												<button type="button" class="btn btn-raised gradient-right"
												id="removeBtnFreeDiv2">Add</button> -->
										<button type="button" id="plusBtnFreeDiv12"
											class="plusIconFreeDiv" title="Add Price">
											<img src="resources/images/icons8-Add-80.png"
												class="img-responsive">
										</button>
										<!-- <button type="button" class="btn btn-raised gradient-right"
													id="removePlusBtn1">Add</button> -->
										<button type="button" id="removeBtnFreeDiv2"
											class="minusIconFreeDiv" title="Remove Price">
											<img src="resources/images/minus.png" class="img-responsive">
										</button>
										<button type="button" id="clearPlusBtnFreeDiv2"
											class="clearIcon1FreeDiv" title="Clear Dates">
											<img src="resources/images/icons8-Clear Symbol-80.png"
												class="img-responsive">
										</button>
									</div>
								</div>
							</div>
							<div class="header margin-left-right-zero marginb15">
								<h2>Hall Features(Do's And Don't s)</h2>
							</div>
							<div class="row clearfix" id="hallFeatures">
								<div class="col-sm-12 col-xs-12">
									<div class="col-sm-6 col-xs-12">
										<h4 style="margin-top: 8%;">1) Do your hall provide extra
											bedrooms for the guests?</h4>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureYes1" id="hallFeatureYes1">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Yes
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureNo1" id="hallFeatureNo1">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> No
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12 hideDiv" id="roomsDiv">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="noOfRooms"
													id="noOfRooms" placeholder="No. Of Rooms">
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12 col-xs-12" style="margin-top: -3%;">
									<div class="col-sm-6 col-xs-12">
										<h4 style="margin-top: 8%;">2) Do your hall has parking
											facility?</h4>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureYes2" id="hallFeatureYes2">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Yes
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureNo2" id="hallFeatureNo2">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> No
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12 col-xs-12" style="margin-top: -3%;">
									<div class="col-sm-6 col-xs-12">
										<h4 style="margin-top: 8%;">3) Do your hall has lawn
											for the guests?</h4>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureYes3" id="hallFeatureYes3">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Yes
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureNo3" id="hallFeatureNo3">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> No
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12 hideDiv" id="lawnDiv">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="lawnArea"
													id="lawnArea" placeholder="Lawn Area">
											</div>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12 hideDiv" id="lawnUnitDiv">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="lawnUnit"
													id="lawnUnit" placeholder="Sqt.ft" readonly="readonly">
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12 col-xs-12" style="margin-top: -3%;">
									<div class="col-sm-6 col-xs-12">
										<h4 style="margin-top: 8%;">4) Do your hall has any
											restrictions for crackers?</h4>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureYes4" id="hallFeatureYes4">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Yes
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureNo4" id="hallFeatureNo4">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> No
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12 col-xs-12" style="margin-top: -3%;">
									<div class="col-sm-6 col-xs-12">
										<h4 style="margin-top: 8%;">5) Do your hall has any extra
											space for making pandals if needed?</h4>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureYes5" id="hallFeatureYes5">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Yes
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureNo5" id="hallFeatureNo5">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> No
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12 hideDiv" id="extraSpaceDiv">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="extraSpaceArea"
													id="extraSpaceArea" placeholder="Extra Space Area">
											</div>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12 hideDiv" id="extraSpaceUnitDiv">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="extraSpaceUnit"
													id="extraSpaceUnit" placeholder="Sqt.ft" readonly="readonly">
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12 col-xs-12" style="margin-top: -3%;">
									<div class="col-sm-6 col-xs-12">
										<h4 style="margin-top: 8%;">6) Do your hall has wifi
											connection for the guests?</h4>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureYes6" id="hallFeatureYes6">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Yes
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureNo6" id="hallFeatureNo6">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> No
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12 col-xs-12" style="margin-top: -3%;">
									<div class="col-sm-6 col-xs-12">
										<h4 style="margin-top: 8%;">7) Do your hall provide extra
											wash rooms for the guests?</h4>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureYes7" id="hallFeatureYes7">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Yes
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureNo7" id="hallFeatureNo7">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> No
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12 hideDiv" id="washRoomsDiv">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="noOfWashRooms"
													id="noOfWashRooms" placeholder="No. Of Wash Rooms">
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12 col-xs-12" style="margin-top: -3%;">
									<div class="col-sm-6 col-xs-12">
										<h4 style="margin-top: 8%;">8) Do your hall has kitchen facility for the guests 
										if not catering service is availed from you?</h4>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureYes8" id="hallFeatureYes8">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Yes
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureNo8" id="hallFeatureNo8">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> No
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12 col-xs-12" style="margin-top: -3%;">
									<div class="col-sm-6 col-xs-12">
										<h4 style="margin-top: 8%;">9) Do your hall provide store rooms
											for the guests?</h4>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureYes9" id="hallFeatureYes9">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Yes
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureNo9" id="hallFeatureNo9">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> No
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12 col-xs-12" style="margin-top: -3%;">
									<div class="col-sm-6 col-xs-12">
										<h4 style="margin-top: 8%;">10) How much is the eating seat capacity for guests at one go?</h4>
									</div>
									<!-- <div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureYes10" id="hallFeatureYes10">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Yes
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-1 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="hallFeatureNo10" id="hallFeatureNo10">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> No
												</label>
											</div>
										</div>
									</div> -->
									<div class="col-sm-3 col-xs-12 ">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="eatingSeatCapacity"
													id="eatingSeatCapacity" placeholder="No. Persons To Eat At A Time">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="header marginb15">
									<h2>Hall Pricing</h2>
								</div>
							</div>
							<div class="pricingDiv">
								<div class="row clearfix">
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line _removeFocus">
												<input type="text" class="datepicker form-control"
													name="fromDate" id="fromDate" placeholder="From Date">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line _removeFocus">
												<input type="text" class="datepicker form-control"
													name="toDate" id="toDate" placeholder="To Date"
													disabled="disabled">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="price"
													id="price" placeholder="Price" readonly="readonly">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<button type="button" id="plusbtn" class="plusIcon"
												title="Add Price">
												<img src="resources/images/icons8-Add-80.png"
													class="img-responsive">
											</button>
											<button type="button" id="clearPlusBtn" class="clearIcon"
												title="Clear Price Details">
												<img src="resources/images/icons8-Clear Symbol-80.png"
													class="img-responsive">
											</button>
											<button type="button" id="showPreviousPrices"
												class="showIcon hideDiv" title="Show Previous Prices"
												data-toggle="modal" data-target="#showPriceModal">
												<img src="resources/images/icons8-Show Property-100.png"
													class="img-responsive">
											</button>
										</div>
									</div>
								</div>
								<div class="row clearfix hideDiv" id="hallPricing1">
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line _removeFocus">
												<input type="text" class="datepicker form-control"
													name="fromDate" id="fromDate1" placeholder="From Date">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line _removeFocus">
												<input type="text" class="datepicker form-control"
													name="toDate" id="toDate1" placeholder="To Date"
													disabled="disabled">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="price"
													id="price1" placeholder="Price" readonly="readonly">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<!-- <button type="button" class="btn btn-raised gradient-right"
													id="plusbtn1">Add</button> -->
											<button type="button" id="plusbtn1" class="plusIcon"
												title="Add Price">
												<img src="resources/images/icons8-Add-80.png"
													class="img-responsive">
											</button>
											<!-- <button type="button" class="btn btn-raised gradient-right"
													id="removePlusBtn1">Add</button> -->
											<button type="button" id="removePlusBtn1" class="minusIcon"
												title="Remove Price">
												<img src="resources/images/minus.png" class="img-responsive">
											</button>
											<button type="button" id="clearPlusBtn1" class="clearIcon1"
												title="Clear Price Details">
												<img src="resources/images/icons8-Clear Symbol-80.png"
													class="img-responsive">
											</button>
										</div>
									</div>
								</div>
								<div class="row clearfix hideDiv" id="hallPricing2">
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line _removeFocus">
												<input type="text" class="datepicker form-control"
													name="fromDate" id="fromDate2" placeholder="From Date">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line _removeFocus">
												<input type="text" class="datepicker form-control"
													name="toDate" id="toDate2" placeholder="To Date"
													disabled="disabled">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="price"
													id="price2" placeholder="Base Price" readonly="readonly">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<button type="button" id="plusbtn1" class="plusIcon"
												title="Add Price">
												<img src="resources/images/icons8-Add-80.png"
													class="img-responsive">
											</button>
											<!-- <button type="button" class="btn btn-raised gradient-right"
													id="plusbtn2">Add</button> -->
											<!-- <button type="button" class="btn btn-raised gradient-right"
														id="removePlusBtn2">Add</button> -->
											<button type="button" id="removePlusBtn2" class="minusIcon"
												title="RemovePrice">
												<img src="resources/images/minus.png" class="img-responsive">
											</button>
											<button type="button" id="clearPlusBtn2" class="clearIcon1"
												title="Clear Price Details">
												<img src="resources/images/icons8-Clear Symbol-80.png"
													class="img-responsive">
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="header marginb15 margin-bottom10">
									<div class="checkbox header-add">
										<label> <input type="checkbox" value=""
											id="discountCheck"> <span class="cr" id="bank-check">
												<i class="cr-icon glyphicon glyphicon-ok"></i>
										</span> Discount Details(if any)
										</label>
									</div>
								</div>
							</div>
							<div id="discountDiv">
								<div class="row clearfix">
									<div class="col-sm-3 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="datepicker form-control"
													name="fromDateDiscount" id="fromDateDiscount"
													placeholder="From Date">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="datepicker form-control"
													name="toDateDiscount" id="toDateDiscount"
													placeholder="To Date">
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="form-control" name="discount"
													id="discount" placeholder="Amount / Percentage">
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="checkBoxDiscountAmount" id="checkBoxDiscountAmount">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Discount
													Amount
												</label>
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="checkBoxDiscountPercent" id="checkBoxDiscountPercent">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> In Percentage
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-md-12 col-xs-12 hideDiv" id="showDiscountDiv">
										<div class="form-group">
											<button type="button" class="btn btn-raised gradient-right"
												id="showPreviousDiscounts" data-toggle="modal"
												data-target="#showDiscountModal">Show Discount</button>
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix"></div>
							<div class="row clearfix hideDiv" id="productStatusHeader">
								<div class="header marginb15">
									<h2>Product Status</h2>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-md-6 col-xs-6 hideDiv" id="productStatusDiv">
									<div class="form-group drop-custum">
										<select class="form-control show-tick">
											<option value="">-- Availability --</option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-xs-12">
									<input type="hidden" name="typeName" id="typeName" value="">
									<input type="hidden" name="occasionName" id="occasionName"value=""> 
									<input type="hidden" name="editProductId"id="editProductId" value="">
									<input type="hidden"name="allProductId" id="allProductId" value="">
									<input type="hidden" name="productStatus" id="productStatus" value="">
									<input type="hidden" name="defaultDpImage" id="defaultDpImage" value=""> 
									<input type="hidden" name="productAvailability" id="productAvailability" value="">
									<input type="hidden" name="freeProductName" id="freeProductName" value=""> 
									<input type="hidden" name="freeProductName1" id="freeProductName1" value="">
									<input type="hidden" name="freeProductName2" id="freeProductName2" value="">
									<button type="submit" class="btn btn-raised gradient-right" id="submit">Submit</button>
									<button type="submit" class="btn btn-raised gradient-left">Cancel</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="resources/js/dropzone.js"></script>
	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script src="resources/js/jscolor.js"></script>
	<script src="resources/js/sweetalert.min.js"></script>
	<script src="resources/js/date.format.js"></script>
	<%@ include file="admin-includeDynamicSideNavBarFromSession.jsp"%>

	<!-- Jquery Js -->

	<script type="text/javascript">
		var dateTime = new Date().getTime();
		var hasValue = Number(0);
		var singleFiles = "";
		var classPathSingleFile = "";
		var modelId = "";
		var dpImageId = "";
		var defaultImageId = "";
		var titleLength = "";
		var editOccasionId = "";
		var editOccasionName = "";
		var lengthOccasions = "";
		var doNotRemoveFields = Number(0);
		Dropzone.options.singleUpload = {
			url : "singleUpload",
			init : function() {
				this.on("success", function(file, response) {
					var a = this.element.classList + "";
					a = a.split("_");
					classPathSingleFile = $("form." + "_" + a[1]).parent()
							.parent().attr("class");
					classPathSingleFile = classPathSingleFile.split("_");
					if (singleFiles === "") {
						singleFiles = "Hall" + "+@-" + classPathSingleFile[1]
								+ "+@-" + dateTime + file.name;
					} else {
						singleFiles = singleFiles + "-,@_" + "Hall" + "+@-"
								+ classPathSingleFile[1] + "+@-" + dateTime
								+ file.name;
					}
				});
			},
			renameFilename : function(fileName) {
				var classpath = fileName;
				classpath = classpath.split("_");
				return "Hall" + "_" + dateTime + classpath[0];

			}
		};

		var multipleFiles = "";
		var classPath = "";
		Dropzone.options.multipleUpload = {
			url : "singleUpload",
			addRemoveLinks : true,
			init : function() {
				this
						.on(
								"success",
								function(file, response) {
									var a = this.element.classList + "";
									a = a.split("_");
									classPath = $("form." + "_" + a[1])
											.parent().parent().attr("class");
									classPath = classPath.split("_");
									if (multipleFiles === "") {
										multipleFiles = "Hall" + "+@-"
												+ classPath[1] + "+@-"
												+ dateTime + file.name;
									} else {
										multipleFiles = multipleFiles + "-,@_"
												+ "Hall" + "+@-" + classPath[1]
												+ "+@-" + dateTime + file.name;
									}
									$("#multipleUpload .dz-remove")
											.click(
													function(e) {
														e.preventDefault();
														e.stopPropagation();
														var imageId = $(this)
																.parent()
																.find(
																		".dz-filename > span")
																.text();
														var sample = imageId
																.split("_");
														sample = sample[0]
																+ "+@-"
																+ classPath[1]
																+ "+@-"
																+ sample[1];
														var abc = multipleFiles
																.split("-,@_");

														if (sample === abc[0]
																&& multipleFiles
																		.indexOf("-,@_") < 0) {
															multipleFiles = "";

														}
														if (multipleFiles
																.indexOf("-,@_") >= 0) {
															multipleFiles = "";
															for (var i = 0; i < abc.length; i++) {
																if (abc[i] === sample) {
																	abc[i] = "";
																} else {
																	if (multipleFiles === "") {
																		multipleFiles = abc[i];
																	} else {
																		multipleFiles = multipleFiles
																				+ "-,@_"
																				+ abc[i];

																	}
																}
															}

														}
														var job = {};
														job["imageId"] = imageId;
														$
																.ajax({
																	type : "POST",
																	url : "admin-removeUnusedImagesVideos",
																	data : JSON
																			.stringify(job),
																	contentType : "application/json",
																	processData : false,
																	success : function(
																			data) {
																	},
																	error : function(
																			e) {
																		alert("Error");
																		swal({
																			title : 'Error!',
																			text : 'Unused Images Cannot Be Removed!!!',
																			type : 'error',
																			confirmButtonText : "OK",
																			allowEscapeKey : true,
																			confirmButtonClass : "btn btn-raised gradient-right",
																			animation : true
																		});
																	}
																});

													});

								});

				this
						.on(
								"addedfile",
								function(file) {
									if (this.files.length) {
										var i, len;
										for (i = 0, len = this.files.length; i < len - 1; i++) // -1 to exclude current file
										{
											if (this.files[i].name === file.name
													&& this.files[i].size === file.size
													&& this.files[i].lastModifiedDate
															.toString() === file.lastModifiedDate
															.toString()) {
												this.removeFile(file);
											}
										}
									}

								});

				this.on("removedfile", function(file) {
					if (multipleFiles === "") {
						if (this.element.classList.contains("dz-started")) {
							this.element.classList.remove("dz-started");
						}
					}
				});

				this.on("error", function(file) {
					if (!file.accepted)
						this.removeFile(file);
				});
			},
			renameFilename : function(fileName) {
				var classpath = fileName;
				classpath = classpath.split("_");
				return "Hall" + "_" + dateTime + classpath[0];
			}

		};

		var idForFetch;
		$(document).ready(function() {
			fetchAllHallType();
			fetchAllOccasion();
			fetchAllProductsOfSeller();
			if (location.href.match(/id/)) {
				idForFetch = location.search.split("?");
				idForFetch = idForFetch[1].split("=");
				idForFetch = idForFetch[1];
				fetchHallById(idForFetch);
			}

		});

		var catName = "Hall";
		var typeArr = new Array();
		var arry3 = new Array();

		function fetchAllHallType() {
			$
					.ajax({
						type : "GET",
						url : "admin-fetchProductTypesWithStatusByCat?catName="
								+ catName,
						data : "",
						contentType : "application/json",
						processData : false,
						success : function(data) {
							$("#hallTypeDiv").html("");
							if (data.status) {

								var arValue = "";
								while (typeArr.length > 0) {
									typeArr.pop();
								}
								var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Hall Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Hall Type--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
										+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
										+ "<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"
										+ 0
										+ "','Hall Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Hall Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
								var cde = "";
								for (var i = 0; i < data.listAllProductTypes.length
										&& data.listAllProductTypes[i].status; i++) {
									description = cde = cde
											+ "<li data-original-index='"
											+ Number(Number(i) + Number(1))
											+ "' id='li"
											+ Number(Number(i) + Number(1))
											+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"
											+ Number(Number(i) + Number(1))
											+ "','"
											+ data.listAllProductTypes[i].typeName
											+ "','"
											+ data.listAllProductTypes[i].id
											+ "')\"><span class=\"text\" title=\""+data.listAllProductTypes[i].typeDescription+"\">"
											+ data.listAllProductTypes[i].typeName
											+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
									arValue = data.listAllProductTypes[i].id
											+ "_"
											+ data.listAllProductTypes[i].typeName
											+ "_"
											+ data.listAllProductTypes[i].typeDescription;
									typeArr.push(arValue);
								}
								cde = cde + "</ul></div>"
								$("#hallTypeDiv").html(abc + cde);
							}

						},
						error : function(e) {

							swal({
								title : 'Error!',
								text : 'Hall Type Not Fetched Successfully!!!',
								type : 'error',
								confirmButtonText : "OK",
								allowEscapeKey : true,
								confirmButtonClass : "btn btn-raised gradient-right",
								animation : true
							});
						}
					});
		}

		var previousLi;

		function clickLi(liId, title1, typeId) {

			$("#typeName").val(typeId); //Hidden field to store the Flower type Id
			if (title1 === 'Hall Type') {
				title1 = "--" + title1 + "--";
			}
			var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\""+title1+ "\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">"
					+ title1
					+ "</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"

			if (Number(liId) > Number(0)) {
				var selectedId = $(".selected").attr("id");
				previouLi = liId;

				abc = abc
						+ "<li data-original-index=\"0\" class=\"\" id=\"li0\" onclick=\"clickLi('"
						+ 0
						+ "','Hall Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Hall Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < typeArr.length; i++) {
					var splittedArray = typeArr[i].split("_");
					if (Number(i) === Number(Number(liId) - Number(1))) {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' class =\"selected\" id='li"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"  title=\""
								+ splittedArray[2]
								+ "\" onclick =\"clickLi('"
								+ Number(Number(i) + Number(1))
								+ "','"
								+ splittedArray[1]
								+ "','"
								+ splittedArray[0]
								+ "')\"><span class=\"text\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					} else {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' id='li"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" title=\""
								+ splittedArray[2]
								+ "\" onclick =\"clickLi('"
								+ Number(Number(i) + Number(1))
								+ "','"
								+ splittedArray[1]
								+ "','"
								+ splittedArray[0]
								+ "')\"><span class=\"text\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					}

				}
				cde = cde + "</ul></div>"

				$("#hallTypeDiv").html(abc + cde);

			} else {
				$("#li" + previousLi).removeClass("selected");
				$("#li0").addClass("selected");

				abc = abc
						+ "<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"
						+ 0
						+ "','Hall Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Hall Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < typeArr.length; i++) {
					var splittedArray = typeArr[i].split("_");
					cde = cde
							+ "<li data-original-index='"
							+ Number(Number(i) + Number(1))
							+ "' id='li"
							+ Number(Number(i) + Number(1))
							+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" title=\""
							+ splittedArray[2]
							+ "\" onclick =\"clickLi('"
							+ Number(Number(i) + Number(1))
							+ "','"
							+ splittedArray[1]
							+ "','"
							+ splittedArray[0]
							+ "')\"><span class=\"text\">"
							+ splittedArray[1]
							+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"

				}
				cde = cde + "</ul></div>"

				$("#hallTypeDiv").html(abc + cde);
			}
		}

		function fetchAllOccasion() {
			$
					.ajax({
						type : "GET",
						url : "admin-fetchAllOccasionWithStatus",
						data : "",
						contentType : "application/json",
						processData : false,
						success : function(data) {
							$("#occasionDiv").html("");
							if (data.status) {
								var arValue = "";
								while (arry3.length > 0) {
									arry3.pop();
								}
								var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- Occasion --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- Occasion --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
										+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulOccasion0\">"
										+ "<li data-original-index=\"0\" class=\"selected\" id=\"occasionLi0\" onclick=\"clickOccasionLi('"
										+ 0
										+ "','Occasion')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
								var cde = "";
								for (var i = 0; i < data.listAllOccasion.length; i++) {
									cde = cde
											+ "<li data-original-index='"
											+ Number(Number(i) + Number(1))
											+ "' id='occasionLi"
											+ Number(Number(i) + Number(1))
											+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickOccasionLi('"
											+ Number(Number(i) + Number(1))
											+ "','"
											+ data.listAllOccasion[i].name
											+ "','"
											+ data.listAllOccasion[i].id
											+ "')\"><span class=\"text\" title=\""+data.listAllOccasion[i].description+"\">"
											+ data.listAllOccasion[i].name
											+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
									arValue = data.listAllOccasion[i].id
											+ "_"
											+ data.listAllOccasion[i].name
											+ "_"
											+ data.listAllOccasion[i].description;
									arry3.push(arValue);
								}
								cde = cde + "</ul></div>"
								$("#occasionDiv").html(abc + cde);
							}

						},
						error : function(e) {
							alert("Error");
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

		var title = "";
		var id = "";
		//On click of each li in Occasion list 
		function clickOccasionLi(liId, title1, occasionId, classSelected) {
			if (classSelected === undefined || classSelected === "") {
				if (title === "") {
					title = title1;
					id = occasionId;
				} else {
					if (title1 === "Occasion" || title.indexOf("Occasion") >= 0) {
						title = "";
					}
					if (title === "") {
						title = title1;
						id = occasionId;
					} else {
						title = title + "," + title1;
						id = id + "," + occasionId;
					}
				}

			} else {
				var a = title.split(",");
				var b = id.split(",");
				title = "";
				id = "";
				for (var i = 0; i < a.length; i++) {
					if (a[i] === title1) {
						a[i] = "";
						b[i] = "";
					} else {
						if (title === "") {
							title = a[i];
							id = b[i];
						} else {

							title = title + "," + a[i];
							id = id + "," + b[i];

						}
					}
				}
				if (title === "") {
					title = "-- Occasion --";
				}
			}
			if (lengthOccasions != "") {
				if (lengthOccasions > title.split(",").length) {
					titleLength = "minus";
				} else if (lengthOccasions < title.split(",").length) {
					titleLength = "plus";
				} else if (lengthOccasions === title.split(",").length) {
					var editTitleName;
					var occsionTitleName;
					var check = Number(0);
					if (editOccasionName.indexOf(",") >= 0) {
						editTitleName = editOccasionName.split(",");
					} else {
						editTitleName = editOccasionName;
					}

					if (title.indexOf(",") >= 0) {
						occsionTitleName = title.split(",");
					} else {
						occsionTitleName = title;
					}

					var editId;
					if (editOccasionId.indexOf(",") >= 0) {
						editId = editOccasionId.split(",");
					} else {
						editId = editOccasionId;
					}

					for (var i = 0; i < editTitleName.length; i++) {
						for (var j = 0; j < occsionTitleName.length; j++) {
							if (editTitleName[i] === occsionTitleName[j]) {
								check = Number(1);
								break;
							}
						}
						if (check === Number(0)) {
							break;
						}
					}

					if (check === Number(1)) {
						titleLength = "same";
					} else {
						titleLength = "samePlus" + "@*" + editId[i];
					}
				}
			}
			$("#occasionName").val(id); //Hidden field to store the Occasion Id
			var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\""+title+ "\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">"
					+ title
					+ "</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulOccasion0\">"

			if (Number(liId) > Number(0)) {
				var selectedId = $(".selected").attr("id");
				previouLi = liId;

				abc = abc
						+ "<li data-original-index=\"0\" class=\"\" id=\"occasionLi0\" onclick=\"clickOccasionLi('"
						+ 0
						+ "','Occasion')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < arry3.length; i++) {
					var splittedArray = arry3[i].split("_");

					if (Number(i) === Number(Number(liId) - Number(1))) {
						var classSelected = "";
						if (!($("#occasionLi" + Number(liId))
								.hasClass("selected"))) {
							classSelected = "class = selected";
						}
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' "
								+ classSelected
								+ " id='occasionLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickOccasionLi('"
								+ Number(Number(i) + Number(1))
								+ "','"
								+ splittedArray[1]
								+ "','"
								+ splittedArray[0]
								+ "','"
								+ classSelected
								+ "')\"><span class=\"text\" title=\""+splittedArray[2]+"\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					} else {
						var classSelected = "";
						if ($("#occasionLi" + Number(Number(i) + Number(1)))
								.hasClass("selected")) {
							classSelected = "class = selected";
						}
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' "
								+ classSelected
								+ " id='occasionLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick =\"clickOccasionLi('"
								+ Number(Number(i) + Number(1))
								+ "','"
								+ splittedArray[1]
								+ "','"
								+ splittedArray[0]
								+ "','"
								+ classSelected
								+ "')\"><span class=\"text\" title=\""+splittedArray[2]+"\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					}

				}
				cde = cde + "</ul></div>"

				$("#occasionDiv").html(abc + cde);

			} else {
				$("#occasionLi" + previousLi).removeClass("selected");
				$("#occasionLi0").addClass("selected");
				var classSelected = "";
				abc = abc
						+ "<li data-original-index=\"0\" class=\"selected\" id=\"occasionLi0\" onclick=\"clickOccasionLi('"
						+ 0
						+ "','Occasion','"
						+ classSelected
						+ "')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < arry3.length; i++) {
					var splittedArray = arry3[i].split("_");
					cde = cde
							+ "<li data-original-index='"
							+ Number(Number(i) + Number(1))
							+ "' id='occasionLi"
							+ Number(Number(i) + Number(1))
							+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickOccasionLi('"
							+ Number(Number(i) + Number(1))
							+ "','"
							+ splittedArray[1]
							+ "','"
							+ splittedArray[0]
							+ "')\"><span class=\"text\" title=\""+splittedArray[2]+"\">"
							+ splittedArray[1]
							+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"

				}
				cde = cde + "</ul></div>"

				$("#occasionDiv").html(abc + cde);
			}
		}

		var pricingsDivNumber = Number(0); //Variable to  know number of times the new div has been added

		//On click of Add button
		$("#plusbtn,#plusbtn1,#plusbtn2").click(function() {
			addDiv();
		});
		//For Adding new div
		function addDiv() {
			if ($("#fromDate" + pricingsDivNumber).val() === ""
					|| $("#fromDate").val() === "") {
				swal({
					title : 'Warning!',
					text : 'Please Enter Starting Date of Price!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});

			} else if ($("#toDate" + pricingsDivNumber).val() === ""
					|| $("#toDate").val() === "") {
				swal({
					title : 'Warning!',
					text : 'Please Enter Ending Date of Price!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			} else if ($("#price" + pricingsDivNumber).val() === ""
					|| $("#price").val() === "") {
				swal({
					title : 'Warning!',
					text : 'Please Enter Price of Product!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			} else {
				if (pricingsDivNumber === Number(0)) {
					$("#fromDate").attr("disabled", true);
					$("#toDate").attr("disabled", true);
					$("#price").attr("readonly", true);
				} else {
					$("#fromDate" + pricingsDivNumber).attr("disabled", true);
					$("#toDate" + pricingsDivNumber).attr("disabled", true);
					$("#price" + pricingsDivNumber).attr("readonly", true);
				}
				addOtherDivs();
			}
		}
		var fromPriceDate = "";
		function addOtherDivs() {
			if (Number(pricingsDivNumber) < Number(2)) {
				pricingsDivNumber = Number(Number(pricingsDivNumber)
						+ Number(1));
				if (pricingsDivNumber === 1) {

					var fromDate1 = moment($("#toDate").val(),
							"dddd DD MMMM YYYY");
					fromDate1 = fromDate1.add(1, 'days')
					fromDate1 = moment(fromDate1).format("dddd DD MMMM YYYY");
					fromPriceDate = fromDate1;

					momentCalender($, moment);
					$("#fromDate1").bootstrapMaterialDatePicker({
						format : 'dddd DD MMMM YYYY',
						clearButton : true,
						weekStart : 1,
						time : false,
						minDate : new Date()
					});

					if ($("#fromDate1").val() === "") {
						$("#fromDate1").val(fromDate1);
					}
					var toDate1 = moment(fromDate1, "dddd DD MMMM YYYY");
					toDate1 = toDate1.add(1, 'days')
					toDate1 = moment(toDate1).format("dddd DD MMMM YYYY");

					$("#toDate1").bootstrapMaterialDatePicker({
						format : 'dddd DD MMMM YYYY',
						clearButton : true,
						weekStart : 1,
						time : false,
						minDate : new Date()
					});
					addDiv1();
				} else if (pricingsDivNumber === 2) {

					var fromDate2 = moment($("#toDate1").val(),
							"dddd DD MMMM YYYY");
					fromDate2 = fromDate2.add(1, 'days')
					fromDate2 = moment(fromDate2).format("dddd DD MMMM YYYY");
					fromPriceDate = fromDate2;

					momentCalender($, moment);
					$("#fromDate2").bootstrapMaterialDatePicker({
						format : 'dddd DD MMMM YYYY',
						clearButton : true,
						weekStart : 1,
						time : false,
						minDate : new Date()
					});
					if ($("#fromDate2").val() === "") {
						$("#fromDate2").val(fromDate2);
					}
					var toDate2 = moment(fromDate2, "dddd DD MMMM YYYY");
					toDate2 = toDate2.add(1, 'days')
					toDate2 = moment(toDate2).format("dddd DD MMMM YYYY");

					$("#toDate2").bootstrapMaterialDatePicker({
						format : 'dddd DD MMMM YYYY',
						clearButton : true,
						weekStart : 1,
						time : false,
						minDate : new Date()
					});
					addDiv2();
				} else {
					addDiv3();
				}

			} else {
				swal({
					title : 'Warning!',
					text : 'You can only add 3 pricings at a time!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}
		}
		function addDiv1() {
			$("#hallPricing1").attr("style", "display:block");
		}
		function addDiv2() {
			$("#hallPricing2").attr("style", "display:block");
		}

		$("#removePlusBtn1").click(function() {
			removeHallPricingDiv(1);
		});
		$("#removePlusBtn2").click(function() {
			removeHallPricingDiv(2);
		});
		// For removing present div
		function removeHallPricingDiv(removeId) {
			$("#fromDate" + removeId).val("");
			$("#toDate" + removeId).val("");
			$("#price" + removeId).val("");
			$("#hallPricing" + removeId).attr("style", "display:none");
			pricingsDivNumber = 0;
		}

		$("#fromDate,#toDate").mouseenter(function() {
			momentCalender($, moment);
			var fromDate = moment();
			fromDate = fromDate.add(1, 'days');
			fromDate = moment(fromDate).format("dddd DD MMMM YYYY");

			$("#fromDate").bootstrapMaterialDatePicker({
				format : 'dddd DD MMMM YYYY',
				clearButton : true,
				weekStart : 1,
				time : false,
				minDate : new Date()
			});
			var from = moment().format("dddd DD MMMM YYYY")
			if ($("#fromDate").val() === "") {
				$("#fromDate").val(from);
			}
			$("#toDate").bootstrapMaterialDatePicker({
				format : 'dddd DD MMMM YYYY',
				clearButton : true,
				weekStart : 1,
				time : false,
				minDate : fromDate
			});

		});
		/* $("#fromDateFreeProduct,#toDate").mouseenter(function(){
		momentCalender($,moment);
		 var fromDate = moment();
		    fromDate = fromDate.add(1,'days')
		    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");

		    $("#fromDate").bootstrapMaterialDatePicker({
				 format: 'dddd DD MMMM YYYY',
			     clearButton: true,
			     weekStart: 1,
			     time: false,
				 minDate:new Date()
			});
		    
		    $("#toDate").bootstrapMaterialDatePicker({
				 format: 'dddd DD MMMM YYYY',
			     clearButton: true,
			     weekStart: 1,
			     time: false,
				 minDate:fromDate
			});
		
		});
		 */
		$("#fromDateDiscount,#toDateDiscount").mouseenter(function() {
			momentCalender($, moment);
			var fromDate = moment();
			fromDate = fromDate.add(1, 'days')
			fromDate = moment(fromDate).format("dddd DD MMMM YYYY");

			$("#fromDateDiscount").bootstrapMaterialDatePicker({
				format : 'dddd DD MMMM YYYY',
				clearButton : true,
				weekStart : 1,
				time : false,
				minDate : new Date()
			});

			$("#toDateDiscount").bootstrapMaterialDatePicker({
				format : 'dddd DD MMMM YYYY',
				clearButton : true,
				weekStart : 1,
				time : false,
				minDate : fromDate
			});

		});
		$("#discountCheck").click(function() {
			if ($(this).is(':checked')) {
				$("#discountDiv").attr("style", "display:block");
			} else {
				$("#discountDiv").attr("style", "display:none");
			}
		});

		$("#checkBoxDiscountAmount, #checkBoxDiscountPercent").click(
				function() {
					var check = Number(0);
					if ($("#" + this.id).is(':checked')) {
						check = Number(1);
					}
					$("#checkBoxDiscountAmount,#checkBoxDiscountPercent").prop(
							"checked", false);

					if (check === Number(1)) {
						$("#" + this.id).prop("checked", true);
					}
				});
		//Converting month name to month number
		function getMonth(monthStr) {
			return new Date(monthStr + '-1-01').getMonth() + 1
		}

		$("#submit").click(
						function(e) {
							e.preventDefault();
							alert("Am there");
							if ($("#name").val() === "") {
								swal({
									title : 'Warning!',
									text : 'Please Enter Product Name!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ($("#occasionName").val() === "") {
								swal({
									title : 'Warning!',
									text : 'Please Enter Occasion Name!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ($("#typeName").val() === "") {
								swal({
									title : 'Warning!',
									text : 'Please Enter Hall Type!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ($("#availability").val() === "") {
								swal({
									title : 'Warning!',
									text : 'Please Select Availability Of The Product!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ($("#advancePaymentPercentage").val() === "") {
								swal({
									title : 'Warning!',
									text : 'Please Enter Advance Payment Percentage!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if (singleFiles === ""
									&& $("#defaultDpImage").val() === "") {
								swal({
									title : 'Warning!',
									text : 'Please Upload Thumnail Image Of The Product!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if (multipleFiles === ""
									&& defaultImageId === "") {
								swal({
									title : 'Warning!',
									text : 'Please Upload Atleast One Descriptive Images Of The Product!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ($("#fromDate").val() === ""
									&& idForFetch === undefined) {
								swal({
									title : 'Warning!',
									text : 'Please Enter Starting Date For The Respective Price!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ($("#toDate").val() === ""
									&& idForFetch === undefined) {
								swal({
									title : 'Warning!',
									text : 'Please Enter Ending Date For The Respective Price!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ($("#price").val() === ""
									&& idForFetch === undefined) {
								swal({
									title : 'Warning!',
									text : 'Please Enter At Least One Price For The Product!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ((!$("#hallFeatureYes1").is(":checked"))
									&& (!$("#hallFeatureNo1").is(":checked"))) {
								swal({
									title : 'Warning!',
									text : 'Please Select Whether You Provide Extra Bed Rooms Or Not!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ((!$("#hallFeatureYes2").is(":checked"))
									&& (!$("#hallFeatureNo2").is(":checked"))) {
								swal({
									title : 'Warning!',
									text : 'Please Select Whether You Have Parking Facility!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ((!$("#hallFeatureYes3").is(":checked"))
									&& (!$("#hallFeatureNo3").is(":checked"))) {
								swal({
									title : 'Warning!',
									text : 'Please Select Whether You Have Lawn Facility!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ((!$("#hallFeatureYes4").is(":checked"))
									&& (!$("#hallFeatureNo4").is(":checked"))) {
								swal({
									title : 'Warning!',
									text : 'Please Select Whether You Have Any Restrictions For Crackers!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ((!$("#hallFeatureYes5").is(":checked"))
									&& (!$("#hallFeatureNo5").is(":checked"))) {
								swal({
									title : 'Warning!',
									text : 'Please Select Whether You Have Extra Space For Making Pandals!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if ((!$("#hallFeatureYes6").is(":checked"))
									&& (!$("#hallFeatureNo6").is(":checked"))) {
								swal({
									title : 'Warning!',
									text : 'Please Select Whether You Have Any Wifi Connection!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if (($("#hallFeatureYes1").is(":checked"))
									&& ($("#noOfRooms").val() === "")) {
								swal({
									title : 'Warning!',
									text : 'Please Select Number Of Rooms Provided For The Guests!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							} else if (($("#hallFeatureYes3").is(":checked"))
									&& ($("#lawnArea").val() === "")) {
								swal({
									title : 'Warning!',
									text : 'Please Select Lawn Area For The Guests!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							}else if ((!$("#hallFeatureYes7").is(":checked"))
									&& (!$("#hallFeatureNo7").is(":checked"))) { 
								swal({
									title : 'Warning!',
									text : 'Please Select Whether You Provide Wash Rooms Or Not!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							}else if (($("#hallFeatureYes7").is(":checked"))
									&& ($("#noOfWashRooms").val() === "")) {
								swal({
									title : 'Warning!',
									text : 'Please Select Number Of Wash Rooms Provided!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							}else if ((!$("#hallFeatureYes8").is(":checked"))
									&& (!$("#hallFeatureNo8").is(":checked"))) { 
								swal({
									title : 'Warning!',
									text : 'Please Select Whether You Provide Kitchen Facility!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							}else if ((!$("#hallFeatureYes9").is(":checked"))
									&& (!$("#hallFeatureNo9").is(":checked"))) {  
								swal({
									title : 'Warning!',
									text : 'Please Select Whether You Provide Store Rooms Facilitiy!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							}else if ($("#eatingSpaceCapacity").val() === "") {  
								swal({
									title : 'Warning!',
									text : 'Please Select Eating Space Capacity For Your Hall!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							}  else {
								alert("In else");
								var job = {};
								job["editProductId"] = $("#editProductId")
										.val();
								job["allProductId"] = $("#allProductId").val();
								var check = Number(0);
								if ($("#productAvailability").val() === "") {
									job["availability"] = $("#availability")
											.val();
								} else {
									job["availability"] = $("#productAvailability").val();
								}

								if ($("#productStatus").val() !== "") {
									job["productStatus"] = $("#productStatus")
											.val()
								}
								job["name"] = $("#name").val();
								if ($("#description").val() !== "") {
									job["description"] = $("#description")
											.val();
								}
								job["occasion"] = $("#occasionName").val();
								job["typeName"] = $("#typeName").val();
								job["advancePaymentPercentage"] = $(
										"#advancePaymentPercentage").val();
								if ($("#defaultDpImage").val() === "") {
									job["singleFiles"] = singleFiles;
								} else {
									job["singleFiles"] = singleFiles + "@*"
											+ $("#defaultDpImage").val();
								}
								if (multipleFiles === "") {
									job["multipleFiles"] = defaultImageId;
								} else {
									job["multipleFiles"] = multipleFiles;
								}
								if ($("#freebie").val() !== "") {
									job["freebie"] = $("#freebie").val()
								}
								if (titleLength != "") {
									job["titleLength"] = titleLength;
								}
								job["isExtraBedRooms"] = $("#hallFeatureYes1").is(":checked") ? $("#noOfRooms").val() : 0;
								job["isParkingFacility"] = $("#hallFeatureYes2").is(":checked") ? 1 : 0;
								job["isLawn"] = $("#hallFeatureYes3").is(":checked") ? $("#lawnArea").val() : false;
								job["isCrackersAllowed"] = $("#hallFeatureYes4").is(":checked") ? 1 : 0;
								job["isExtraSpace"] = $("#hallFeatureYes5").is(":checked") ? $("#extraSpaceArea").val() : 0;
								job["isWifiConnection"] = $("#hallFeatureYes6").is(":checked") ? 1 : 0;
								job["isnoOfWashRooms"] = $("#hallFeatureYes7").is(":checked") ? $("#noOfWashRooms").val() : 0;
								job["isKitchen"] = $("#hallFeatureYes8").is(":checked") ? 1 : 0;
								job["isStoreRooms"] = $("#hallFeatureYes9").is(":checked") ? 1 : 0;
								job["eatingSpaceCapacity"] = $("#eatingSeatCapacity").val();
								
								if ($("#hallFeatureYes1").is(":checked")) {
									job["noOfRooms"] = $("#noOfRooms").val();
								}
								if (titleLength != "") {
									job["titleLength"] = titleLength;
								} else {
									job["titleLength"] = "";
								}
								if ($("#freeProductName").val() !== "") {
									var fromDateFreeProduct = ($("#fromDateFreeProduct")
											.val()).trim().split(/\s+/); //Trimming the from Date For white spaces 
									var fromMonth = getMonth(fromDateFreeProduct[2]); //Method to convert month name to month number
									if (fromMonth < 10) {
										fromMonth = "0" + fromMonth;
									}

									var toDateFreeProduct = ($("#toDateFreeProduct")
											.val()).trim().split(/\s+/); //Trimming the to Date For white spaces 
									var toMonth = getMonth(toDateFreeProduct[2]); //Method to convert month name to month number
									if (toMonth < 10) {
										toMonth = "0" + toMonth;
									}

									job["freeProduct"] = $("#freeProductName")
											.val();
									job["freeProductQty"] = $(
											"#freeProductPieces").val();
									job["freeProductValidity"] = fromDateFreeProduct[3]
											+ "-"
											+ fromMonth
											+ "-"
											+ fromDateFreeProduct[1]
											+ "_"
											+ toDateFreeProduct[3]
											+ "-"
											+ toMonth
											+ "-"
											+ toDateFreeProduct[1];
								}

								if (previousFreeDiv > Number(0)) {
									for (var k = 1; k <= Number(previousFreeDiv); k++) {
										if (($("#fromDateFreeProduct" + k)
												.val() !== undefined)
												&& ($("#toDateFreeProduct" + k)
														.val() !== undefined)
												&& ($("#freeProductPieces" + k)
														.val() !== undefined)
												&& ($("#freeProductName" + k)
														.val() !== undefined)
												&& ($(
														"#fromDateFreeProduct"
																+ k).val() !== "")
												&& ($("#toDateFreeProduct" + k)
														.val() !== "")
												&& ($("#freeProductQty" + k)
														.val() !== "")
												&& ($("#freeProductName" + k)
														.val() !== "")) {
											var fromDateFreeProduct = ($("#fromDateFreeProduct"
													+ k).val()).trim().split(
													/\s+/); //Trimming the from Date For white spaces 
											var fromMonth = getMonth(fromDateFreeProduct[2]); //Method to convert month name to month number
											if (fromMonth < 10) {
												fromMonth = "0" + fromMonth;
											}

											var toDateFreeProduct = ($("#toDateFreeProduct"
													+ k).val()).trim().split(
													/\s+/); //Trimming the to Date For white spaces 
											var toMonth = getMonth(toDateFreeProduct[2]); //Method to convert month name to month number
											if (toMonth < 10) {
												toMonth = "0" + toMonth;
											}
											if ((job["freeProduct"] !== undefined)
													&& (job["freeProductQty"] !== undefined)
													&& (job["freeProductValidity"] !== undefined)) {
												job["freeProduct"] = job["freeProduct"]
														+ ","
														+ $(
																"#freeProductName"
																		+ k)
																.val();
												job["freeProductQty"] = job["freeProductQty"]
														+ ","
														+ $(
																"#freeProductPieces"
																		+ k)
																.val();
												job["freeProductValidity"] = job["freeProductValidity"]
														+ ","
														+ fromDateFreeProduct[3]
														+ "-"
														+ fromMonth
														+ "-"
														+ fromDateFreeProduct[1]
														+ "_"
														+ toDateFreeProduct[3]
														+ "-"
														+ toMonth
														+ "-"
														+ toDateFreeProduct[1];
											} else {
												job["freeProduct"] = $(
														"#freeProductName" + k)
														.val();
												job["freeProductQty"] = $(
														"#freeProductPieces"
																+ k).val();
												job["freeProductValidity"] = fromDateFreeProduct[3]
														+ "-"
														+ fromMonth
														+ "-"
														+ fromDateFreeProduct[1]
														+ "_"
														+ toDateFreeProduct[3]
														+ "-"
														+ toMonth
														+ "-"
														+ toDateFreeProduct[1];
											}
										}
									}

									if ($("#freeProduct" + k).val() === ""
											&& ($("#freeProductPieces" + k)
													.val()
													|| $(
															"#fromDateFreeProduct"
																	+ k).val() || $(
													"#toDateFreeProduct" + k)
													.val() !== "")) {
										check = Number(1);
										swal({
											title : 'Warning!',
											text : 'Please Select The Free Product!!!',
											type : 'warning',
											confirmButtonText : 'OK',
											allowEscapeKey : true,
											confirmButtonClass : "btn btn-raised gradient-right",
											animation : true
										});

									} else if ($("#freeProductPieces" + k)
											.val() === ""
											&& ($("#freeProduct" + k).val()
													|| $(
															"#fromDateFreeProduct"
																	+ k).val() || $(
													"#toDateFreeProduct" + k)
													.val() !== "")) {
										check = Number(1);
										swal({
											title : 'Warning!',
											text : 'Please Enter The No. Of Pieces!!!',
											type : 'warning',
											confirmButtonText : 'OK',
											allowEscapeKey : true,
											confirmButtonClass : "btn btn-raised gradient-right",
											animation : true
										});
									} else if ($("#fromDateFreeProduct" + k)
											.val() === ""
											&& ($("#freeProduct" + k).val()
													|| $(
															"#freeProductPieces"
																	+ k).val() || $(
													"#toDateFreeProduct" + k)
													.val() !== "")) {
										check = Number(1);
										swal({
											title : 'Warning!',
											text : 'Please Enter Starting Date For The Respective Free Product!!!',
											type : 'warning',
											confirmButtonText : 'OK',
											allowEscapeKey : true,
											confirmButtonClass : "btn btn-raised gradient-right",
											animation : true
										});
									} else if ($("#toDateFreeProduct" + k)
											.val() === ""
											&& ($("#freeProduct" + k).val()
													|| $(
															"#freeProductPieces"
																	+ k).val() || $(
													"#fromDateFreeProduct" + k)
													.val() !== "")) {
										check = Number(1);
										swal({
											title : 'Warning!',
											text : 'Please Enter Ending Date For The Respective Free Product!!!',
											type : 'warning',
											confirmButtonText : 'OK',
											allowEscapeKey : true,
											confirmButtonClass : "btn btn-raised gradient-right",
											animation : true
										});
									}
								}
								if ($("#fromDate").val() !== "") {
									if ($("#fromDate").val() !== "") {
										/* var fromDate = ($("#fromDate").val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
										var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
										if(fromMonth < 10){
											fromMonth = "0"+fromMonth;
										}  */
										var fromDate = moment($("#fromDate")
												.val(), "dddd DD MMMM YYYY");
										fromDate = moment(fromDate).format(
												"YYYY-MM-DD");
										//job["pricingDetails"] = fromDate[3]+"-"+fromMonth+"-"+fromDate[1]; 
										job["pricingDetails"] = fromDate;
									}

									if ($("#toDate").val() != "") {
										/* var toDate = ($("#toDate").val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
										var toMonth = getMonth(toDate[2]);   //Method to convert month name to month number
										if(toMonth < 10){
											toMonth = "0"+toMonth;
										} 
										job["pricingDetails"] = job["pricingDetails"] + "_@." + toDate[3]+"-"+toMonth+"-"+toDate[1];  */
										var toDate = moment($("#toDate").val(),
												"dddd DD MMMM YYYY");
										toDate = moment(toDate).format(
												"YYYY-MM-DD");
										job["pricingDetails"] = job["pricingDetails"]
												+ "_@." + toDate;
									}
									job["pricingDetails"] = job["pricingDetails"]
											+ "_@." + $("#price").val();
									if (pricingsDivNumber > Number(0)) {
										for (var k = 1; k <= Number(pricingsDivNumber); k++) {
											if (($("#fromDate" + k).val() !== undefined)
													&& ($("#toDate" + k).val() !== undefined)
													&& ($("#price" + k).val() !== undefined)
													&& ($("#fromDate" + k)
															.val() !== "")
													&& ($("#toDate" + k).val() !== "")
													&& ($("#price" + k).val() !== "")) {
												/* var fromDate = ($("#fromDate"+k).val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
												var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
												if(fromMonth < 10){
													fromMonth = "0"+fromMonth;
												} 
												
												var toDate = ($("#toDate"+k).val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
												var toMonth = getMonth(toDate[2]);   //Method to convert month name to month number
												if(toMonth < 10){
													toMonth = "0"+toMonth;
												} 
												 */
												var fromDate = moment($(
														"#fromDate" + k).val(),
														"dddd DD MMMM YYYY");
												fromDate = moment(fromDate)
														.format("YYYY-MM-DD");

												var toDate = moment($(
														"#toDate" + k).val(),
														"dddd DD MMMM YYYY");
												toDate = moment(toDate).format(
														"YYYY-MM-DD");

												//job["pricingDetails"] = job["pricingDetails"] + "-,@_" + fromDate[3]+"-"+fromMonth+"-"+fromDate[1] + "_@." + toDate[3]+"-"+toMonth+"-"+toDate[1] + "_@." + $("#price"+k).val();
												if (job["pricingDetails"] !== undefined) {
													job["pricingDetails"] = job["pricingDetails"]
															+ "-,@_"
															+ fromDate
															+ "_@."
															+ toDate
															+ "_@."
															+ $("#price" + k)
																	.val();
												} else {
													job["pricingDetails"] = fromDate
															+ "_@."
															+ toDate
															+ "_@."
															+ $("#price" + k)
																	.val();
												}

											}
											if ($("#fromDate" + k).val() === "") {
												check = Number(1);
												swal({
													title : 'Warning!',
													text : 'Please Enter Starting Date For The Respective Price!!!',
													type : 'warning',
													confirmButtonText : 'OK',
													allowEscapeKey : true,
													confirmButtonClass : "btn btn-raised gradient-right",
													animation : true
												});
											} else if ($("#toDate" + k).val() === "") {
												check = Number(1);
												swal({
													title : 'Warning!',
													text : 'Please Enter Ending Date For The Respective Price!!!',
													type : 'warning',
													confirmButtonText : 'OK',
													allowEscapeKey : true,
													confirmButtonClass : "btn btn-raised gradient-right",
													animation : true
												});
											} else if ($("#price" + k).val() === "") {
												check = Number(1);
												swal({
													title : 'Warning!',
													text : 'Please Enter Price For The Product!!!',
													type : 'warning',
													confirmButtonText : 'OK',
													allowEscapeKey : true,
													confirmButtonClass : "btn btn-raised gradient-right",
													animation : true
												});
											}
										}
									}
								}
								if (pricingsDivNumber === Number(0)
										|| check === Number(0)) {
									var categoryName = window.location + "";
									categoryName = categoryName.split("/");
									job["categoryName"] = categoryName[4];
									if (idForFetch !== undefined) {
										categoryName = categoryName[4]
												.split("?");
										job["categoryName"] = categoryName[0];
									}
									if ((($("#fromDateDiscount").val()
											|| $("#toDateDiscount").val() || $(
											"#discount").val()) != "")
											|| $(
													"#checkBoxDiscountAmount,#checkBoxDiscountPercent")
													.is(':checked')) {
										hasValue = Number(1);
										if ($("#fromDateDiscount").val() === "") {
											swal({
												title : 'Warning!',
												text : 'Please Enter Starting Date For The Respective Discount!!!',
												type : 'warning',
												confirmButtonText : 'OK',
												allowEscapeKey : true,
												confirmButtonClass : "btn btn-raised gradient-right",
												animation : true
											});
										} else if ($("#toDateDiscount").val() === "") {
											swal({
												title : 'Warning!',
												text : 'Please Enter Ending Date For The Respective Discount!!!',
												type : 'warning',
												confirmButtonText : 'OK',
												allowEscapeKey : true,
												confirmButtonClass : "btn btn-raised gradient-right",
												animation : true
											});
										} else if ($("#discount").val() === "") {
											swal({
												title : 'Warning!',
												text : 'Please Enter Discount Amount / Percentage!!!',
												type : 'warning',
												confirmButtonText : 'OK',
												allowEscapeKey : true,
												confirmButtonClass : "btn btn-raised gradient-right",
												animation : true
											});
										} else if (!($("#checkBoxDiscountAmount,#checkBoxDiscountPercent")
												.is(':checked'))) {
											swal({
												title : 'Warning!',
												text : 'Please Check Either The Discount Entered Is Flat Discount Or Percentage Discount!!!',
												type : 'warning',
												confirmButtonText : 'OK',
												allowEscapeKey : true,
												confirmButtonClass : "btn btn-raised gradient-right",
												animation : true
											});
										} else {
											job["hasValue"] = hasValue;
											if ($("#fromDateDiscount").val() !== "") {

											}
											/* var fromDate = ($("#fromDateDiscount").val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
											var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
											if(fromMonth < 10){
												fromMonth = "0"+fromMonth;
											} 
											job["fromDateDiscount"] = fromDate[3]+"-"+fromMonth+"-"+fromDate[1]; */

											var fromDate = moment($(
													"#fromDateDiscount").val(),
													"dddd DD MMMM YYYY");
											fromDate = moment(fromDate).format(
													"YYYY-MM-DD");

											job["fromDateDiscount"] = fromDate;
											/* var toDate = ($("#toDateDiscount").val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
											var toMonth = getMonth(toDate[2]);   //Method to convert month name to month number
											if(toMonth < 10){
												toMonth = "0"+toMonth;
											}  */
											/* job["toDateDiscount"] =toDate[3]+"-"+toMonth+"-"+toDate[1]; */

											var toDate = moment($(
													"#toDateDiscount").val(),
													"dddd DD MMMM YYYY");
											toDate = moment(toDate).format(
													"YYYY-MM-DD");
											job["toDateDiscount"] = toDate;

											job["discount"] = $("#discount")
													.val();
											if ($("#checkBoxDiscountAmount")
													.is(':checked')) {
												job["isFlat"] = Number(1);
											} else {
												job["isFlat"] = Number(0);
											}
											alert(JSON.stringify(job));
											$("#submit").prop("disabled", true);
											$
													.ajax({
														type : "POST",
														url : "admin-addEditHall",
														data : JSON
																.stringify(job),
														processData : false,
														contentType : "application/json",
														success : function(data) {
															if (data) {
																if ($(
																		"#editProductId")
																		.val() != "") {
																	window.location = "admin-viewCateringProducts";
																} else {
																	swal({
																		title : 'Success!',
																		text : 'Product Details Successfully Inserted!!!',
																		type : 'success',
																		showConfirmButton : false,
																		allowEscapeKey : true,
																		timer : 3000,
																		animation : true
																	});
																}
															} else {
																doNotRemoveFields = 1;
															}
															$("#submit").prop(
																	"disabled",
																	false);

														},
														error : function(e) {
															alert("Error");
															swal({
																title : 'Error!',
																text : 'Product Details Not Inserted Successfully!!!',
																type : 'error',
																confirmButtonText : "OK",
																allowEscapeKey : true,
																confirmButtonClass : "btn btn-raised gradient-right",
																animation : true
															});
															$("#submit").prop(
																	"disabled",
																	false);

														},
														complete : function() {
															if (doNotRemoveFields === 0) {
																removeAllFields();
															} else {
																doNotRemoveFields = 0;
															}
														}

													});
										}
									} else {
										job["hasValue"] = hasValue;
										$("#submit").prop("disabled", true);
										alert(JSON.stringify(job));
										$
												.ajax({
													type : "POST",
													url : "admin-addEditHall",
													data : JSON.stringify(job),
													processData : false,
													contentType : "application/json",
													success : function(data) {
														if (data) {
															if ($(
																	"#editProductId")
																	.val() != "") {
																window.location = "admin-viewHallProducts";
															} else {
																swal({
																	title : 'Success!',
																	text : 'Product Details Successfully Inserted!!!',
																	type : 'success',
																	showConfirmButton : false,
																	allowEscapeKey : true,
																	timer : 3000,
																	animation : true
																});
															}
														} else {
															doNotRemoveFields = 1;
														}
														$("#submit").prop(
																"disabled",
																false);

													},
													error : function(e) {
														alert("Error");
														swal({
															title : 'Error!',
															text : 'Product Details Not Inserted Successfully!!!',
															type : 'error',
															confirmButtonText : "OK",
															allowEscapeKey : true,
															confirmButtonClass : "btn btn-raised gradient-right",
															animation : true
														});
														$("#submit").prop(
																"disabled",
																false);

													},
													complete : function() {
														if (doNotRemoveFields === 0) {
															removeAllFields();
														} else {
															doNotRemoveFields = 0;
														}
													}

												});
									}
								}

							}
						});
		function removeAllFields() {
			$("#name").val("");
			$("#description").val("");
			$("#availability").val("");
			$("#advancePaymentPercentage").val("");
			if (idForFetch === undefined) {
				//Remove the thumbnails after each insertion being completed from dropzone.js
				$('.dropzone')[0].dropzone.files.forEach(function(file) {
					file.previewElement.remove();
				});

				$('.dropzone')[1].dropzone.files.forEach(function(file) {
					file.previewElement.remove();
				});

				$('.dropzone').removeClass(' dz-started ');
				Dropzone.forElement("._thumnailImage #singleUpload")
						.removeAllFiles();
				Dropzone.forElement("._productImages #multipleUpload")
						.removeAllFiles();
			}
			defaultHallOccasion(true, 0, "Occasion");
			defaultProductType(true, 0, "Hall Type");
			$("#freebie").val("");
			$("#freeProductPieces").val("");
			$("#fromDateFreeProduct").val("");
			$("#toDateFreeProduct").val("");
			if($("#freeProductsCheck").is(":checked")){
				$("#freeProductsCheck").prop("checked",false);
				$("#freeProductsDiv").attr("style","display:none");
			}
			$("#fromDate").val("");
			$("#toDate").val("");
			$("#price").val("");
			if (hasValue === Number(1)) {
				$("#fromDateDiscount").val("");
				$("#toDateDiscount").val("");
				$("#discount").val();
				$("#checkBoxDiscountAmount,#checkBoxDiscountPercent").prop(
						"checked", false);
			}
			hasValue = Number(0);
			if ($("#discountCheck").is(':checked')) {
				$("#discountCheck").prop("checked", false);
				$("#discountDiv").attr("style", "display:none");
			}

			var j = previousFreeDiv;
			for(var k =0; k< Number(Number(j)+Number(1)) ;k++){
				defaultFreeProduct(true,0,"Free Product",k);
				removeFreeProductDiv(k);
			}
			
			previousFreeDiv = Number(0);
			var l = pricingsDivNumber;
			for (var k = 1; k <= l; k++) {
				removeHallPricingDiv(k);
			}

			singleFiles = "";
			multipleFiles = "";
			title = "";
			id = "";
			modelId = "";
			dpImageId = "";
			defaultImageId = "";
			titleLength = "";
			lengthOccasions = "";
			$("#productAvailability").val("");
			$("#editProductId").val("");
			$("#allProductId").val("");
			$("#productStatus").val("");
			$("#occasionName").val("");
			$("#typeName").val("");
			$("#freeProductName").val("");
			$("#freeProductName1").val("");
			$("#freeProductName2").val("");
		}

		function defaultHallOccasion(isInComplete, occasionId, occasionName) {
			// Removing the values from the photo type list
			var abc = "";
			if (isInComplete) {
				abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- Occasion --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- Occasion --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
						+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulOccasion0\">"
						+ "<li data-original-index=\"0\" class=\"selected\" id=\"occasionLi0\" onclick=\"clickOccasionLi('"
						+ 0
						+ "','Occasion')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			} else {
				abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\--" +occasionName+ "--\ aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- "
						+ occasionName
						+ " --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
						+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulOccasion0\">"
						+ "<li data-original-index=\"0\" class=\"\" id=\"occasionLi0\" onclick=\"clickOccasionLi('"
						+ 0
						+ "','Occasion')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			}
			var cde = "";
			var subOccasion = occasionId + "";
			if (subOccasion.length !== 1) {
				subOccasion = subOccasion.split(",");
			}

			for (var i = 0; i < arry3.length; i++) {
				var splittedArray = arry3[i].split("_");
				var classSelected = ""
				if (!isInComplete) {
					for (var j = 0; j < subOccasion.length; j++) {

						if (Number(splittedArray[0]) === Number(subOccasion[j])) {
							classSelected = "class = selected";
						}
					}

				}
				cde = cde
						+ "<li data-original-index='"
						+ Number(Number(i) + Number(1))
						+ "'id='occasionLi"
						+ Number(Number(i) + Number(1))
						+ "' "
						+ classSelected
						+ "><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickOccasionLi('"
						+ Number(Number(i) + Number(1))
						+ "','"
						+ splittedArray[1]
						+ "','"
						+ splittedArray[0]
						+ "','"
						+ classSelected
						+ "')\"><span class=\"text\" title=\""+splittedArray[2]+"\">"
						+ splittedArray[1]
						+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"

			}
			cde = cde + "</ul></div>"

			$("#occasionDiv").html(abc + cde);

		}

		function defaultProductType(isInComplete, typeId, typeName) {
			// Removing the values from the photo type list
			var abc = "";
			if (isInComplete) {
				abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Hall Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Hall Type--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
						+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
						+ "<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"
						+ 0
						+ "','Hall Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Hall Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			} else {
				abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\--" +typeName+"--\ aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"
						+ typeName
						+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
						+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
						+ "<li data-original-index=\"0\" class=\"\" id=\"li0\" onclick=\"clickLi('"
						+ 0
						+ "','Hall Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Hall Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			}
			var cde = "";
			for (var i = 0; i < typeArr.length; i++) {
				var splittedArray = typeArr[i].split("_");
				var classSelected = ""
				if (!isInComplete) {
					if (Number(splittedArray[0]) === Number(typeId)) {
						classSelected = "class = selected";
					}
				}
				cde = cde
						+ "<li data-original-index='"
						+ Number(Number(i) + Number(1))
						+ "'id='li"
						+ Number(Number(i) + Number(1))
						+ "' "
						+ classSelected
						+ "><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"
						+ Number(Number(i) + Number(1))
						+ "','"
						+ splittedArray[1]
						+ "','"
						+ splittedArray[0]
						+ "')\"><span class=\"text\" title=\""+splittedArray[2]+"\">"
						+ splittedArray[1]
						+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"

			}
			cde = cde + "</ul></div>"

			$("#hallTypeDiv").html(abc + cde);

		}
		function defaultFreeProduct(isInComplete,freeProductId,freeProductName,divId){
			var abc ="";
			if(isInComplete){
				 abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Free Product--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Free Product"
					+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id='ulFreeProduct"+divId+"'>"
			}else{
				abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=--"+freeProductName+"-- aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"+freeProductName
				+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id='ulFreeProduct"+divId+"'>"
			}
			var cde = "";
			for (var i = 0; i < freeProductArray.length; i++) {
				var splittedArray = freeProductArray[i].split("_");
				var classSelected = ""
				if(!isInComplete){
					if(Number(splittedArray[0]) === Number(freeProductId)){
						classSelected = "class = selected";
					}
				}
					cde = cde
					+ "<li data-original-index='"
					+ Number(Number(i) + Number(1))+ "'id='freeProductLi"+ divId + Number(Number(i) + Number(1))+ "' "+classSelected+"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFreeProductLi('"
					+ Number(Number(i) + Number(1))
					+ "','"
					+ splittedArray[1]
					+ "','"
					+ splittedArray[0]
					+ "')\"><span class=\"text\">"
					+ splittedArray[1]
					+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					
					
			}
			cde = cde + "</ul></div>"
			if(divId === Number(0)){
				$("#freeProductSelect").html(abc + cde);
			}else{
				$("#freeProductSelect"+divId).html(abc + cde);
			}
			
		}
		
		function fetchHallById(hallId) {
			$.ajax({
						type : "GET",
						url : "admin-fetchHallByHallId?id=" + hallId,
						data : "",
						processData : false,
						contentType : "application/json",
						success : function(data) {
							if (data === "null" || data === null || data === ""
									|| typeof data === "undefined") {
								alert("Error Page");
							}
							if (data.status) {
								$("#name").val(data.hall.name);
								$("#description").val(data.hall.description);
								for (var i = 0; i < data.listIntProductOccasion.length; i++) {
									if (Number(i) === Number(0)) {
										editOccasionId = data.listIntProductOccasion[i].occasion.id;
										editOccasionName = data.listIntProductOccasion[i].occasion.name;
									} else {
										editOccasionId = editOccasionId
												+ ","
												+ data.listIntProductOccasion[i].occasion.id;
										editOccasionName = editOccasionName
												+ ","
												+ data.listIntProductOccasion[i].occasion.name;
									}
								}

								$("#occasionName").val(editOccasionId);
								title = editOccasionName;
								id = editOccasionId;
								lengthOccasions = data.listIntProductOccasion.length;
								titleLength = "same";
								defaultHallOccasion(false, editOccasionId,editOccasionName);
								$("#typeName").val(data.hall.productType.id);
								defaultProductType(false,Number(data.hall.productType.id),data.hall.productType.typeName);
								$("#freebie").val(data.hall.freebie);
								$("#advancePaymentPercentage").val(data.hall.advancePaymentPercentage);
								$("#hallDisplayDiv").html("");
								showDpEdit(data.hall.dpUrl, data.hall.id);
								singleFiles = Number(1);
								$("#defaultDpImage").val(data.hall.dpUrl);
								$("#hallImagesDiv").html("");
								for (var i = 0; i < data.listProductImagesVideos.length; i++) {
									if (data.listProductImagesVideos[i].photoVideo) {
										showImagesEdit(data.listProductImagesVideos[i].productImageVideoUrl,data.listProductImagesVideos[i].id);
										defaultImageId = Number(1);
										if (i === Number(0)) {
											modelId = data.listProductImagesVideos[i].id;
										} else {
											modelId = modelId
													+ ","
													+ data.listProductImagesVideos[i].id;

										}
									}
								}
								if (data.listFreesProducts[0] !== null) {
									$("#freeProductsCheck").prop("checked",true);
									$("#freeProductsDiv").attr("style","display:block");
									if (data.listFreesProducts[0] !== null) {
										$("#showFreeProducts").attr("style","display:block");
										var freeProducts = "";
										$("#freeProductTable > tbody").html("");
										for (var i = 0; i < data.listFreesProducts.length; i++) {
											var active;
											if (data.listFreesProducts[i].status) {
												active = "Yes";
											} else {
												active = "No";
											}
											var xyz = new Date(data.listFreesProducts[i].validFrom);
											xyz = xyz.getFullYear()+ "-"+ (xyz.getMonth() + 1 > 9 ? xyz.getMonth() + 1: "0"+ (xyz.getMonth() + 1))+ "-"+ (xyz.getDate() > 9 ? xyz.getDate() : "0"+ (xyz.getDate()));
											var mno = new Date(data.listFreesProducts[i].validTo);
											mno = mno.getFullYear()+ "-"+ (mno.getMonth() + 1 > 9 ? mno.getMonth() + 1: "0"+ (mno.getMonth() + 1))+ "-"+ (mno.getDate() > 9 ? mno.getDate() : "0"+ (mno.getDate()));
											freeProducts = freeProducts
													+ "<tr><td class=\"text-center\">"
													+ Number(Number(i)
															+ Number(1))
													+ "</td>"
													+ "<td class=\"text-center\">"
													+ xyz
													+ "</td>"
													+ "<td class=\"text-center\">"
													+ mno
													+ "</td>"
													+ "<td class=\"text-center\">"
													+ data.listFreesProducts[i].productName
													+ "</td>"
													+ "<td class=\"text-center\">"
													+ data.listFreesProducts[i].qty
													+ "</td>"
													+ "<td class=\"text-center\">"
													+ active + "</td>"
										}
										$("#freeProductTable > tbody").html(freeProducts);
									}
								}

								if(data.hall.noOfBedRoom !== Number(0)){
									$('#hallFeatureYes1').prop("checked",true);
									$("#roomsDiv").removeClass("hideDiv");
									$("#noOfRooms").val(data.hall.noOfBedRoom);
								}else{
									$('#hallFeatureNo1').prop("checked",true);
								}
								
								if(data.hall.hasParking){
									$("#hallFeatureYes2").prop("checked",true);
								}else{
									$("#hallFeatureNo2").prop("checked",true);
								}
								
								
								 if(data.hall.lawnArea !== Number(0)){
									$("#hallFeatureYes3").prop("checked",true);
									$("#lawnDiv").removeClass("hideDiv");
									$("#lawnArea").val(data.hall.lawnArea);
									$("#lawnUnitDiv").removeClass("hideDiv")
								}else{
									$("#hallFeatureNo3").prop("checked",true);
								}
								 
								if(data.hall.crackerAllowed){
									$("#hallFeatureYes4").prop("checked",true);
								}else{
									$("#hallFeatureNo4").prop("checked",false);
								}
								
								if(data.hall.celebrationArea !== Number(0)){
									$("#hallFeatureYes5").prop("checked",true);
									$("#extraSpaceDiv").removeClass("hideDiv");
									$("#extraSpaceArea").val(data.hall.celebrationArea);
									$("#extraSpaceUnitDiv").removeClass("hideDiv");
								}else{
									$("#hallFeatureNo5").prop("checked",true);
								}
								
								if(data.hall.hasWifi){
									$("#hallFeatureYes6").prop("checked",true);
								}else{
									$("#hallFeatureNo6").prop("checked",true);
								}
								
								if(data.hall.noOfWashRoom !== Number(0)){
									$("#hallFeatureYes7").prop("checked",true);
									$("#noOfWashRooms").val(data.hall.noOfWashRoom);
									$("#washRoomsDiv").removeClass("hideDiv");
								}else{
									$("#hallFeatureNo7").prop("checked",true);
								}
								
								if(data.hall.separateKitchen){
									$("#hallFeatureYes8").prop("checked",true);
								}else{
									$("#hallFeatureNo8").prop("checked",true);
								}
								
								if(data.hall.separateStoreRoom){
									$("#hallFeatureYes9").prop("checked",true);
								}else{
									$("#hallFeatureNo9").prop("checked",true);
								}
								
								$("#eatingSeatCapacity").val(data.hall.eatingSeatCapacity);
								$("#showPreviousPrices").attr("style","display:block");
								var priceDataTable = "";
								$("#priceTable > tbody").html("");
								for (var i = 0; i < data.listProductPricings.length; i++) {
									var active;
									if (data.listProductPricings[i].status) {
										active = "Yes";
									} else {
										active = "No";
									}
									var xyz = new Date(data.listProductPricings[i].priceFromDate);
									xyz = xyz.getFullYear()+ "-"+ (xyz.getMonth() + 1 > 9 ? xyz.getMonth() + 1 : "0"+ (xyz.getMonth() + 1))+ "-"+ (xyz.getDate() > 9 ? xyz.getDate() : "0"+ (xyz.getDate()));
									var mno = new Date(data.listProductPricings[i].priceToDate);
									mno = mno.getFullYear()+ "-"+ (mno.getMonth() + 1 > 9 ? mno.getMonth() + 1 : "0"+ (mno.getMonth() + 1))+ "-"+ (mno.getDate() > 9 ? mno.getDate() : "0"+ (mno.getDate()));

									priceDataTable = priceDataTable
											+ "<tr><td class=\"text-center\">"
											+ Number(Number(i) + Number(1))
											+ "</td>"
											+ "<td class=\"text-center\">"
											+ xyz
											+ "</td>"
											+ "<td class=\"text-center\">"
											+ mno
											+ "</td>"
											+ "<td class=\"text-center\"><i class=\"fa fa-inr\" aria-hidden=\"true\">"
											+ data.listProductPricings[i].price
											+ "</i></td>"
											+ "<td class=\"text-center\">"
											+ active + "</td>"
								}
								$("#priceTable > tbody").html(priceDataTable);
								if (data.listSellerDiscount[0] !== null) {
									$("#discountCheck").prop("checked", true);
									$("#discountDiv").attr("style","display:block");
									var discountDataTable = "";
									$("#discountTable > tbody").html("");
									$("#showDiscountDiv").attr("style","display:block");
									for (var i = 0; i < data.listSellerDiscount.length; i++) {
										var active;
										if (data.listSellerDiscount[i].status) {
											active = "Yes";
										} else {
											active = "No";
										}
										var discount;
										if (data.listSellerDiscount[i].flatDiscount) {
											discount = "<i class=\"fa fa-inr\" aria-hidden=\"true\">"+ data.listSellerDiscount[i].discount+ "</i>";
										} else {
											discount = data.listSellerDiscount[i].discount+ " " + "%";
										}
										var xyz = new Date(data.listSellerDiscount[i].fromDateDiscount);
										xyz = xyz.getFullYear()+ "-"+ (xyz.getMonth() + 1 > 9 ? xyz.getMonth() + 1 : "0"+ (xyz.getMonth() + 1))+ "-"+ (xyz.getDate() > 9 ? xyz.getDate() : "0"+ (xyz.getDate()));

										var mno = new Date(data.listSellerDiscount[i].toDateDiscount);
										mno = mno.getFullYear()+ "-"+ (mno.getMonth() + 1 > 9 ? mno.getMonth() + 1 : "0"+ (mno.getMonth() + 1))+ "-"+ (mno.getDate() > 9 ? mno.getDate() : "0"+ (mno.getDate()));
										discountDataTable = discountDataTable
												+ "<tr><td class=\"text-center\">"
												+ Number(Number(i) + Number(1))
												+ "</td>"
												+ "<td class=\"text-center\">"
												+ xyz + "</td>"
												+ "<td class=\"text-center\">"
												+ mno + "</td>"
												+ "<td class=\"text-center\">"
												+ discount + "</td>"
												+ "<td class=\"text-center\">"
												+ active + "</td>"
									}
									$("#discountTable > tbody").html(discountDataTable);
								}
								$("#productStatusDiv").attr("style","display:block");
								if (data.hall.status) {
									productStatus("Active");
									$("#productStatus").val("Active");
								} else {
									productStatus("Inactive");
									$("#productStatus").val("Inactive")
								}
								if (data.hall.availability) {
									productAvailability("Yes");
								} else {
									productAvailability("No");
								}
								
								$("#productStatusHeader").removeClass("hideDiv");
								$("#productNameDiv").html("");
								var productNameDiv = "<div class=\"col-sm-4 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<div class=\"form-line\">"
										+ "<input type=\"text\" class=\"form-control\" name=\"name\" id =\"name\" value=\""+data.hall.name+"\" placeholder=\"Product Name\">"
										+ "</div>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-4 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<div class=\"form-line\">"
										+ "<input type=\"text\" class=\"form-control\" name=\"productId\" id =\"productId\" value ="+data.hall.id+" readonly=\"readonly\" placeholder=\"Product Id\">"
										+ "</div>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-4 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<div class=\"form-line\">"
										+ "<input type=\"text\" class=\"form-control\" name=\"sellerId\" id =\"sellerId\" value =\"${sessionScope.sellerDetailsSession.id}\" readonly=\"readonly\" placeholder=\"Product Id\">"
										+ "</div>" + "</div>" + "</div>"
								$("#productNameDiv").html(productNameDiv);
								$("#editProductId").val(data.hall.id);
								$("#allProductId").val(data.hall.allProducts.id);
							}
						},
						error : function(data) {
							alert("Error");
						}
					});
		}
		function productAvailability(str, str3) {
			$("#productAvailability").val(str);
			if (str === "0" || str === undefined) {
				str = "Availability";
			}
			var mno = "<div class=\"form-group drop-custum\">"
					+ "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+str+"  --\"><span class=\"filter-option pull-left\">--"
					+ str
					+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
					+ "<ul class=\"dropdown-menu inner\" role=\"menu\" id=\"productAvailabilityUl\">"
					+ "<li data-original-index=\"1\" id=\"productAvailabilityLi0\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"productAvailability('Yes','"
					+ 0
					+ "')\"><span class=\"text\">Yes</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+ "<li data-original-index=\"2\" id=\"productAvailabilityLi1\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"productAvailability('No','"
					+ 1
					+ "')\"><span class=\"text\">No</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
					+ "</div>"

			$("#availabilityDiv").html(mno);
			var lengthOfUl = $("#productAvailabilityUl li").size();
			for (var i = 0; i < lengthOfUl; i++) {
				var getdata = $(
						"ul#productAvailabilityUl li#productAvailabilityLi"
								+ Number(i)).find('span').text();
				if (str === getdata) {
					$("#productAvailabilityLi" + Number(i))
							.addClass("selected");
				} else {
					$("#productAvailabilityLi" + Number(i)).removeClass(
							"selected");
				}
			}

		}
		function productStatus(str, str3) {
			$("#productStatus").val(str);
			if (str === "0" || str === undefined) {
				str = "Product Status";
			}
			var mno = "<div class=\"form-group drop-custum\">"
					+ "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+str+"  --\"><span class=\"filter-option pull-left\">--"
					+ str
					+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
					+ "<ul class=\"dropdown-menu inner\" role=\"menu\" id=\"productStatusUl\">"
					+ "<li data-original-index=\"0\" id=\"productStatusLi0\"class=\"selected\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"productStatus('Product Status','"
					+ 0
					+ "')\"><span class=\"text\">Product Status</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+ "<li data-original-index=\"1\" id=\"productStatusLi1\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"productStatus('Active','"
					+ 1
					+ "')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+ "<li data-original-index=\"2\" id=\"productStatusLi2\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"productStatus('Inactive','"
					+ 2
					+ "')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
					+ "</div>"

			$("#productStatusDiv").html(mno);
			var lengthOfUl = $("#productStatusUl li").size();
			for (var i = 0; i < lengthOfUl; i++) {
				var getdata = $(
						"ul#productStatusUl li#productStatusLi" + Number(i))
						.find('span').text();
				if (str === getdata) {
					$("#productStatusLi" + Number(i)).addClass("selected");
				} else {
					$("#productStatusLi" + Number(i)).removeClass("selected");
				}
			}

		}
		var abc = "";
		function showImagesEdit(imageName, imageId) {
			abc = abc
					+ "<div class=\"col-md-4 col-sm-6 col-xs-12 editImages\">"
					+ "<div class=\"thumbnail\">"
					+ "<img src=\"getImage?id="
					+ imageName
					+ "\" class=\"img-responsive\" data-toggle=\"modal\" onclick=\"showModal('"
					+ imageName
					+ "','"
					+ imageId
					+ "')\"/>"
					+ "<span class=\"label label-danger prdctName\">25 December 2015</span>"
					+ "</div>" + "</div>";
			$("#imagesDiv")
					.removeClass(
							"col-lg-8 col-md-6 col-sm-6 col-xs-12 _productImages")
					.addClass(
							"col-lg-6 col-md-6 col-sm-6 col-xs-12 _productImages");
			$("#labelImagesDiv").attr("style", "margin-left:3%;");
			$("#hallImagesDiv").html(abc);
		}

		function showModal(imageName, imageId) {
			modalImageId = imageId;
			if (!($("#allModals").children("#" + imageId).length > 0)) {
				var abc = "<div class=\"modal fade\" id="+imageId+" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">"
						+ "<div class=\"modal-dialog\" role=\"document\">"
						+ "<div class=\"modal-content row singleImageEdit\">"
						+ "<div class=\"col-md-4 col-xs-6 col-sm-12 thumbnail\" id=\"editImageDiv\">"
						+ "<img src=\"getImage?id="
						+ imageName
						+ "\" class=\"img-responsive\"/>"
						+ "</div>"
						+ "<div class=\"col-md-8 col-xs-6 col-sm-12 _productImages\">"
						+ "<form action=\"#\" id=\'singleUpload"+imageId+"\' class=\"dropzone\" method=\"post\" enctype=\"multipart/form-data\">"
						+ "<div class=\"dz-message\">"
						+ "<div class=\"drag-icon-cph\">"
						+ "<i class=\"material-icons\">touch_app</i>"
						+ "</div>"
						+ "<h3>Drop files here or click to upload.</h3>"
						+ "<em>(This is just a demo dropzone. Selected files are <strong>not</strong> actually uploaded.</em>"
						+ "</div>"
						+ "<div class=\"fallback\">"
						+ "<input name=\"file\" type=\"file\" multiple />"
						+ "</div>"
						+ "</form>"
						+ "</div>"
						+ "<div class =\"row\">"
						+ "<div class=\"modal-footer col-md-12 col-sm-12 col-xs-12 footerModal\">"
						+ "<button type=\"button\" class=\"btn btn-secondary btn-raised\" data-dismiss=\"modal\">Close</button>"
						+ "<button type=\"button\" class=\"btn btn-raised gradient-right\">Save changes</button>"
						+ "</div>" + "</div>" + "</div>" + "</div>" + "</div>"
				$("#allModals").append(abc);
				createUserDropzone(imageId);
			}
			$("#" + imageId).modal({
				backdrop : 'static',
				keyboard : false,
				show : true
			});

		}
		//Upload and renaming the files being uploaded in dropzone.js
		var modalImageId;
		function createUserDropzone(imageId) {
			var myDropzone = new Dropzone("#allModals #singleUpload" + imageId,
					{
						url : "singleUpload",
						init : function() {
							this.on("success", function(file, response) {
								if (defaultImageId === Number(1)) {
									defaultImageId = "";
								}
								var a = this.element.classList + "";
								a = a.split("_");
								classPath = $("form." + "_" + a[1]).parent()
										.attr("class");
								classPath = classPath.split("_");
								if (defaultImageId === "") {
									defaultImageId = "Hall" + "+@-"
											+ classPath[1] + "+@-" + dateTime
											+ file.name + "+@-" + modalImageId;
								} else {
									defaultImageId = defaultImageId + "-,@_"
											+ "Hall" + "+@-" + classPath[1]
											+ "+@-" + dateTime + file.name
											+ "+@-" + modalImageId;
								}
							});
						},
						renameFilename : function(fileName) {
							var classpath = fileName;
							classpath = classpath.split("_");
							return "Hall" + "_" + dateTime + classpath[0];

						}

					});
		}
		var efg = "";
		function showDpEdit(imageUrl, imageId) {
			efg = efg
					+ "<div class=\"col-md-4 col-sm-12 col-xs-12 editImages\">"
					+ "<div class=\"thumbnail\">"
					+ "<img src=\"getImage?id="
					+ imageUrl
					+ "\" class=\"img-responsive\" data-toggle=\"modal\" onclick=\"showDpModal('"
					+ imageUrl
					+ "','"
					+ imageId
					+ "')\"/>"
					+ "<span class=\"label label-danger prdctName\">25 December 2015</span>"
					+ "</div>" + "</div>";
			$("#displayDiv")
					.removeClass(
							"col-lg-4 col-md-6 col-sm-6 col-xs-12 _thumnailImage")
					.addClass(
							"col-lg-6 col-md-6 col-sm-6 col-xs-12 _thumnailImage");
			$("#labelDisplayDiv").attr("style", "margin-left:2%;");
			$("#hallDisplayDiv").html(efg);
		}
		function showDpModal(imageName, imageId) {
			dpImageId = imageId;
			if (!($("#dpModals").children("#" + imageId).length > 0)) {
				var abc = "<div class=\"modal fade\" id="+imageId+" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">"
						+ "<div class=\"modal-dialog\" role=\"document\">"
						+ "<div class=\"modal-content row singleImageEdit\">"
						+ "<div class=\"col-md-4 col-xs-6 col-sm-12 thumbnail\" id=\"editImageDiv\">"
						+ "<img src=\"getImage?id="
						+ imageName
						+ "\" class=\"img-responsive\"/>"
						+ "</div>"
						+ "<div class=\"col-md-8 col-xs-6 col-sm-12 _thumnailImage\">"
						+ "<form action=\"#\" id=\'singleUpload"+imageId+"\' class=\"dropzone\" method=\"post\" enctype=\"multipart/form-data\">"
						+ "<div class=\"dz-message\">"
						+ "<div class=\"drag-icon-cph\">"
						+ "<i class=\"material-icons\">touch_app</i>"
						+ "</div>"
						+ "<h3>Drop files here or click to upload.</h3>"
						+ "<em>(This is just a demo dropzone. Selected files are <strong>not</strong> actually uploaded.</em>"
						+ "</div>"
						+ "<div class=\"fallback\">"
						+ "<input name=\"file\" type=\"file\" multiple />"
						+ "</div>"
						+ "</form>"
						+ "</div>"
						+ "<div class =\"row\">"
						+ "<div class=\"modal-footer col-md-12 col-sm-12 col-xs-12 footerModal\">"
						+ "<button type=\"button\" class=\"btn btn-secondary btn-raised\" data-dismiss=\"modal\">Close</button>"
						+ "<button type=\"button\" class=\"btn btn-raised gradient-right\">Save changes</button>"
						+ "</div>" + "</div>" + "</div>" + "</div>" + "</div>"
				$("#dpModals").append(abc);
				createDpDropzone(imageId);
			}
			$("#" + imageId).modal({
				backdrop : 'static',
				keyboard : false,
				show : true
			});

		}
		function createDpDropzone(imageId) {
			var myDropzone = new Dropzone("#dpModals #singleUpload" + imageId,
					{
						url : "singleUpload",
						init : function() {
							this.on("success", function(file, response) {
								if (singleFiles === Number(1)) {
									$("#defaultDpImage").val("");
									singleFiles = "";
								}
								var a = this.element.classList + "";
								a = a.split("_");
								classPath = $("form." + "_" + a[1]).parent()
										.attr("class");
								classPath = classPath.split("_");
								if (singleFiles === "") {
									singleFiles = "Hall" + "+@-" + classPath[1]
											+ "+@-" + dateTime + file.name
											+ "+@-" + dpImageId;
								} else {
									singleFiles = singleFiles + "-,@_" + "Hall"
											+ "+@-" + classPath[1] + "+@-"
											+ dateTime + file.name + "+@-"
											+ dpImageId;
								}
							});
						},
						renameFilename : function(fileName) {
							var classpath = fileName;
							classpath = classpath.split("_");
							return "Hall" + "_" + dateTime + classpath[0];

						}

					});
		}

		$("#price,#price1,#price2")
				.click(
						function() {
							var i = "";
							if (this.id.indexOf("1") >= 0) {
								i = 1;
							} else if (this.id.indexOf("2") >= 0) {
								i = 2;
							}
							var fromDate = moment($("#fromDate" + i).val(),
									"dddd DD MMMM YYYY");
							fromDate = moment(fromDate).format("YYYY-MM-DD");
							var toDate = moment($("#toDate" + i).val(),
									"dddd DD MMMM YYYY");
							;
							toDate = moment(toDate).format("YYYY-MM-DD");

							if (moment(toDate).isBefore(moment(fromDate))) {
								swal({
									title : 'Warning!',
									text : 'Ending Date Cannot Be Before Starting Date!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
								$("#toDate" + i).val("");
								$("#toDate" + i).attr("disabled", false);
								$("#price" + i).val("");
								$("#price" + i).attr("readonly", true);
							} else if (moment(fromDate).isSame(moment(toDate))) {
								swal({
									title : 'Warning!',
									text : 'Ending Date Cannot Be Same As Starting Date!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
								$("#toDate" + i).val("");
								$("#toDate" + i).attr("disabled", false);
								$("#price" + i).val("");
								$("#price" + i).attr("readonly", true);
							} else if ($("#fromDate" + i).val() !== "") {
								if (i !== "") {
									if (i === Number(1)) {
										if (($("#fromDate" + i).val() === $(
												"#fromDate").val())
												&& ($("#toDate" + i).val() === $(
														"#toDate").val())) {
											swal({
												title : 'Warning!',
												text : 'You Have Already Entered Price Within The Same Range Of Dates!!!',
												type : 'warning',
												confirmButtonText : 'OK',
												allowEscapeKey : true,
												confirmButtonClass : "btn btn-raised gradient-right",
												animation : true
											});
											$("#fromDate" + i).val("");
											$("#toDate" + i).val("");
											$("#toDate" + i).attr("disabled",
													false);
											$("#price" + i).val("");
											$("#price" + i).attr("readonly",
													true);
										}
									} else {
										if (($("#fromDate" + i).val() === $(
												"#fromDate").val())
												&& ($("#toDate" + i).val() === $(
														"#toDate").val())) {
											swal({
												title : 'Warning!',
												text : 'You Have Already Entered Price Within The Same Range Of Dates!!!',
												type : 'warning',
												confirmButtonText : 'OK',
												allowEscapeKey : true,
												confirmButtonClass : "btn btn-raised gradient-right",
												animation : true
											});
											$("#fromDate" + i).val("");
											$("#toDate" + i).val("");
											$("#toDate" + i).attr("disabled",
													false);
											$("#price" + i).val("");
											$("#price" + i).attr("readonly",
													true);
										} else {
											if (($("#fromDate" + i).val() === $(
													"#fromDate"
															+ Number(Number(i)
																	- Number(1)))
													.val())
													&& ($("#toDate" + i).val() === $(
															"#toDate"
																	+ Number(Number(i)
																			- Number(1)))
															.val())) {
												swal({
													title : 'Warning!',
													text : 'You Have Already Entered Price Within The Same Range Of Dates!!!',
													type : 'warning',
													confirmButtonText : 'OK',
													allowEscapeKey : true,
													confirmButtonClass : "btn btn-raised gradient-right",
													animation : true
												});
												$("#fromDate" + i).val("");
												$("#toDate" + i).val("");
												$("#toDate" + i).attr(
														"disabled", false);
												$("#price" + i).val("");
												$("#price" + i).attr(
														"readonly", true);
											}
										}
									}
								}

							}

						});
		$("#discount")
				.click(
						function() {
							var fromDate = moment($("#fromDateDiscount").val(),
									"dddd DD MMMM YYYY");
							fromDate = moment(fromDate).format("YYYY-MM-DD");
							var toDate = moment($("#toDateDiscount").val(),
									"dddd DD MMMM YYYY");
							;
							toDate = moment(toDate).format("YYYY-MM-DD");

							if (moment(toDate).isBefore(moment(fromDate))) {
								swal({
									title : 'Warning!',
									text : 'Ending Date Cannot Be Before Starting Date!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
								$("#toDateDiscount").val("");
								$("#discount").val("");
							} else if (moment(fromDate).isSame(moment(toDate))) {
								swal({
									title : 'Warning!',
									text : 'Ending Date Cannot Be Same As Starting Date!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
								$("#toDateDiscount").val("");
								$("#discount").val("");
							}

						});
		$("#fromDate").mouseleave(function() {
			if ($("#fromDate").val() !== "") {
				$("#toDate").attr("disabled", false);
				$("#fromDate").attr("disabled", true);
			}
		});
		$("#toDate").mouseleave(function() {
			if ($("#toDate").val() !== "") {
				var fromDate = moment($("#toDate").val(), "dddd DD MMMM YYYY");
				fromDate = fromDate.add(1, 'days');
				fromDate = moment(fromDate).format("dddd DD MMMM YYYY");
				if ($("#fromDate1").val() === "") {
					$("#fromDate1").val(fromDate);
				}
			}
		});
		$("#price").click(function() {
			if ($("#toDate").val() !== "") {
				$("#price").attr("readonly", false);
				$("#toDate").attr("disabled", true);
			}
		});

		$("#fromDate1").mouseleave(function() {
			if ($("#fromDate1").val() !== "") {
				$("#toDate1").attr("disabled", false);
				$("#fromDate1").attr("disabled", true);
			}
		});
		$("#toDate1")
				.mouseleave(
						function() {
							if ($("#toDate1").val() !== "") {
								var fromDate = moment($("#toDate1").val(),
										"dddd DD MMMM YYYY");
								fromDate = fromDate.add(1, 'days');
								fromDate = moment(fromDate).format(
										"dddd DD MMMM YYYY");
								if ($("#fromDate2").val() === "") {
									$("#fromDate2").val(fromDate);
								}
							}
						});
		$("#price1").click(function() {
			if ($("#toDate1").val() !== "") {
				$("#price1").attr("readonly", false);
				$("#toDate1").attr("disabled", true);
			}
		});
		$("#fromDate2").mouseleave(function() {
			if ($("#fromDate2").val() !== "") {
				$("#toDate2").attr("disabled", false);
			}
			$("#fromDate2").attr("disabled", true);
		});
		$("#price2").click(function() {
			if ($("#toDate2").val() !== "") {
				$("#price2").attr("readonly", false);
				$("#toDate2").attr("disabled", true);
			}
		});
		$("#clearPlusBtn,#clearPlusBtn1,#clearPlusBtn2")
				.click(
						function() {
							if (this.id === "clearPlusBtn") {
								$("#fromDate").val("");
								$("#toDate").val("");
								$("#toDate").attr("disabled", true);
								$("#price").val("");
								$("#price").attr("readonly", true);
								$("#fromDate").attr("disabled", false);
								/* $("#toDate").attr("disabled",false);
								$("#price").attr("disabled",false); */
							} else if (this.id === "clearPlusBtn1") {
								var fromDate = moment($("#toDate").val(),
										"dddd DD MMMM YYYY");
								fromDate = fromDate.add(1, 'days');
								fromDate = moment(fromDate).format(
										"dddd DD MMMM YYYY");
								$("#fromDate1").val(fromDate);
								$("#fromDate1").attr("disabled", false);
								$("#toDate1").val("");
								$("#toDate1").attr("disabled", true);
								$("#price1").val("");
								$("#price1").attr("readonly", true);
								/* $("#fromDate1").attr("disabled",false);
								$("#toDate1").attr("disabled",true);
								$("#price1").attr("disabled",true);  */
							} else {
								var fromDate = moment($("#toDate1").val(),
										"dddd DD MMMM YYYY");
								fromDate = fromDate.add(1, 'days');
								fromDate = moment(fromDate).format(
										"dddd DD MMMM YYYY");

								$("#fromDate2").val(fromDate);
								$("#fromDate2").attr("disabled", false);
								$("#toDate2").val("");
								$("#toDate2").attr("disabled", true);
								$("#price2").val("");
								$("#price2").attr("readonly", true);
								/* $("#fromDate2").attr("disabled",false);
								$("#toDate2").attr("disabled",true);
								$("#price2").attr("disabled",true); */
							}
						});
		var previousFreeDiv = Number(0);
		$("#freeProductPieces,#freeProductPieces1,#freeProductPieces2")
				.click(
						function() {
							alert("I am There" + this.id);
							var i = "";
							if (this.id.indexOf("1") >= 0) {
								i = 1;
							} else if (this.id.indexOf("2") >= 0) {
								i = 2;
							}
							var fromDate = moment($("#fromDateFreeProduct" + i)
									.val(), "dddd DD MMMM YYYY");
							fromDate = moment(fromDate).format("YYYY-MM-DD");
							var toDate = moment($("#toDateFreeProduct" + i)
									.val(), "dddd DD MMMM YYYY");
							;
							toDate = moment(toDate).format("YYYY-MM-DD");

							if (moment(toDate).isBefore(moment(fromDate))) {
								check = Number(1);
								swal({
									title : 'Warning!',
									text : 'Ending Date Cannot Be Before Starting Date!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
								$("#toDateFreeProduct" + i).val("");
								$("#toDateFreeProduct" + i).attr("disabled",
										false);
								$("#freeProductPieces" + i).val("");
								$("#freeProductPieces" + i).attr("readonly",
										true);
							} else if (moment(fromDate).isSame(moment(toDate))) {
								check = Number(1);
								swal({
									title : 'Warning!',
									text : 'Ending Date Cannot Be Same As Starting Date!!!',
									type : 'warning',
									confirmButtonText : 'OK',
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
								$("#toDateFreeProduct" + i).val("");
								$("#toDateFreeProduct" + i).attr("disabled",
										false);
								$("#freeProductPieces" + i).val("");
								$("#freeProductPieces" + i).attr("readonly",
										true);
							} else if ($("#fromDateFreeProduct" + i).val() !== "") {

								if (i !== "") {
									if (i === Number(1)) {
										if (($("#fromDateFreeProduct" + i)
												.val() === $(
												"#fromDateFreeProduct").val())
												&& ($("#toDateFreeProduct" + i)
														.val() === $(
														"#toDateFreeProduct")
														.val())) {
											check = Number(1);
											swal({
												title : 'Warning!',
												text : 'You Have Already Entered Price Within The Same Range Of Dates!!!',
												type : 'warning',
												confirmButtonText : 'OK',
												allowEscapeKey : true,
												confirmButtonClass : "btn btn-raised gradient-right",
												animation : true
											});
											var fromStartingDate = moment($(
													"#toDateFreeProduct" + i)
													.val(), "dddd DD MMMM YYYY");
											fromStartingDate = fromStartingDate
													.add(1, 'days')
											fromStartingDate = moment(
													fromStartingDate).format(
													"dddd DD MMMM YYYY");
											$("#fromDateFreeProduct" + i).val(
													fromStartingDate);
											$("#toDateFreeProduct" + i).val("");
											$("#toDateFreeProduct" + i).attr(
													"disabled", false);
											$("#freeProductPieces" + i).val("");
											$("#freeProductPieces" + i).attr(
													"readonly", true);
										}
									} else {
										if (($("#fromDateFreeProduct" + i)
												.val() === $(
												"#fromDateFreeProduct").val())
												&& ($("#toDateFreeProduct" + i)
														.val() === $(
														"#toDateFreeProduct")
														.val())) {
											check = Number(1);
											swal({
												title : 'Warning!',
												text : 'You Have Already Entered Price Within The Same Range Of Dates!!!',
												type : 'warning',
												confirmButtonText : 'OK',
												allowEscapeKey : true,
												confirmButtonClass : "btn btn-raised gradient-right",
												animation : true
											});
											var fromStartingDate = moment($(
													"#toDateFreeProduct" + i)
													.val(), "dddd DD MMMM YYYY");
											fromStartingDate = fromStartingDate
													.add(1, 'days')
											fromStartingDate = moment(
													fromStartingDate).format(
													"dddd DD MMMM YYYY");

											$("#fromDateFreeProduct" + i).val(
													fromStartingDate);
											$("#toDateFreeProduct" + i).val("");
											$("#toDateFreeProduct" + i).attr(
													"disabled", false);
											$("#freeProductPieces" + i).val("");
											$("#freeProductPieces" + i).attr(
													"readonly", true);
										}
									}
								}

							}
						});
		$("#plusbtnFreeDiv, #plusBtnFreeDiv1, #plusbtnFreeDiv2").click(
				function() {
					addFreeDiv();
				});
		function addFreeDiv() {
			if ($("#freeProductName" + previousFreeDiv).val() === ""
					|| $("#freeProductName").val() === "") {
				swal({
					title : 'Warning!',
					text : 'Please Select A Free Product!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});

			} else if ($("#freeProductPieces" + previousFreeDiv).val() === ""
					|| $("#freeProductPieces").val() === "") {
				swal({
					title : 'Warning!',
					text : 'Please Enter No. Of Pieces To Be Provided!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			} else if ($("#fromDateFreeProduct" + previousFreeDiv).val() === ""
					|| $("#fromDateFreeProduct").val() === "") {
				swal({
					title : 'Warning!',
					text : 'Please Enter Starting Date Of The Free Product!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			} else if ($("#toDateFreeProduct" + previousFreeDiv).val() === ""
					|| $("#toDateFreeProduct").val() === "") {
				swal({
					title : 'Warning!',
					text : 'Please Enter Ending Date Of The Free Product!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			} else {
				if ((previousFreeDiv === Number(0))) {
					$("#fromDateFreeProduct").attr("disabled", true);
					$("#toDateFreeProduct").attr("disabled", true);
					$("#freeProductPieces").attr("disabled", true);
				} else if ((previousFreeDiv !== Number(0))) {
					$("#fromDateFreeProduct" + previousFreeDiv).attr(
							"disabled", true);
					$("#toDateFreeProduct" + previousFreeDiv).attr("disabled",
							true);
					$("#freeProductPieces" + previousFreeDiv).attr("disabled",
							true);
				}
				addOtherFreeDivs();
			}

		}
		function addOtherFreeDivs() {
			if (Number(previousFreeDiv) < Number(2)) {
				previousFreeDiv = Number(Number(previousFreeDiv) + Number(1));
				if (previousFreeDiv === Number(1)) {

					var fromDate1 = moment($("#toDateFreeProduct").val(),
							"dddd DD MMMM YYYY");
					fromDate1 = fromDate1.add(1, 'days')
					fromDate1 = moment(fromDate1).format("dddd DD MMMM YYYY");

					momentCalender($, moment);
					$("#fromDateFreeProduct1").bootstrapMaterialDatePicker({
						format : 'dddd DD MMMM YYYY',
						clearButton : true,
						weekStart : 1,
						time : false,
						minDate : new Date()
					});

					if ($("#fromDateFreeProduct1").val() === "") {
						$("#fromDateFreeProduct1").val(fromDate1);
					}
					var toDate1 = moment(fromDate1, "dddd DD MMMM YYYY");
					toDate1 = toDate1.add(1, 'days')
					toDate1 = moment(toDate1).format("dddd DD MMMM YYYY");

					$("#toDateFreeProduct1").bootstrapMaterialDatePicker({
						format : 'dddd DD MMMM YYYY',
						clearButton : true,
						weekStart : 1,
						time : false,
						minDate : new Date()
					});
					addFreeDiv1();
				} else {
					alert("In else");
					var fromDate2 = moment($("#toDateFreeProduct1").val(),
							"dddd DD MMMM YYYY");
					fromDate2 = fromDate2.add(1, 'days')
					fromDate2 = moment(fromDate2).format("dddd DD MMMM YYYY");

					momentCalender($, moment);
					$("#fromDateFreeProduct2").bootstrapMaterialDatePicker({
						format : 'dddd DD MMMM YYYY',
						clearButton : true,
						weekStart : 1,
						time : false,
						minDate : new Date()
					});
					if ($("#fromDateFreeProduct2").val() === "") {
						$("#fromDateFreeProduct2").val(fromDate2);
					}
					var toDate2 = moment(fromDate2, "dddd DD MMMM YYYY");
					toDate2 = toDate2.add(1, 'days')
					toDate2 = moment(toDate2).format("dddd DD MMMM YYYY");

					$("#toDateFreeProduct2").bootstrapMaterialDatePicker({
						format : 'dddd DD MMMM YYYY',
						clearButton : true,
						weekStart : 1,
						time : false,
						minDate : new Date()
					});
					addFreeDiv2();
				}
			} else {
				swal({
					title : 'Warning!',
					text : 'You can only add 3 free products at a time!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}
		}
		function addFreeDiv1() {
			$("#freeProductsDiv1").removeClass("hideDiv");
		}
		function addFreeDiv2() {
			$("#freeProductsDiv2").removeClass("hideDiv");
		}

		$("#removeBtnFreeDiv1").click(function() {
			removeFreeProductDiv(1);
		});
		$("#removeBtnFreeDiv2").click(function() {
			removeFreeProductDiv(2);
		});
		// For removing present div
		function removeFreeProductDiv(removeId) {
			defaultFreeProduct(true, 0, "Free Product", removeId);
			$("#freeProduct" + removeId).val("");
			$("#freeProductPieces" + removeId).val("");
			$("#fromDateFreeProduct" + removeId).val("");
			$("#toDateFreeProduct" + removeId).val("");
			$("#freeProductsDiv" + removeId).addClass("hideDiv");
			previousFreeDiv = 0;
		}

		$("#freeProductPieces").click(function() {
			if ($("#toDateFreeProduct").val() !== "") {
				$("#freeProductPieces").attr("readonly", false);
				$("#freeProductPieces").attr("disabled", false);
			}
		});
		$("#freeProductPieces1").click(function() {
			if ($("#toDateFreeProduct1").val() !== "") {
				$("#freeProductPieces1").attr("readonly", false);
				$("#freeProductPieces1").attr("disabled", false);
			}
		});
		$("#freeProductPieces2").click(function() {
			if ($("#toDateFreeProduct2").val() !== "") {
				$("#freeProductPieces2").attr("readonly", false);
				$("#freeProductPieces2").attr("disabled", false);
			}
		});
		$("#fromDateFreeProduct,#toDateFreeProduct").mouseenter(function() {
			momentCalender($, moment);
			var fromDate = moment();
			fromDate = fromDate.add(1, 'days')
			fromDate = moment(fromDate).format("dddd DD MMMM YYYY");

			$("#fromDateFreeProduct").bootstrapMaterialDatePicker({
				format : 'dddd DD MMMM YYYY',
				clearButton : true,
				weekStart : 1,
				time : false,
				minDate : new Date()
			});

			$("#toDateFreeProduct").bootstrapMaterialDatePicker({
				format : 'dddd DD MMMM YYYY',
				clearButton : true,
				weekStart : 1,
				time : false,
				minDate : fromDate
			});

		});
		var freeProductArray = new Array();
		function fetchAllProductsOfSeller() {
			$
					.ajax({
						type : "GET",
						url : "admin-fetchAllProductsBySeller",
						data : "",
						contentType : "application/json",
						processData : false,
						success : function(data) {
							alert(JSON.stringify(data))
							if (data.status && data.listGeneralProduct.length > 0) {
								$("#freeProductSelect").html("");
								var arValue = "";
								while (freeProductArray.length > 0) {
									freeProductArray.pop();
								}
								for (var j = 0; j < 3; j++) {
									var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- Free Products --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- Free Products --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
											+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id='ulFreeProduct"
											+ Number(j)
											+ "'>"
											+ "<li data-original-index=\"0\" class=\"selected\" id='freeProductLi"
											+ Number(j)
											+ "' onclick=\"clickFreeProductLi('"
											+ 0
											+ "','Free Products')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Free Products --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
									var cde = "";
									for (var i = 0; i < data.listGeneralProduct.length; i++) {
										cde = cde
												+ "<li data-original-index='"
												+ Number(Number(i) + Number(1))
												+ "' id='freeProductLi"
												+ j
												+ Number(Number(i) + Number(1))
												+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFreeProductLi('"
												+ j
												+ Number(Number(i) + Number(1))
												+ "','"
												+ data.listGeneralProduct[i].name
												+ "','"
												+ data.listGeneralProduct[i].allProductId
												+ "')\"><span class=\"text\">"
												+ data.listGeneralProduct[i].name
												+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
										if (j === Number(0)) {
											arValue = data.listGeneralProduct[i].specificId
													+ "_"
													+ data.listGeneralProduct[i].name
											freeProductArray.push(arValue);
										}

									}
									cde = cde + "</ul></div>";
									if (j === Number(0)) {
										$("#freeProductSelect").html(abc + cde);
									} else {
										$("#freeProductSelect" + Number(j)).html(abc + cde);
									}
								}
							} else {
								$("#freeProductsDiv").addClass("hideDiv");
							}

						},
						error : function(e) {
							alert("Error");
							swal({
								title : 'Error!',
								text : 'Free Products Not Fetched Successfully!!!',
								type : 'error',
								confirmButtonText : "OK",
								allowEscapeKey : true,
								confirmButtonClass : "btn btn-raised gradient-right",
								animation : true
							});
						}
					});
		}
		var previousFreeProductLi;

		function clickFreeProductLi(liId, title1, freeProductId) {
			if (title1 === 'Free Products') {
				title1 = "--" + title1 + "--";
			}
			var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\""+title1+ "\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">"
					+ title1
					+ "</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul id='ulFreeProduct"+liId[0]+"' class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"

			if (Number(liId[1]) > Number(0)) {
				var selectedId = $(".selected").attr("id");
				previousFreeProductLi = liId[0];

				abc = abc
						+ "<li data-original-index=\"0\" class=\"\" id='freeProductLi"
						+ liId[0]
						+ "' onclick=\"clickFreeProductLi('"
						+ liId[0]
						+ "','Free Products')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Free Products--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < freeProductArray.length; i++) {
					var splittedArray = freeProductArray[i].split("_");
					if (Number(i) === Number(Number(liId[1]) - Number(1))) {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' class =\"selected\" id='freeProductLi"
								+ liId[0]
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFreeProductLi('"
								+ liId[0]
								+ Number(Number(i) + Number(1))
								+ "','"
								+ splittedArray[1]
								+ "','"
								+ splittedArray[0]
								+ "')\"><span class=\"text\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					} else {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' id='freeProductLi"
								+ liId[0]
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFreeProductLi('"
								+ liId[0]
								+ Number(Number(i) + Number(1))
								+ "','"
								+ splittedArray[1]
								+ "','"
								+ splittedArray[0]
								+ "')\"><span class=\"text\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					}

				}
				cde = cde + "</ul></div>";
				if ($("ul#ulFreeProduct" + liId[0] + " li#freeProductLi" + liId)
						.parent().parent().parent().parent().attr("id") === "freeProductSelect") {
					$("#freeProductSelect").html(abc + cde);
					$("#freeProductName").val(freeProductId);
				} else if ($(
						"ul#ulFreeProduct" + liId[0] + " li#freeProductLi"
								+ liId).parent().parent().parent().parent()
						.attr("id") === "freeProductSelect1") {
					alert("In else if");
					$("#freeProductSelect1").html(abc + cde);
					$("#freeProductName1").val(freeProductId);
				} else {
					$("#freeProductSelect2").html(abc + cde);
					$("#freeProductName2").val(freeProductId);
				}

			} else {
				alert("In else");
				$("#freeProductLi" + previousFreeProductLi).removeClass(
						"selected");
				$("#freeProductLi" + liId[0]).addClass("selected");

				abc = abc
						+ "<li data-original-index=\"0\" class=\"selected\" id='freeProductLi"
						+ liId[0]
						+ "' onclick=\"clickFreeProductLi('"
						+ liId[0]
						+ "','Free Products')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Free Products--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < freeProductArray.length; i++) {
					var splittedArray = freeProductArray[i].split("_");
					cde = cde
							+ "<li data-original-index='"
							+ Number(Number(i) + Number(1))
							+ "' id='freeProductLi"
							+ liId[0]
							+ Number(Number(i) + Number(1))
							+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFreeProductLi('"
							+ liId[0]
							+ Number(Number(i) + Number(1))
							+ "','"
							+ splittedArray[1]
							+ "','"
							+ splittedArray[0]
							+ "')\"><span class=\"text\">"
							+ splittedArray[1]
							+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"

				}
				cde = cde + "</ul></div>"
				if ($("ul#ulFreeProduct" + liId[0] + " li#freeProductLi" + liId)
						.parent().parent().parent().parent().attr("id") === "freeProductSelect") {
					$("#freeProductSelect").html(abc + cde);
					$("#freeProductName").val(freeProductId);
				} else if ($(
						"ul#ulFreeProduct" + liId[0] + " li#freeProductLi"
								+ liId).parent().parent().parent().parent()
						.attr("id") === "freeProductSelect1") {
					alert("In else if");
					$("#freeProductSelect1").html(abc + cde);
					$("#freeProductName1").val(freeProductId);
				} else {
					$("#freeProductSelect2").html(abc + cde);
					$("#freeProductName2").val(freeProductId);
				}
			}
		}
		$("#clearPlusBtnFreeDiv, #clearPlusBtnFreeDiv1, #clearPlusBtnFreeDiv2")
				.click(
						function() {
							if (this.id === "clearPlusBtnFreeDiv") {
								$("#fromDateFreeProduct").val("");
								$("#fromDateFreeProduct").attr("disabled",
										false);
								$("#toDateFreeProduct").val("");
								$("#toDateFreeProduct").attr("disabled", false);
								/* $("#toDate").attr("disabled",false);
								$("#price").attr("disabled",false); */
							} else if (this.id === "clearPlusBtnFreeDiv1") {
								var fromDate = moment($("#toDateFreeProduct")
										.val(), "dddd DD MMMM YYYY");
								fromDate = fromDate.add(1, 'days');
								fromDate = moment(fromDate).format(
										"dddd DD MMMM YYYY");
								$("#fromDateFreeProduct1").val(fromDate);

								$("#toDateFreeProduct1").val("");
								$("#toDateFreeProduct1").attr("disabled", true);
								/* $("#fromDate1").attr("disabled",false);
								$("#toDate1").attr("disabled",true);
								$("#price1").attr("disabled",true);  */
							} else {
								var fromDate = moment($("#toDateFreeProduct1")
										.val(), "dddd DD MMMM YYYY");
								fromDate = fromDate.add(1, 'days');
								fromDate = moment(fromDate).format(
										"dddd DD MMMM YYYY");

								$("#fromDateFreeProduct2").val(fromDate);
								$("#toDateFreeProduct2").val("");
								$("#toDateFreeProduct2").attr("disabled", true);

								/* $("#fromDate2").attr("disabled",false);
								$("#toDate2").attr("disabled",true);
								$("#price2").attr("disabled",true); */
							}
						});
		$("#freeProductsCheck").click(function() {
			if ($(this).is(':checked')) {
				$("#freeProductsDiv").removeClass("hideDiv");
			} else {
				$("#freeProductsDiv").addClass("hideDiv");
			}
		});
		$("#hallFeatureYes1, #hallFeatureNo1").click(function() {
			var check = Number(0);
			if ($("#" + this.id).is(':checked')) {
				check = Number(1);
			}
			$("#hallFeatureYes1, #hallFeatureNo1").prop("checked", false);

			if (check === Number(1)) {
				$("#" + this.id).prop("checked", true);
			}
			if($("#hallFeatureYes1").is(":checked")){
				$("#noOfRooms").val("");
				$("#roomsDiv").removeClass("hideDiv");
			}else{
				$("#noOfRooms").val("");
				$("#roomsDiv").addClass("hideDiv");
			}
			
		});
		$("#hallFeatureYes2, #hallFeatureNo2").click(function() {
			var check = Number(0);
			if ($("#" + this.id).is(':checked')) {
				check = Number(1);
			}
			$("#hallFeatureYes2, #hallFeatureNo2").prop("checked", false);

			if (check === Number(1)) {
				$("#" + this.id).prop("checked", true);
			}
		});
		$("#hallFeatureYes3, #hallFeatureNo3").click(function() {
			var check = Number(0);
			if ($("#" + this.id).is(':checked')) {
				check = Number(1);
			}
			$("#hallFeatureYes3, #hallFeatureNo3").prop("checked", false);

			if (check === Number(1)) {
				$("#" + this.id).prop("checked", true);
			}
			if($("#hallFeatureYes3").is(":checked")){
				$("#lawnArea").val("");
				$("#lawnDiv").removeClass("hideDiv");
				$("#lawnUnitDiv").removeClass("hideDiv");
			}
			else{
				$("#lawnArea").val("");
				$("#lawnDiv").addClass("hideDiv");
				$("#lawnUnitDiv").addClass("hideDiv");
			}
		});
		$("#hallFeatureYes4, #hallFeatureNo4").click(function() {
			var check = Number(0);
			if ($("#" + this.id).is(':checked')) {
				check = Number(1);
			}
			$("#hallFeatureYes4, #hallFeatureNo4").prop("checked", false);

			if (check === Number(1)) {
				$("#" + this.id).prop("checked", true);
			}
		});
		$("#hallFeatureYes5, #hallFeatureNo5").click(function() {
			var check = Number(0);
			if ($("#" + this.id).is(':checked')) {
				check = Number(1);
			}
			$("#hallFeatureYes5, #hallFeatureNo5").prop("checked", false);

			if (check === Number(1)) {
				$("#" + this.id).prop("checked", true);
			}
			if($("#hallFeatureYes5").is(":checked")){
				$("#extraSpaceArea").val("");
				$("#extraSpaceDiv").removeClass("hideDiv");
				$("#extraSpaceUnitDiv").removeClass("hideDiv");
			}else{
				$("#extraSpaceArea").val("");
				$("#extraSpaceDiv").addClass("hideDiv");
				$("#extraSpaceUnitDiv").addClass("hideDiv");
			}
			
		});
		$("#hallFeatureYes6, #hallFeatureNo6").click(function() {
			var check = Number(0);
			if ($("#" + this.id).is(':checked')) {
				check = Number(1);
			}
			$("#hallFeatureYes6, #hallFeatureNo6").prop("checked", false);

			if (check === Number(1)) {
				$("#" + this.id).prop("checked", true);
			}
		});
		$("#hallFeatureYes7, #hallFeatureNo7").click(function() {
			var check = Number(0);
			if ($("#" + this.id).is(':checked')) {
				check = Number(1);
			}
			$("#hallFeatureYes7, #hallFeatureNo7").prop("checked", false);

			if (check === Number(1)) {
				$("#" + this.id).prop("checked", true);
			}
			if($("#hallFeatureYes7").is(":checked")){
				$("#noOfWashRooms").val("");
				$("#washRoomsDiv").removeClass("hideDiv");	
			}else{
				$("#noOfWashRooms").val("");
				$("#washRoomsDiv").addClass("hideDiv");
			}
			
		});
		$("#hallFeatureYes8, #hallFeatureNo8").click(function() {
			var check = Number(0);
			if ($("#" + this.id).is(':checked')) {
				check = Number(1);
			}
			$("#hallFeatureYes8, #hallFeatureNo8").prop("checked", false);

			if (check === Number(1)) {
				$("#" + this.id).prop("checked", true);
			}
			
		});
		$("#hallFeatureYes9, #hallFeatureNo9").click(function() {
			var check = Number(0);
			if ($("#" + this.id).is(':checked')) {
				check = Number(1);
			}
			$("#hallFeatureYes9, #hallFeatureNo9").prop("checked", false);

			if (check === Number(1)) {
				$("#" + this.id).prop("checked", true);
			}
		});
	</script>
	<div class="color-bg"></div>
	<%@ include file="admin-includeFooter.jsp"%>
</body>
</html>
