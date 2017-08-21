<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Add Flower</title>
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css">
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap-colorpicker.min.css">

<%@ include file="admin-includeHeader.jsp"%>
</head>
<body class="theme-blush">
<!-- Test Modal -->
	<div id="dpModals">
	</div>
	<div id="allModals">
	</div>
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
		
				<div class ="row">
				<div class="modal-footer col-md-12 col-sm-12 col-xs-12 priceFooter">
					<button type="button" class="btn btn-secondary btn-raised"
						data-dismiss="modal">Close</button>
				</div>
				</div>
				
			</div>
		</div>
	</div> 
	<!-- Test11 Modal -->
	<div class="modal fade" id="showDiscountModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
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
		
				<div class ="row">
				<div class="modal-footer col-md-12 col-sm-12 col-xs-12 priceFooter">
					<button type="button" class="btn btn-secondary btn-raised"
						data-dismiss="modal">Close</button>
				</div>
				</div>
				
			</div>
		</div>
	</div> 
	<!-- Test12 Modal -->
	<div class="modal fade" id="showFreeProductModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
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
		
				<div class ="row">
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
                    <h2>Add Flower</h2>
                    <small class="text-muted">Welcome to Wedlock application</small>
                </div>
                <div class="row clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2>Flower Basic Information</h2>
                            </div>
                            <div class="body">
                                <div class="row clearfix" id="productNameDiv">
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="name"  id="name"  placeholder="Flower Name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="sellerId" id="sellerId" value = ${sessionScope.sellerDetailsSession.id} placeholder="Seller ID" readonly="readonly">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <label for="comment">Flower Description</label>
                                            <textarea class="form-control textarea-add" rows="6" name="description" id="description"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                       	<div class="form-group div-center hundred-width" id="occasionDiv">
											<select class="form-control show-tick">
												<option value="">-- Occasion --</option>
											</select>
										</div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                    <div class="form-group drop-custum" id="flowerTypeDiv">
                                            <select class="form-control show-tick">
                                                <option value="">--Flower Type--</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="header margin-left-right-zero marginb15">
                                    <h2>Flower Details </h2>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-6 col-xs-12">
                                    	<div class="col-sm-6 col-xs-9" id="colorSelectDiv">
	                                        <div class="form-group drop-custum">
	                                       		<select class="form-control show-tick" id ="colorSelect" >
	                                               <option value="">-- Color --</option>
	                                               <option value="Multicolor">Multicolor</option>
	                                               <option value="ChooseColor">Choose Color</option>
	                                            </select>
	                                        </div>
                                        </div>
                                        <div id="selectUserColor">
                                        <div class="col-sm-4 col-xs-3">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control jscolor {styleElement:'colorDiv', hash:true,onFineChange:'update(this)'}" name="foo" id="foo" placeholder="ACER" value="">
                                            </div>
                                        </div>
                                        </div>
                                        <div class="col-sm-2 col-xs-3">
									          <div class = "form-group thumbnail" id="colorDiv" style='background-color: #71ca01; padding: 22px;'>
									          </div> 
                                        </div>
                                        </div>
                                        <div id="singleColorDiv">
                                        <div class="col-sm-6 col-xs-3">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="singleColor" id="singleColor" placeholder="Color Name" >
                                            </div>
                                        </div>
                                        </div>
                                        
                                        </div>
                                    </div>
                                    <div class="col-sm-2 col-xs-12" id="availabilityDiv">
                                    <div class="form-group drop-custum">
	                                       		<select class="form-control show-tick" id ="availability" >
	                                               <option value="">-- Availability --</option>
	                                               <option value="Yes">Yes</option>
	                                               <option value="No">No</option>
	                                            </select>
	                                        </div>
                                    </div>
                                    <div class="col-sm-2 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" name ="noOfPieces" id="noOfPieces" placeholder="No. of Pieces">
                                            </div>
                                        </div>
                                    </div> 
                                     <div class="col-sm-2 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="advancePaymentPercentage" id="advancePaymentPercentage" placeholder="Advance percentage">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix form-group">
                                    <!-- <div class="header margin-left-right-zero marginb15">
                                    	<h2>Flower Image Files </h2>
                                	</div> -->
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 _thumnailImage" id ="flowerDisplayDiv">
										 <label for="comment">Flower Display Image</label>
										 
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
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 _productImages" id="flowerImagesDiv">
									<label for="comment">Flower Description Images</label>
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
                                <div class="row clearfix">
								<div class="header marginb15 margin-bottom10">
									<div class="checkbox header-add">
										<label> <input type="checkbox" value="" id="freesCheck" > <span
											class="cr" id="bank-check"> <i
												class="cr-icon glyphicon glyphicon-ok"></i>
										</span> Frees & Freebie Details(if any)
										</label>
									</div>
								</div>
							</div>
							<div id="freesDiv">
								<div class="row clearfix">
									<div class="col-sm-12 col-xs-12">
										<div class="form-group">
											<label for="comment">Freebie</label>
											<textarea class="form-control textarea-add" rows="6"
												name="freebie" id="freebie"></textarea>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div id="freeProductsDiv">
										<div class="col-sm-3 col-xs-12" >
											<div class="form-group drop-custum freeProductClass" id="freeProductSelect">
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
												<button type="button" class="btn btn-raised gradient-right"
													id="plusbtnFreeDiv">Add</button>
													<button type="button" class="btn btn-raised gradient-right hideDiv"
												id="showFreeProducts" data-toggle="modal" data-target="#showFreeProductModal">Show Frees</button>
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix hideDiv" id="freeProductsDiv1">
									<div class="col-sm-3 col-xs-12">
										<div class="form-group drop-custum freeProductClass" id="freeProductSelect1">
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
											<button type="button" class="btn btn-raised gradient-right"
												id="plusBtnFreeDiv1">Add</button>
												<button type="button" class="btn btn-raised gradient-right"
												id="removeBtnFreeDiv1">Add</button>
										</div>
									</div>
								</div>
								<div class="row clearfix hideDiv" id="freeProductsDiv2">
									<div class="col-sm-3 col-xs-12">
										<div class="form-group drop-custum freeProductClass" id="freeProductSelect2">
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
											<button type="button" class="btn btn-raised gradient-right"
												id="plusBtnFreeDiv12">Add</button>
												<button type="button" class="btn btn-raised gradient-right"
												id="removeBtnFreeDiv2">Add</button>
										</div>
									</div>
								</div>
							</div>
								<div class="row clearfix">
                                    <div class="header marginb15">
                                        <h2>Flower Pricing </h2>
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
														name="toDate" id="toDate" placeholder="To Date">
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<div class="form-line">
													<input type="text" class="form-control" name="price"
														id="price" placeholder="Price">
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<button type="button" class="btn btn-raised gradient-right"
													id="plusbtn">Add</button>
													<button type="button" class="btn btn-raised gradient-right hideDiv"
												id="showPreviousPrices" data-toggle="modal" data-target="#showPriceModal">Show Prices</button>
											</div>
										</div>
									</div>
									<div class="row clearfix hideDiv" id="flowerPricing1">
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
														name="toDate" id="toDate1" placeholder="To Date">
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<div class="form-line">
													<input type="text" class="form-control" name="price"
														id="price1" placeholder="Price">
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<button type="button" class="btn btn-raised gradient-right"
													id="plusbtn1">Add</button>
												<button type="button" class="btn btn-raised gradient-right"
													id="removePlusBtn1">Add</button>
											</div>
										</div>
									</div>
									<div class="row clearfix hideDiv" id="flowerPricing2">
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
														name="toDate" id="toDate2" placeholder="To Date">
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<div class="form-line">
													<input type="text" class="form-control" name="price"
														id="price2" placeholder="Price">
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<button type="button" class="btn btn-raised gradient-right"
													id="plusbtn2">Add</button>
												<button type="button" class="btn btn-raised gradient-right"
													id="removePlusBtn2">Add</button>
											</div>
										</div>
									</div>
								</div>
                                <div class="row clearfix">
								<div class="header marginb15 margin-bottom10">
									<div class="checkbox header-add">
										<label> <input type="checkbox" value="" id="discountCheck" > <span
											class="cr" id="bank-check"> <i
												class="cr-icon glyphicon glyphicon-ok"></i>
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
												<input type="text" class="form-control" name="discount" id="discount"
												placeholder="Amount / Percentage">
											</div>
										</div>
									</div>
									<!-- <div class="col-sm-2 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="checkBoxDiscountAmount" id="checkBoxDiscountAmount">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Discount Amount
												</label> 
											</div>
										</div>
									</div> -->
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
									<div class="col-sm-2 col-xs-12">
										<button type="button" class="btn btn-raised gradient-right" id="plusbtn">Add</button><button type="button" class="btn btn-raised gradient-right hideDiv" id="showPreviousPrices" data-toggle="modal" data-target="#showPriceModal">Show Prices</button>
									</div>
								</div>
								<div class="row clearfix">
							<div class="col-md-12 col-xs-12 hideDiv" id="showDiscountDiv">
							<div class="form-group">
											<button type="button" class="btn btn-raised gradient-right"
												id="showPreviousDiscounts" data-toggle="modal" data-target="#showDiscountModal">Show Discount</button>
										</div>
							</div>
							</div>
							</div>
							<div class = "row clearfix"></div>
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
                                    	<input type = "hidden" name = "typeName" id = "typeName" value = "">
                                    	<input type = "hidden" name = "occasionName" id = "occasionName" value="">
                                    	<input type = "hidden" name = "editProductId" id = "editProductId" value = "">
                                    	<input type = "hidden" name = "allProductId" id = "allProductId" value = "">
                                    	<input type = "hidden" name = "productStatus" id= "productStatus" value = "">
                                    	<input type = "hidden" name = "defaultDpImage" id = "defaultDpImage" value = "">
                                    	<input type = "hidden" name = "productAvailability" id = "productAvailability" value = "">
                                    	<input type = "hidden" name = "freeProductName" id = "freeProductName" value = "">
                                    	<input type = "hidden" name = "freeProductName1" id = "freeProductName1" value = "">
                                    	<input type = "hidden" name = "freeProductName2" id = "freeProductName2" value = "">
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
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
    
    <!-- Jquery Js --> 
    
    <script type="text/javascript">
    var dateTime = new Date().getTime();
    var hasValue = Number(0);
    var singleFiles = "";
    var classPathSingleFile = "";
    var freeProduct = "";
    var freeProductQty = "";
    var freeProductValidity = "";
    var modelId = "";
    var dpImageId = "";
    var defaultImageId = "";
    var titleLength = "";
    var lengthOccasions = "";
    var doNotRemoveFields = Number(0);
    Dropzone.options.singleUpload = {
			url : "singleUpload",
			init : function() {
				this.on("success", function(file, response) {
					var a = this.element.classList+"";
					a = a.split("_");
					classPathSingleFile = $("form." + "_" + a[1]).parent().attr("class");
					classPathSingleFile = classPathSingleFile.split("_");
					if(singleFiles === ""){
						singleFiles = "Florist"+"+@-"+classPathSingleFile[1]+"+@-"+dateTime+file.name;
					}else{
						singleFiles = singleFiles + "-,@_"+"Florist"+"+@-"+classPathSingleFile[1]+"+@-"+dateTime+file.name;
					}
	 			});
			},
			renameFilename : function(fileName) {
				var classpath = fileName;
				classpath = classpath.split("_");
				return "Florist" + "_" + dateTime+classpath[0];
				
			}
		}; 
	
    var multipleFiles = "";
    var classPath = "";
    Dropzone.options.multipleUpload = {
			url : "singleUpload",
			addRemoveLinks: true,
			init : function() {
				this.on("success", function(file, response) {
					var a = this.element.classList+"";
					a = a.split("_");
					classPath = $("form." + "_" + a[1]).parent().attr("class");
					classPath = classPath.split("_");
					if(multipleFiles === ""){
						multipleFiles = "Florist"+"+@-"+classPath[1]+"+@-"+dateTime+file.name;
					}else{
						multipleFiles = multipleFiles + "-,@_"+ "Florist"+"+@-"+classPath[1]+"+@-"+dateTime+file.name;
					}
					$("#multipleUpload .dz-remove").click(function(e){
						e.preventDefault();
					    e.stopPropagation();
					    var imageId = $(this).parent().find(".dz-filename > span").text();
					    var sample = imageId.split("_");
					    sample = sample[0]+"+@-"+classPath[1]+"+@-"+sample[1];
					    var abc = multipleFiles.split("-,@_");
					    
					    if(sample === abc[0] && multipleFiles.indexOf("-,@_") < 0){
					    	multipleFiles ="";
					    	
					    }
					     if (multipleFiles.indexOf("-,@_") >= 0) {
					    	multipleFiles = "";
					    	for(var i = 0; i< abc.length; i++){
					    		if(abc[i] === sample){
					    			abc[i] = "";
					    		}else{
					    			if(multipleFiles === ""){
					    				multipleFiles = abc[i];
					    			}else{
					    				multipleFiles = multipleFiles +"-,@_"+abc[i];
					    				
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
							data : JSON.stringify(job),
							contentType : "application/json",
							processData : false,
							success : function(data) {
							},
							error : function(e) {
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
				
				this.on("addedfile" , function(file){
					if (this.files.length) {
				        var i, len;
				        for (i = 0, len = this.files.length; i < len - 1; i++) // -1 to exclude current file
				        {
				            if(this.files[i].name === file.name && this.files[i].size === file.size && this.files[i].lastModifiedDate.toString() === file.lastModifiedDate.toString())
				            {
				                this.removeFile(file);
				            }
				        }
					 }
					
				});
				
				this.on("removedfile" , function(file){
					if(multipleFiles === ""){
					   if(this.element.classList.contains("dz-started")){
							this.element.classList.remove("dz-started");
						} 
				   }
				});
				
				this.on("error", function(file){if (!file.accepted) this.removeFile(file);});
			},
			renameFilename : function(fileName) {
				var classpath = fileName;
				classpath = classpath.split("_");
				return "Florist" + "_" + dateTime+classpath[0];
			}
			
		};
    
    var idForFetch;
	$(document).ready(function(){
		fetchAllFlowerType();
		fetchAllOccasion();
		fetchAllProductsOfSeller();
		if(location.href.match(/id/)){
			idForFetch = location.search.split("?");
			idForFetch = idForFetch[1].split("=");
			idForFetch = idForFetch[1];
			fetchFlowerById(idForFetch);
		}
		
	});
    
    var catName = "Florist";
    var typeArr = new Array();
	var arry3 = new Array();
    
    function fetchAllFlowerType() {
		$.ajax({
				type : "GET",
				url : "admin-fetchProductTypesWithStatusByCat?catName=" + catName,
				data : "",
				contentType : "application/json",
				processData : false,
				success : function(data) {
					$("#flowerTypeDiv").html("");
					if (data.status) {

						var arValue = "";
						while(typeArr.length > 0){
							typeArr.pop();
						}
						var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Flower Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Flower Type--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
								+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
								+"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"+0+"','Flower Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Flower Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						var cde = "";		
								for(var i = 0; i<data.listAllProductTypes.length && data.listAllProductTypes[i].status; i++){	
									description = 
									cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' id='li"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"+Number(Number(i)+Number(1))+"','"+data.listAllProductTypes[i].typeName+"','"+data.listAllProductTypes[i].id+"')\"><span class=\"text\" title=\""+data.listAllProductTypes[i].typeDescription+"\">"+data.listAllProductTypes[i].typeName+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
									arValue = data.listAllProductTypes[i].id+"_"+data.listAllProductTypes[i].typeName+"_"+data.listAllProductTypes[i].typeDescription;
									typeArr.push(arValue);
								}
							cde = cde +"</ul></div>"
							$("#flowerTypeDiv").html(abc + cde);
					}

				},
				error : function(e) {

					swal({
						title : 'Error!',
						text : 'Flower Type Not Fetched Successfully!!!',
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
		if(title1 === 'Flower Type')
		{
			title1 = "--"+title1+"--";
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
					+ "','Flower Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Flower Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			var cde = "";
			for (var i = 0; i < typeArr.length; i++) {
				var splittedArray = typeArr[i].split("_");
				if (Number(i) === Number(Number(liId)
						- Number(1))) {
					cde = cde
							+ "<li data-original-index='"
							+ Number(Number(i) + Number(1))
							+ "' class =\"selected\" id='li"
							+ Number(Number(i) + Number(1))
							+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"  title=\""+splittedArray[2]+"\" onclick =\"clickLi('"
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
							+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" title=\""+splittedArray[2]+"\" onclick =\"clickLi('"
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

			$("#flowerTypeDiv").html(abc + cde);

		} 
		else {
			$("#li" + previousLi).removeClass("selected");
			$("#li0").addClass("selected");

			abc = abc
					+ "<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"
					+ 0
					+ "','Flower Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Flower Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			var cde = "";
			for (var i = 0; i < typeArr.length; i++) {
				var splittedArray = typeArr[i].split("_");
				cde = cde
						+ "<li data-original-index='"
						+ Number(Number(i) + Number(1))
						+ "' id='li"
						+ Number(Number(i) + Number(1))
						+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" title=\""+splittedArray[2]+"\" onclick =\"clickLi('"
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

							$("#flowerTypeDiv").html(abc + cde);
			}
	}
 
	$("#colorSelect").change(function(){
		if(this.value === "ChooseColor"){
			$("#selectUserColor").attr("style","display:block");
			$("#singleColorDiv").attr("style","display:none");
		}else{
			$("#selectUserColor").attr("style","display:none");
			$("#singleColorDiv").attr("style","dsplay:block");
		}
	});

	function fetchAllOccasion() {
		$.ajax({
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
	var id ="";
	//On click of each li in Occasion list 
	function clickOccasionLi(liId, title1, occasionId, classSelected) {
		if (classSelected === undefined || classSelected === "") {
			if (title === "") {
				title = title1;
				id = occasionId;
			}else {
				if(title1 === "Occasion" || title.indexOf("Occasion") >=0){
				title = "";
				}
				if(title === ""){
					title = title1;
					id = occasionId;
				}else{
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
							id = id +"," + b[i];
						
					}
				}
			}
		}
		if(lengthOccasions !=""){
			if(lengthOccasions > title.split(",").length){
				titleLength = "minus";
			}else if(lengthOccasions < title.split(",").length){
				titleLength = "plus";
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
					if ($(
							"#occasionLi"
									+ Number(Number(i) + Number(1)))
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
	function update(jscolor) {
	    // 'jscolor' instance can be used as a string
	     //document.getElementById('colorDiv').style.backgroundColor = '#' + jscolor 
	   $("#foo").val(jscolor.toHEXString());
	}
	
	
	$("#freesCheck").click(function(){
		if($(this).is(':checked')) {
	       $("#freesDiv").attr("style","display:block");
	    }else{
	    	$("#freesDiv").attr("style","display:none");
	    }
	});
	var pricingsDivNumber = Number(0); //Variable to  know number of times the new div has been added

	//On click of Add button
	$("#plusbtn,#plusbtn1,#plusbtn2").click(function() {
		 addDiv();
	});
	//For Adding new div
	function addDiv() {
		if ($("#fromDate" + pricingsDivNumber).val() === "" || $("#fromDate").val() === "") {
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
		} else if ($("#price" + pricingsDivNumber).val() === "" || $("#price").val() === "") {
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
			 if(idForFetch !== undefined){
				 var job = {};
				if(pricingsDivNumber === Number(0)){
					 var fromDate = ($("#toDate").val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
					 var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
					 if(fromMonth < 10){
							fromMonth = "0"+fromMonth;
					  } 
					 job["priceToDate"] = fromDate[3]+"-"+fromMonth+"-"+fromDate[1]; 
				}else{
					 var fromDate = ($("#toDate"+pricingsDivNumber).val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
					 var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
					 if(fromMonth < 10){
							fromMonth = "0"+fromMonth;
					  } 
					 job["priceToDate"] = fromDate[3]+"-"+fromMonth+"-"+fromDate[1]; 
			
					
				}
				job["allProductsId"] = $("#allProductId").val();
				$.ajax({
				type : "POST",
				url : "admin-checkSellerPricings",
				data : JSON.stringify(job),
				processData : false,
				contentType :"application/json",
				success : function(data) {
					if(data.status){
						addOtherDivs();
					}else{
						swal({
							title : 'Warning!',
							text : 'Please Select Differnt Ending Date As Price Is Already Present For This Date. You Can Click On Show Prices To Know About Previous Prices!!!',
							type : 'warning',
							confirmButtonText : 'OK',
							allowEscapeKey : true,
							confirmButtonClass : "btn btn-raised gradient-right",
							animation : true
						});
						
						if(pricingsDivNumber === Number(0)){
							$("#toDate").val("");
						}else{
							$("#toDate"+pricingsDivNumber).val("");
						}
					}
			},error : function(){
				swal({
					  title: 'Error!',
					  text: 'Pricings can not be checked.!!!',
					  type: 'error',
					  showConfirmButton :false,
					  allowEscapeKey:true,
					  timer:3000,
					  animation:true
					});
			} 
		})
	}else{
		addOtherDivs();
	}
			
}
}

	function addOtherDivs(){
		if (Number(pricingsDivNumber) < Number(2)) {
			pricingsDivNumber = Number(Number(pricingsDivNumber) + Number(1));
			if (pricingsDivNumber === 1) {
				
				  var fromDate1 = moment($("#toDate").val(),"dddd DD MMMM YYYY");
				    fromDate1 = fromDate1.add(1,'days')
				    fromDate1 = moment(fromDate1).format("dddd DD MMMM YYYY");
						
						
				    momentCalender($,moment);
				    $("#fromDate1").bootstrapMaterialDatePicker({
						 format: 'dddd DD MMMM YYYY',
					     clearButton: true,
					     weekStart: 1,
					     time: false,
						 minDate:fromDate1
					});
				    
				     var toDate1 = moment(fromDate1,"dddd DD MMMM YYYY");
				    toDate1 = toDate1.add(1,'days')
				    toDate1 = moment(toDate1).format("dddd DD MMMM YYYY"); 
				    
				    $("#toDate1").bootstrapMaterialDatePicker({
						 format: 'dddd DD MMMM YYYY',
					     clearButton: true,
					     weekStart: 1,
					     time: false,
						 minDate:toDate1
					}); 
				    
				addDiv1();
			} else if (pricingsDivNumber === 2) {
				
				var fromDate2 = moment($("#toDate1").val(),"dddd DD MMMM YYYY");
			    fromDate2 = fromDate2.add(1,'days')
			    fromDate2 = moment(fromDate2).format("dddd DD MMMM YYYY");
			    
				momentCalender($,moment);
			    $("#fromDate2").bootstrapMaterialDatePicker({
					 format: 'dddd DD MMMM YYYY',
				     clearButton: true,
				     weekStart: 1,
				     time: false,
					 minDate:fromDate2
				});
			    
			    var toDate2 = moment(fromDate2,"dddd DD MMMM YYYY");
			    toDate2 = toDate2.add(1,'days')
			    toDate2 = moment(toDate2).format("dddd DD MMMM YYYY");
			    
			    $("#toDate2").bootstrapMaterialDatePicker({
					 format: 'dddd DD MMMM YYYY',
				     clearButton: true,
				     weekStart: 1,
				     time: false,
					 minDate:toDate2
				}); 
				addDiv2();
			} else{
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
		$("#flowerPricing1").attr("style", "display:block");
	}
	function addDiv2() {
		$("#flowerPricing2").attr("style", "display:block");
	}

	$("#removePlusBtn1").click(function() {
		removeFlowerPricingDiv(1);
	});
	$("#removePlusBtn2").click(function() {
		removeFlowerPricingDiv(2);
	});
	// For removing present div
	function removeFlowerPricingDiv(removeId) {
		$("#fromDate"+removeId).val("");
		$("#toDate"+removeId).val("");
		$("#price"+removeId).val("");
		$("#flowerPricing" + removeId).attr("style", "display:none");
		pricingsDivNumber = 0;
	}
	
	$("#fromDate,#toDate").mouseenter(function(){
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
	
	var previousFreeDiv = Number(0);
	$("#plusbtnFreeDiv,#plusBtnFreeDiv1,#plusbtnFreeDiv12").click(function(){
		addFreeDiv();
	});
	function addFreeDiv(){
		if ($("#freeProduct" + previousFreeDiv).val() === "" || $("#freeProduct").val() === "") {
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
		} else{
			if(Number(previousFreeDiv) < Number(2)){
				previousFreeDiv = Number(Number(previousFreeDiv) + Number(1));
				alert("In if"+previousFreeDiv);
				if(previousFreeDiv === Number(1)){
					
					var fromDate1 = moment($("#toDateFreeProduct").val(),"dddd DD MMMM YYYY");
				    fromDate1 = fromDate1.add(1,'days')
				    fromDate1 = moment(fromDate1).format("dddd DD MMMM YYYY");
						
						
				    momentCalender($,moment);
				    $("#fromDateFreeProduct1").bootstrapMaterialDatePicker({
						 format: 'dddd DD MMMM YYYY',
					     clearButton: true,
					     weekStart: 1,
					     time: false,
						 minDate:fromDate1
					});
				    
				    var toDate1 = moment(fromDate1,"dddd DD MMMM YYYY");
				    toDate1 = toDate1.add(1,'days')
				    toDate1 = moment(toDate1).format("dddd DD MMMM YYYY"); 
				    
				    $("#toDateFreeProduct1").bootstrapMaterialDatePicker({
						 format: 'dddd DD MMMM YYYY',
					     clearButton: true,
					     weekStart: 1,
					     time: false,
						 minDate:toDate1
					}); 
					addFreeDiv1();
				}else{
					alert("In else");
					var fromDate2 = moment($("#toDateFreeProduct1").val(),"dddd DD MMMM YYYY");
				    fromDate2 = fromDate2.add(1,'days')
				    fromDate2 = moment(fromDate2).format("dddd DD MMMM YYYY");
				    
					momentCalender($,moment);
				    $("#fromDateFreeProduct2").bootstrapMaterialDatePicker({
						 format: 'dddd DD MMMM YYYY',
					     clearButton: true,
					     weekStart: 1,
					     time: false,
						 minDate:fromDate2
					});
				    
				    var toDate2 = moment(fromDate2,"dddd DD MMMM YYYY");
				    toDate2 = toDate2.add(1,'days')
				    toDate2 = moment(toDate2).format("dddd DD MMMM YYYY");
				    
				    $("#toDateFreeProduct2").bootstrapMaterialDatePicker({
						 format: 'dddd DD MMMM YYYY',
					     clearButton: true,
					     weekStart: 1,
					     time: false,
						 minDate:toDate2
					}); 
					addFreeDiv2();
				}
			}else{
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
	}
	
	function addFreeDiv1(){
		$("#freeProductsDiv1").removeClass("hideDiv");
	}
	function addFreeDiv2(){
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
		defaultFreeProduct(true,0,"Free Product",removeId);
		$("#freeProduct"+removeId).val("");
		$("#freeProductPieces"+removeId).val("");
		$("#fromDateFreeProduct"+removeId).val("");
		$("#toDateFreeProduct"+removeId).val("");
		$("#freeProductsDiv"+removeId).addClass("hideDiv");
		previousFreeDiv = 0;
	}
	
	$("#fromDateFreeProduct,#toDate").mouseenter(function(){
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
	
	$("#fromDateDiscount,#toDateDiscount").mouseenter(function(){
		momentCalender($,moment);
		 var fromDate = moment();
		    fromDate = fromDate.add(1,'days')
		    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");

		    $("#fromDateDiscount").bootstrapMaterialDatePicker({
				 format: 'dddd DD MMMM YYYY',
			     clearButton: true,
			     weekStart: 1,
			     time: false,
				 minDate:new Date()
			});
		    
		    $("#toDateDiscount").bootstrapMaterialDatePicker({
				 format: 'dddd DD MMMM YYYY',
			     clearButton: true,
			     weekStart: 1,
			     time: false,
				 minDate:fromDate
			});
		
	});
	$("#discountCheck").click(function(){
		if($(this).is(':checked')) {
	       $("#discountDiv").attr("style","display:block");
	    }else{
	    	$("#discountDiv").attr("style","display:none");
	    }
	});
	
	$("#fromDateFreeProduct,#toDateFreeProduct").mouseenter(function(){
		momentCalender($,moment);
		 var fromDate = moment();
		    fromDate = fromDate.add(1,'days')
		    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");

		    $("#fromDateFreeProduct").bootstrapMaterialDatePicker({
				 format: 'dddd DD MMMM YYYY',
			     clearButton: true,
			     weekStart: 1,
			     time: false,
				 minDate:new Date()
			});
		    
		    $("#toDateFreeProduct").bootstrapMaterialDatePicker({
				 format: 'dddd DD MMMM YYYY',
			     clearButton: true,
			     weekStart: 1,
			     time: false,
				 minDate:fromDate
			});
		
	});
	$("#checkBoxDiscountAmount, #checkBoxDiscountPercent").click(function(){
		var check = Number(0);
		if($("#"+this.id).is(':checked')){
			check = Number(1);
		}
		$("#checkBoxDiscountAmount,#checkBoxDiscountPercent").prop("checked",false);
		
		if(check === Number(1)){
			$("#"+this.id).prop("checked",true);
		}
	});
	//Converting month name to month number
	function getMonth(monthStr){
	    return new Date(monthStr+'-1-01').getMonth()+1
	}
	$("#submit").click(function(e){
		e.preventDefault();
		alert("Am there");
		if($("#name").val() === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Product Name!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if($("#occasionName").val() === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Occasion Name!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if($("#typeName").val() === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Flower Type!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if($("#colorSelect").val() === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Select A Color!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		} else if($("#colorSelect").val() === "Multicolor" && $("#singleColor").val() === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Enter A Color Name!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
		}else if($("#availability").val() === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Select Availability Of The Product!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
			});
		}else if($("#noOfPieces").val() ===""){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter No. Of Pieces That The Flower Contains!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if($("#advancePaymentPercentage").val() === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Advance Payment Percentage!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if(singleFiles === "" && $("#defaultDpImage").val() === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Upload Thumnail Image Of The Product!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if(multipleFiles === "" && defaultImageId === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Upload Atleast One Descriptive Images Of The Product!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if($("#fromDate").val() === "" && idForFetch ===""){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Starting Date For The Respective Price!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if($("#toDate").val() === "" && idForFetch ===""){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Ending Date For The Respective Price!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if($("#price").val() === "" && idForFetch ===""){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter At Least One Price For The Product!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if($("#freeProduct").val() === "" &&($("#freeProductPieces").val() || $("#fromDateFreeProduct").val() || $("#toDateFreeProduct").val() !== "")){
			swal({
				  title: 'Warning!',
				  text: 'Please Select The Free Product!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
			
		}else if($("#freeProductPieces").val() ==="" &&($("#freeProduct").val() || $("#fromDateFreeProduct").val() || $("#toDateFreeProduct").val() !== "")){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter The No. Of Pieces!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if($("#fromDateFreeProduct").val() ==="" &&($("#freeProduct").val() || $("#freeProductPieces").val() || $("#toDateFreeProduct").val() !== "")){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Starting Date For The Respective Free Product!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if($("#toDateFreeProduct").val() ==="" && ($("#freeProductPieces").val() || $("#fromDateFreeProduct").val() || $("#freeProduct").val() !== "")){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Ending Date For The Respective Free Product!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else{
			alert("In else");
			var job={};
			job["editProductId"]= $("#editProductId").val();
			job["allProductId"] = $("#allProductId").val();
			if($("#productAvailability").val() === ""){
				job["availability"] = $("#availability").val();
			}else{
				job["availability"] = $("#productAvailability").val();
			}
			
			if($("#productStatus").val() !== ""){
				job["productStatus"] = $("#productStatus").val()
			}
			job["name"] = $("#name").val();
			if($("#description").val() !==""){
				job["description"] = $("#description").val();
			}
			job["occasion"] = $("#occasionName").val();
			job["typeName"] = $("#typeName").val();
			job["colorSelect"] = $("#colorSelect").val();
			if($("#colorSelect").val() === "Multicolor"){
				job["color"] = $("#singleColor").val();
			}else{
				job["color"] = $("#foo").val();
			}
			job["noOfPieces"] = $("#noOfPieces").val();
			job["advancePaymentPercentage"] = $("#advancePaymentPercentage").val();
			if($("#defaultDpImage").val() === ""){
				job["singleFiles"] = singleFiles;
			}else{
				job["singleFiles"] = singleFiles+"@*"+$("#defaultDpImage").val();
			}
			if(multipleFiles === ""){
				job["multipleFiles"] = defaultImageId;
			}else{
				job["multipleFiles"] = multipleFiles;
			}
			if($("#freebie").val() !== ""){
				job["freebie"] = $("#freebie").val()
			}
			if(modelId !== ""){
				job["modelId"] = modelId;
			}
			if($("#freeProduct").val() !==""){
				var fromDateFreeProduct = ($("#fromDateFreeProduct").val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
				var fromMonth = getMonth(fromDateFreeProduct[2]);   //Method to convert month name to month number
				if(fromMonth < 10){
					fromMonth = "0"+fromMonth;
				} 
				
				var toDateFreeProduct = ($("#toDateFreeProduct").val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
				var toMonth = getMonth(toDateFreeProduct[2]);   //Method to convert month name to month number
				if(toMonth < 10){
					toMonth = "0"+toMonth;
				} 
				
				job["freeProduct"] = $("#freeProductName").val();
				job["freeProductQty"] = $("#freeProductPieces").val();
				job["freeProductValidity"] =  fromDateFreeProduct[3]+"-"+fromMonth+"-"+fromDateFreeProduct[1]+"_"+toDateFreeProduct[3]+"-"+toMonth+"-"+toDateFreeProduct[1];
			}
			
			if(previousFreeDiv > Number(0)){
				for(var k = 1; k<= Number(previousFreeDiv) ; k++){
					
					var fromDateFreeProduct = ($("#fromDateFreeProduct"+k).val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
					var fromMonth = getMonth(fromDateFreeProduct[2]);   //Method to convert month name to month number
					if(fromMonth < 10){
						fromMonth = "0"+fromMonth;
					} 
					
					var toDateFreeProduct = ($("#toDateFreeProduct"+k).val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
					var toMonth = getMonth(toDateFreeProduct[2]);   //Method to convert month name to month number
					if(toMonth < 10){
						toMonth = "0"+toMonth;
					} 
					
					job["freeProduct"] = job["freeProduct"] + "," + $("#freeProductName"+k).val();
					job["freeProductQty"] = job["freeProductQty"] + "," + $("#freeProductPieces"+k).val();
					job["freeProductValidity"] = job["freeProductValidity"] + "," + fromDateFreeProduct[3]+"-"+fromMonth+"-"+fromDateFreeProduct[1]+"_"+toDateFreeProduct[3]+"-"+toMonth+"-"+toDateFreeProduct[1];
					}
			}
			
			if(titleLength !=""){
				job["titleLength"] = titleLength;
			}else{
				job["titleLength"] = "";
			}
			if($("#fromDate").val() !==""){
				var fromDate = ($("#fromDate").val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
				var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
				if(fromMonth < 10){
					fromMonth = "0"+fromMonth;
				} 
				job["fromDate"] = fromDate[3]+"-"+fromMonth+"-"+fromDate[1]; 
			}
			
			if($("#toDate").val() !=""){
				var toDate = ($("#toDate").val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
				var toMonth = getMonth(toDate[2]);   //Method to convert month name to month number
				if(toMonth < 10){
					toMonth = "0"+toMonth;
				} 
				job["toDate"] = toDate[3]+"-"+toMonth+"-"+toDate[1]; 
			}
			job["price"] = $("#price").val();
			if(pricingsDivNumber > Number(0)){
				for(var k = 1; k<= Number(pricingsDivNumber) ; k++){
					if(!(($("#fromDate"+k).val() === undefined) && ($("#toDate"+k).val() === undefined) && ($("#price"+k).val() === undefined))){
						 var fromDate = ($("#fromDate"+k).val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
						var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
						if(fromMonth < 10){
							fromMonth = "0"+fromMonth;
						} 
						
						var toDate = ($("#toDate"+k).val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
						var toMonth = getMonth(toDate[2]);   //Method to convert month name to month number
						if(toMonth < 10){
							toMonth = "0"+toMonth;
						} 
						if(k === Number(1)){
							job["otherPriceDetails"] = fromDate[3]+"-"+fromMonth+"-"+fromDate[1]+","+toDate[3]+"-"+toMonth+"-"+toDate[1]+","+$("#price"+k).val();
						}else{
							job["otherPriceDetails"] = job["otherPriceDetails"]+"_"+fromDate[3]+"-"+fromMonth+"-"+fromDate[1]+","+toDate[3]+"-"+toMonth+"-"+toDate[1]+","+$("#price"+k).val();
						}
					}
				}
			}
			var categoryName = window.location+"";
			categoryName = categoryName.split("/");
			job["categoryName"] = categoryName[4];
			
			if((($("#fromDateDiscount").val() || $("#toDateDiscount").val() || $("#discount").val())!="") || $("#checkBoxDiscountAmount,#checkBoxDiscountPercent").is(':checked'))
			{
				hasValue = Number(1);
				if($("#fromDateDiscount").val() === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Starting Date For The Respective Discount!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if($("#toDateDiscount").val() === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Ending Date For The Respective Discount!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if($("#discount").val() === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Discount Amount / Percentage!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if(!($("#checkBoxDiscountAmount,#checkBoxDiscountPercent").is(':checked'))){
					swal({
						  title: 'Warning!',
						  text: 'Please Check Either The Discount Entered Is Flat Discount Or Percentage Discount!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else{
					job["hasValue"] = hasValue;
					if($("#fromDateDiscount").val() !== ""){
						
					}
					var fromDate = ($("#fromDateDiscount").val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
					var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
					if(fromMonth < 10){
						fromMonth = "0"+fromMonth;
					} 
					job["fromDateDiscount"] = fromDate[3]+"-"+fromMonth+"-"+fromDate[1];
					
					var toDate = ($("#toDateDiscount").val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
					var toMonth = getMonth(toDate[2]);   //Method to convert month name to month number
					if(toMonth < 10){
						toMonth = "0"+toMonth;
					} 
					job["toDateDiscount"] =toDate[3]+"-"+toMonth+"-"+toDate[1];
					job["discount"] = $("#discount").val();
					if($("#checkBoxDiscountAmount").is(':checked')){
						job["isFlat"] = Number(1);
					}else{
						job["isFlat"] = Number(0);
					}
					
					 $("#submit").prop("disabled", true);
					 alert(JSON.stringify(job));
					 $.ajax({
					type : "POST",
					url : "admin-addEditFlower",
					data : JSON.stringify(job),
					processData : false,
					contentType :"application/json",
					success : function(data) {
						if(data){
							if($("#editProductId").val() !=""){
								window.location = "admin-viewFloristProducts";
							}else{
								swal({
									  title: 'Success!',
									  text: 'Product Details Successfully Inserted!!!',
									  type: 'success',
									  showConfirmButton :false,
									  allowEscapeKey:true,
									  timer:3000,
									  animation:true
									});
							}
						}else{
							doNotRemoveFields = 1;
						}
						$("#submit").prop("disabled", false);

					},
					error : function(e) {
						alert("Error");
						swal({
							  title: 'Error!',
							  text: 'Product Details Not Inserted Successfully!!!',
							  type: 'error',
							  confirmButtonText :"OK",
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
						$("#submit").prop("disabled", false);

					},complete : function (){
						if(doNotRemoveFields === 0){
							removeAllFields();
						}else{
							doNotRemoveFields = 0;
						}
					} 
					
					}); 
				}
		 }else{
				job["hasValue"] = hasValue;
				$("#submit").prop("disabled", true);
				alert(JSON.stringify(job));
				 $.ajax({
				type : "POST",
				url : "admin-addEditFlower",
				data : JSON.stringify(job),
				processData : false,
				contentType :"application/json",
				success : function(data) {
					if(data){
						if($("#editProductId").val() !=""){
							window.location = "admin-viewFloristProducts";
						}else{
							swal({
								  title: 'Success!',
								  text: 'Product Details Successfully Inserted!!!',
								  type: 'success',
								  showConfirmButton :false,
								  allowEscapeKey:true,
								  timer:3000,
								  animation:true
								});
						}
					}else{
						doNotRemoveFields = 1 ;
					}
					$("#submit").prop("disabled", false);

				},
				error : function(e) {
					alert("Error");
					swal({
						  title: 'Error!',
						  text: 'Product Details Not Inserted Successfully!!!',
						  type: 'error',
						  confirmButtonText :"OK",
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
					$("#submit").prop("disabled", false);

				},complete : function (){
					if(doNotRemoveFields === 0){
						removeAllFields();
					}else{
						doNotRemoveFields = 0;
					}
				}
				
				}); 
			}
			
		}
	});
	function removeAllFields(){
		$("#name").val("");
		$("#description").val("");
		$("#availability").val("");
		$("#singleColor").val("");
		$("#singleColorDiv").attr("style","display:block");
		$("#selectUserColor").attr("style","display:none");
		$("#noOfPieces").val("");
		$("#advancePaymentPercentage").val("");
		 if(idForFetch === undefined){
			//Remove the thumbnails after each insertion being completed from dropzone.js
			$('.dropzone')[0].dropzone.files.forEach(function(file) { 
					file.previewElement.remove(); 
				});

			 $('.dropzone')[1].dropzone.files.forEach(function(file) { 
					 file.previewElement.remove(); 
				});
			
			 $('.dropzone').removeClass(' dz-started ');
			 Dropzone.forElement("._thumnailImage #singleUpload").removeAllFiles();
			 Dropzone.forElement("._productImages #multipleUpload").removeAllFiles();
		}
		defaultFlowerOccasion(true,0,"Occasion");
		defaultPhotoType(true,0,"Photo Type");
		defaultColor(true,"Color");
		$("#freebie").val("");
		$("#freeProductPieces").val("");
		$("#fromDateFreeProduct").val("");
		$("#toDateFreeProduct").val("");
		$("#fromDate").val("");
		$("#toDate").val("");
		$("#price").val("");
		if(hasValue === Number(1)){
			$("#fromDateDiscount").val("");
			$("#toDateDiscount").val("");
			$("#discount").val();
			$("#checkBoxDiscountAmount,#checkBoxDiscountPercent").prop("checked",false);
		}
		hasValue = Number(0);
		if($("#freesCheck").is(":checked")){
			$("#freesCheck").prop("checked",false);
			$("#freesDiv").attr("style","display:none");
		}
		
		if($("#discountCheck").is(':checked')){
			$("#discountCheck").prop("checked",false);
			$("#discountDiv").attr("style","display:none");
		}
		
		var j = previousFreeDiv;
		for(var k =0; k< Number(Number(j)+Number(1)) ;k++){
			defaultFreeProduct(true,0,"Free Product",k);
			removeFreeProductDiv(k);
		}
		
		previousFreeDiv = Number(0);
		
		var l = pricingsDivNumber;
		for(var k =1; k<= l ;k++){
			removeFlowerPricingDiv(k);
		}
		pricingsDivNumber = Number(0);
		singleFiles = "";
		multipleFiles = "";
		title = "";
		id = "";
		freeProduct = "";
		freeProductQty = "";
		freeProductValidity = "";
		modelId = "";
		dpImageId = "";
		defaultImageId = "";
		titleLength = "";
		lengthOccasions = "";
		abc = "";
		efg = "";
		$("#productAvailability").val("");
		$("#editProductId").val("");
		$("#allProductId").val("");
		$("#productStatus").val("");
		$("#occasionName").val("");
		$("#typeName").val("");
		
	}
	
	function defaultFlowerOccasion(isInComplete,occasionId,occasionName){
		// Removing the values from the photo type list
		var abc ="";
		if(isInComplete){
			 abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- Occasion --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- Occasion --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
					+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulOccasion0\">"
					+ "<li data-original-index=\"0\" class=\"selected\" id=\"occasionLi0\" onclick=\"clickOccasionLi('"
					+ 0
					+ "','Occasion')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		}else{
			abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\--" +occasionName+ "--\ aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- "+occasionName+" --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
				+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulOccasion0\">"
				+ "<li data-original-index=\"0\" class=\"\" id=\"occasionLi0\" onclick=\"clickOccasionLi('"
				+ 0
				+ "','Occasion')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		}
		var cde = "";
		var subOccasion = occasionId+"";
		if(subOccasion.length !== 1){
			subOccasion = subOccasion.split(","); 
		}
		
		for (var i = 0; i < arry3.length; i++) {
			var splittedArray = arry3[i].split("_");
			var classSelected = ""
			if(!isInComplete){
				for(var j=0; j< subOccasion.length; j++){
					
					if(Number(splittedArray[0]) === Number(subOccasion[j])){
						classSelected = "class = selected";
					}
				}
				
			}
				cde = cde
				+ "<li data-original-index='"
				+ Number(Number(i) + Number(1))+ "'id='occasionLi"+ Number(Number(i) + Number(1))+ "' "+classSelected+"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickOccasionLi('"
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
	
	function defaultPhotoType(isInComplete,typeId,typeName){
		// Removing the values from the photo type list
		var abc ="";
		if(isInComplete){
			 abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Flower Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Flower Type--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
					+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
					+"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"+0+"','Flower Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Flower Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		}else{
			abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\--" +typeName+"--\ aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"+typeName+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
				+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
				+"<li data-original-index=\"0\" class=\"\" id=\"li0\" onclick=\"clickLi('"+0+"','Flower Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Flower Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		}
		var cde = "";
		for (var i = 0; i < typeArr.length; i++) {
			var splittedArray = typeArr[i].split("_");
			var classSelected = ""
			if(!isInComplete){
				if(Number(splittedArray[0]) === Number(typeId)){
					classSelected = "class = selected";
				}
			}
				cde = cde
				+ "<li data-original-index='"
				+ Number(Number(i) + Number(1))+ "'id='li"+ Number(Number(i) + Number(1))+ "' "+classSelected+"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"
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
		
		$("#flowerTypeDiv").html(abc + cde);
		
	}
	
	function defaultColor(isInComplete,colorType,colorName){
		//$("#colorType").val(colorName);
		var str="";
		if(colorType === "Color" || str === undefined){
			str = "Color";
		}else{
			str = colorType;
		}
		
		var mno ="<div class=\"form-group drop-custum\">"
			+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\-- "+str+" --\"><span class=\"filter-option pull-left\">--"+str+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
			+"<ul class=\"dropdown-menu inner\" role=\"menu\" id=\"flowerColorUl\">"
			+"<li data-original-index=\"0\" id=\"flowerColorLi0\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"defaultColor(false,'Multicolor')\"><span class=\"text\">Multicolor</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			+"<li data-original-index=\"1\" id=\"flowerColorLi1\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"defaultColor(false,'ChooseColor')\"><span class=\"text\">ChooseColor</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
			+"</div>"
			
		$("#colorSelectDiv").html(mno);	
			if(!isInComplete){
				var lengthOfUl = $("#flowerColorUl li").size();
				for(var i = 0;i<lengthOfUl; i++){
					var getdata = $("ul#flowerColorUl li#flowerColorLi"+Number(i)).find('span').text();
						if(str === getdata){
							$("#flowerColorLi"+Number(i)).addClass("selected");
						}else{
							$("#flowerColorLi"+Number(i)).removeClass("selected");
						}
			}
			if(colorType === "ChooseColor"){
					$("#selectUserColor").attr("style","display:block");
					$("#singleColorDiv").attr("style","display:none");
			}
			else if(colorType === "Multicolor"){
					$("#selectUserColor").attr("style","display:none");
					$("#singleColorDiv").attr("style","dsplay:block");
				}
		}
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
	$("#discount").on("blur",function(){
		if(idForFetch !== undefined && $("#toDateDiscount").val() !== ""){
		var job = {};
		var toDate = ($("#toDateDiscount").val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
		var toMonth = getMonth(toDate[2]);   //Method to convert month name to month number
		if(toMonth < 10){
			toMonth = "0"+toMonth;
		} 
		job["toDateDiscount"] = toDate[3]+"-"+toMonth+"-"+toDate[1];
		job["allProductsId"] = $("#allProductId").val();
		$.ajax({
			type : "POST",
			url : "admin-checkSellerDiscounts",
			data : JSON.stringify(job),
			processData : false,
			contentType :"application/json",
			success : function(data) {
				if(!(data.status)){
					swal({
						title : 'Warning!',
						text : 'Please Select Differnt Ending Date As Discount Is Already Present For This Date. You Can Click On Show Discounts To Know About Previous Discounts!!!',
						type : 'warning',
						confirmButtonText : 'OK',
						allowEscapeKey : true,
						confirmButtonClass : "btn btn-raised gradient-right",
						animation : true
					});
					
					$("#toDateDiscount").val("");
				}
		},error : function(){
			swal({
				  title: 'Error!',
				  text: 'Discounts can not be checked.!!!',
				  type: 'error',
				  showConfirmButton :false,
				  allowEscapeKey:true,
				  timer:3000,
				  animation:true
				});
		}
	});
  }
});

	function fetchFlowerById(flowerId){
		$.ajax({
			type : "GET",
			url : "admin-fetchFlowerByFlowerId?id="+flowerId,
			data : "",
			processData : false,
			contentType : "application/json",
			success : function(data) {
				
					 if(data.status){
						$("#name").val(data.flower.name);
						$("#description").val(data.flower.description);
						var occasionId = "";
						var occasionName = "";
						for(var i=0; i<data.listIntProductOccasion.length;i++){
							if(Number(i) === Number(0)){
								occasionId = data.listIntProductOccasion[i].occasion.id;
								occasionName = data.listIntProductOccasion[i].occasion.name;
							}else{
								occasionId = occasionId +","+data.listIntProductOccasion[i].occasion.id;
								occasionName = occasionName +","+data.listIntProductOccasion[i].occasion.name;
							}
						}
						
						$("#occasionName").val(occasionId);
						title = occasionName;
						id = occasionId;
						lengthOccasions = data.listIntProductOccasion.length;
						titleLength = "same";
						defaultFlowerOccasion(false,occasionId,occasionName);
						$("#typeName").val(data.flower.productType.id);
						defaultPhotoType(false,Number(data.flower.productType.id),data.flower.productType.typeName);
						if(data.flower.color.indexOf("#")>=0){
							$("#selectUserColor").attr("style","display:block");
							$("#foo")[0].jscolor.fromString(data.flower.color);
							defaultColor(false,"ChooseColor");
						}else{
							$("#singleColorDiv").attr("style","display:block");
							$("#singleColor").val(data.flower.color);
							defaultColor(false,"Multicolor");
						}
						$("#noOfPieces").val(data.flower.noOfPieces);
						$("#advancePaymentPercentage").val(data.flower.advancePaymentPercentage);
						$("#flowerDisplayDiv").html("");
						showDpEdit(data.flower.dpUrl,data.flower.id);
						singleFiles = Number(1);
						$("#defaultDpImage").val(data.flower.dpUrl);
						$("#flowerImagesDiv").html("");
						for(var i =0; i< data.listProductImagesVideos.length; i++){
							 if(data.listProductImagesVideos[i].photoVideo){
								showImagesEdit(data.listProductImagesVideos[i].productImageVideoUrl,data.listProductImagesVideos[i].id);
								defaultImageId = Number(1);
								if(i === Number(0)){
									modelId = data.listProductImagesVideos[i].id;
								}else{
									modelId = modelId +"," + data.listProductImagesVideos[i].id;
									
								}
							}
						}
						if(data.flower.freebie !== null || data.listFreesProducts[0] !== null){
							$("#freesCheck").prop("checked",true);
							$("#freesDiv").attr("style","display:block");
							if(data.listFreesProducts[0] !== null){
							$("#showFreeProducts").attr("style","display:block");
							var freeProducts = "";
							$("#freeProductTable > tbody").html("");
							for(var i = 0; i< data.listFreesProducts.length; i++){
								var active;
								if(data.listFreesProducts[i].status){
									active = "Yes";
								}else{
									active = "No";
								}
								var xyz = new Date(data.listFreesProducts[i].validFrom);
								xyz = xyz.getFullYear()+"-"+ (xyz.getMonth() + 1 > 9 ? xyz.getMonth() + 1 : "0"+(xyz.getMonth()+1)) +"-"+(xyz.getDate() > 9 ? xyz.getDate() : "0"+(xyz.getDate()));
								
								var mno = new Date(data.listFreesProducts[i].validTo);
								mno = mno.getFullYear()+"-"+(mno.getMonth() +1>9 ? mno.getMonth() +1 : "0"+(mno.getMonth()+1)) + "-"+(mno.getDate() > 9 ? mno.getDate() : "0"+(mno.getDate()));
								freeProducts = freeProducts +"<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
								+"<td class=\"text-center\">"+xyz+"</td>"
								+"<td class=\"text-center\">"+mno+"</td>"
								+"<td class=\"text-center\">"+data.listFreesProducts[i].productName+"</td>"
								+"<td class=\"text-center\">"+data.listFreesProducts[i].qty+"</td>"
								+"<td class=\"text-center\">"+active+"</td>"
							}
							$("#freeProductTable > tbody").html(freeProducts);
							}
							$("#freebie").val(data.flower.freebie);
						}
						
						$("#showPreviousPrices").attr("style","display:block");
						var priceDataTable = "";
						$("#priceTable > tbody").html("");
						for(var i=0; i<data.listProductPricings.length; i++){
							var active;
							if(data.listProductPricings[i].status){
								active = "Yes";
							}else{
								active = "No";
							}
							var xyz = new Date(data.listProductPricings[i].priceFromDate);
							xyz = xyz.getFullYear()+"-"+ (xyz.getMonth() + 1 > 9 ? xyz.getMonth() + 1 : "0"+(xyz.getMonth()+1)) +"-"+(xyz.getDate() > 9 ? xyz.getDate() : "0"+(xyz.getDate())) ;
							
							var mno = new Date(data.listProductPricings[i].priceToDate);
							mno = mno.getFullYear()+"-"+(mno.getMonth() +1>9 ? mno.getMonth() +1 : "0"+(mno.getMonth()+1)) + "-"+(mno.getDate() > 9 ? mno.getDate() : "0"+(mno.getDate()));
							
							priceDataTable = priceDataTable + "<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
							+"<td class=\"text-center\">"+xyz+"</td>"
							+"<td class=\"text-center\">"+mno+"</td>"
							+"<td class=\"text-center\"><i class=\"fa fa-inr\" aria-hidden=\"true\">"+data.listProductPricings[i].price+"</i></td>"
							+"<td class=\"text-center\">"+active+"</td>"
						}
						$("#priceTable > tbody").html(priceDataTable);
						if(data.listSellerDiscount[0] !== null){
							$("#discountCheck").prop("checked",true);
							$("#discountDiv").attr("style","display:block");
							var discountDataTable = "";
							$("#discountTable > tbody").html("");
							$("#showDiscountDiv").attr("style","display:block");
							for(var i = 0; i< data.listSellerDiscount.length; i++){
								var active;
								if(data.listSellerDiscount[i].status){
									active = "Yes";
								}else{
									active = "No";
								}
								var discount;
								if(data.listSellerDiscount[i].flatDiscount){
									discount ="<i class=\"fa fa-inr\" aria-hidden=\"true\">"+data.listSellerDiscount[i].discount+"</i>";
								}else{
								discount = data.listSellerDiscount[i].discount+" "+"%";
								}
								var xyz = new Date(data.listSellerDiscount[i].fromDateDiscount);
								xyz = xyz.getFullYear()+"-"+ (xyz.getMonth() + 1 > 9 ? xyz.getMonth() + 1 : "0"+(xyz.getMonth()+1)) +"-"+(xyz.getDate() > 9 ? xyz.getDate() : "0"+(xyz.getDate()));
								
								var mno = new Date(data.listSellerDiscount[i].toDateDiscount);
								mno = mno.getFullYear()+"-"+(mno.getMonth() +1>9 ? mno.getMonth() +1 : "0"+(mno.getMonth()+1)) + "-"+(mno.getDate() > 9 ? mno.getDate() : "0"+(mno.getDate()));
								discountDataTable = discountDataTable +"<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
								+"<td class=\"text-center\">"+xyz+"</td>"
								+"<td class=\"text-center\">"+mno+"</td>"
								+"<td class=\"text-center\">"+discount+"</td>"
								+"<td class=\"text-center\">"+active+"</td>"
							}
							$("#discountTable > tbody").html(discountDataTable);
						}
						$("#productStatusDiv").attr("style","display:block");
						 if(data.flower.status){
							productStatus("Active");
							$("#productStatus").val("Active");
						}else{
							productStatus("Inactive");
							$("#productStatus").val("Inactive")
						}
						if(data.flower.availability){
							productAvailability("Yes");
						}else{
							productAvailability("No");
						}
						
						$("#productStatusHeader").removeClass("hideDiv");
						$("#productNameDiv").html("");
						var productNameDiv = "<div class=\"col-sm-4 col-xs-12\">"
						+"<div class=\"form-group\">"
						+"<div class=\"form-line\">"
						+"<input type=\"text\" class=\"form-control\" name=\"name\" id =\"name\" value="+data.flower.name+" placeholder=\"Product Name\">"
						+"</div>"
						+"</div>"
						+"</div>"
						+"<div class=\"col-sm-4 col-xs-12\">"
						+"<div class=\"form-group\">"
						+"<div class=\"form-line\">"
						+"<input type=\"text\" class=\"form-control\" name=\"productId\" id =\"productId\" value ="+data.flower.id+" readonly=\"readonly\" placeholder=\"Product Id\">"
						+"</div>"
					    +"</div>"
						+"</div>"
						+"<div class=\"col-sm-4 col-xs-12\">"
						+"<div class=\"form-group\">"
						+"<div class=\"form-line\">"
						+"<input type=\"text\" class=\"form-control\" name=\"sellerId\" id =\"sellerId\" value =\"${sessionScope.sellerDetailsSession.id}\" readonly=\"readonly\" placeholder=\"Product Id\">"
						+"</div>"
					    +"</div>"
						+"</div>"
						$("#productNameDiv").html(productNameDiv);
						$("#editProductId").val(data.flower.id);
						$("#allProductId").val(data.flower.allProducts.id); 
					}
			},error : function (data){
				alert("Error");
			}
		});
	} 
	function productAvailability(str,str3){
		$("#productAvailability").val(str);
		if(str === "0" || str === undefined){
			str = "Availability";
		}
		var mno ="<div class=\"form-group drop-custum\">"
			+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+str+"  --\"><span class=\"filter-option pull-left\">--"+str+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
			+"<ul class=\"dropdown-menu inner\" role=\"menu\" id=\"productAvailabilityUl\">"
			+"<li data-original-index=\"1\" id=\"productAvailabilityLi0\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"productAvailability('Yes','"+0+"')\"><span class=\"text\">Yes</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			+"<li data-original-index=\"2\" id=\"productAvailabilityLi1\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"productAvailability('No','"+1+"')\"><span class=\"text\">No</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
			+"</div>"
			
		$("#availabilityDiv").html(mno);	
		var lengthOfUl = $("#productAvailabilityUl li").size();
		for(var i = 0;i<lengthOfUl; i++){
			var getdata = $("ul#productAvailabilityUl li#productAvailabilityLi"+Number(i)).find('span').text();
				if(str === getdata){
					$("#productAvailabilityLi"+Number(i)).addClass("selected");
				}else{
					$("#productAvailabilityLi"+Number(i)).removeClass("selected");
				}
		}
		
	}
	function productStatus(str,str3){
		$("#productStatus").val(str);
		if(str === "0" || str === undefined){
			str = "Product Status";
		}
		var mno ="<div class=\"form-group drop-custum\">"
			+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+str+"  --\"><span class=\"filter-option pull-left\">--"+str+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
			+"<ul class=\"dropdown-menu inner\" role=\"menu\" id=\"productStatusUl\">"
			+"<li data-original-index=\"0\" id=\"productStatusLi0\"class=\"selected\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"productStatus('Product Status','"+0+"')\"><span class=\"text\">Product Status</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			+"<li data-original-index=\"1\" id=\"productStatusLi1\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"productStatus('Active','"+1+"')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			+"<li data-original-index=\"2\" id=\"productStatusLi2\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"productStatus('Inactive','"+2+"')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
			+"</div>"
			
		$("#productStatusDiv").html(mno);	
		var lengthOfUl = $("#productStatusUl li").size();
		for(var i = 0;i<lengthOfUl; i++){
			var getdata = $("ul#productStatusUl li#productStatusLi"+Number(i)).find('span').text();
				if(str === getdata){
					$("#productStatusLi"+Number(i)).addClass("selected");
				}else{
					$("#productStatusLi"+Number(i)).removeClass("selected");
				}
		}
		
	}
	var abc = "";
	function showImagesEdit(imageName,imageId){
		abc = abc + "<div class=\"col-md-4 col-sm-6 col-xs-12 editImages\">"
			+"<div class=\"thumbnail\">"
			+"<img src=\"getImage?id="+imageName+"\" class=\"img-responsive\" data-toggle=\"modal\" onclick=\"showModal('"+imageName+"','"+imageId+"')\"/>"
			+"<span class=\"label label-danger prdctName\">25 December 2015</span>"
		    +"</div>"
	        +"</div>";
	      $("#flowerImagesDiv").html(abc);
	}
	
	function showModal(imageName, imageId){
		modalImageId = imageId;
		if(!($("#allModals").children("#"+imageId).length > 0)){
			var abc ="<div class=\"modal fade\" id="+imageId+" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">"
			+"<div class=\"modal-dialog\" role=\"document\">"
			+"<div class=\"modal-content row singleImageEdit\">"
			+"<div class=\"col-md-4 col-xs-6 col-sm-12 thumbnail\" id=\"editImageDiv\">"
			+"<img src=\"getImage?id="+imageName+"\" class=\"img-responsive\"/>"
			+"</div>"
			+"<div class=\"col-md-8 col-xs-6 col-sm-12 _productImages\">"
			+"<form action=\"#\" id=\'singleUpload"+imageId+"\' class=\"dropzone\" method=\"post\" enctype=\"multipart/form-data\">"
			+"<div class=\"dz-message\">"
			+"<div class=\"drag-icon-cph\">"
			+"<i class=\"material-icons\">touch_app</i>"
			+"</div>"
			+"<h3>Drop files here or click to upload.</h3>"
			+"<em>(This is just a demo dropzone. Selected files are <strong>not</strong> actually uploaded.</em>"
			+"</div>"
			+"<div class=\"fallback\">"
			+"<input name=\"file\" type=\"file\" multiple />"
			+"</div>"
			+"</form>"
			+"</div>"
			+"<div class =\"row\">"
			+"<div class=\"modal-footer col-md-12 col-sm-12 col-xs-12 footerModal\">"
			+"<button type=\"button\" class=\"btn btn-secondary btn-raised\" data-dismiss=\"modal\">Close</button>"
			+"<button type=\"button\" class=\"btn btn-raised gradient-right\">Save changes</button>"
			+"</div>"
			+"</div>"
			+"</div>"
			+"</div>"
			+"</div>"
			$("#allModals").append(abc);
			createUserDropzone(imageId);
		}
		$("#"+imageId).modal({
			backdrop: 'static',
		    keyboard: false,
		    show:true
		});
		
	}
	//Upload and renaming the files being uploaded in dropzone.js
	 var modalImageId;
	function createUserDropzone(imageId){
		 var myDropzone = new Dropzone("#allModals #singleUpload"+imageId, {
				url : "singleUpload",
				init : function() {
					this.on("success", function(file, response) {
						if(defaultImageId === Number(1)){
							defaultImageId = "";
						}
						var a = this.element.classList+"";
						a = a.split("_");
						classPath = $("form." + "_" + a[1]).parent().attr("class");
						classPath = classPath.split("_");
						if(defaultImageId === ""){
							defaultImageId = "Florist"+"+@-"+classPath[1]+"+@-"+dateTime+file.name+"+@-"+modalImageId;
						}else{
							defaultImageId = defaultImageId + "-,@_"+"Florist"+"+@-"+classPath[1]+"+@-"+dateTime+file.name+"+@-"+modalImageId;
						}
		 			});
				},
				renameFilename : function(fileName) {
					var classpath = fileName;
					classpath = classpath.split("_");
					return "Florist" + "_" + dateTime+classpath[0];
					
					}
					
				});
		}
	var efg = "";
	function showDpEdit(imageUrl, imageId){
		efg = efg + "<div class=\"col-md-4 col-sm-6 col-xs-12 editImages\">"
		+"<div class=\"thumbnail\">"
		+"<img src=\"getImage?id="+imageUrl+"\" class=\"img-responsive\" data-toggle=\"modal\" onclick=\"showDpModal('"+imageUrl+"','"+imageId+"')\"/>"
		+"<span class=\"label label-danger prdctName\">25 December 2015</span>"
	    +"</div>"
        +"</div>";
	
      $("#flowerDisplayDiv").html(efg);
	}
	function showDpModal(imageName, imageId){
		dpImageId = imageId;
		if(!($("#dpModals").children("#"+imageId).length > 0)){
			var abc ="<div class=\"modal fade\" id="+imageId+" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">"
			+"<div class=\"modal-dialog\" role=\"document\">"
			+"<div class=\"modal-content row singleImageEdit\">"
			+"<div class=\"col-md-4 col-xs-6 col-sm-12 thumbnail\" id=\"editImageDiv\">"
			+"<img src=\"getImage?id="+imageName+"\" class=\"img-responsive\"/>"
			+"</div>"
			+"<div class=\"col-md-8 col-xs-6 col-sm-12 _thumnailImage\">"
			+"<form action=\"#\" id=\'singleUpload"+imageId+"\' class=\"dropzone\" method=\"post\" enctype=\"multipart/form-data\">"
			+"<div class=\"dz-message\">"
			+"<div class=\"drag-icon-cph\">"
			+"<i class=\"material-icons\">touch_app</i>"
			+"</div>"
			+"<h3>Drop files here or click to upload.</h3>"
			+"<em>(This is just a demo dropzone. Selected files are <strong>not</strong> actually uploaded.</em>"
			+"</div>"
			+"<div class=\"fallback\">"
			+"<input name=\"file\" type=\"file\" multiple />"
			+"</div>"
			+"</form>"
			+"</div>"
			+"<div class =\"row\">"
			+"<div class=\"modal-footer col-md-12 col-sm-12 col-xs-12 footerModal\">"
			+"<button type=\"button\" class=\"btn btn-secondary btn-raised\" data-dismiss=\"modal\">Close</button>"
			+"<button type=\"button\" class=\"btn btn-raised gradient-right\">Save changes</button>"
			+"</div>"
			+"</div>"
			+"</div>"
			+"</div>"
			+"</div>"
			$("#dpModals").append(abc);
			createDpDropzone(imageId);
		}
		$("#"+imageId).modal({
			backdrop: 'static',
		    keyboard: false,
		    show:true
		});
		
	}
	function createDpDropzone(imageId){
		 var myDropzone = new Dropzone("#dpModals #singleUpload"+imageId, {
				url : "singleUpload",
				init : function() {
					this.on("success", function(file, response) {
						if(singleFiles === Number(1)){
							$("#defaultDpImage").val("");
							singleFiles = "";
						}
						var a = this.element.classList+"";
						a = a.split("_");
						classPath = $("form." + "_" + a[1]).parent().attr("class");
						classPath = classPath.split("_");
						if(singleFiles === ""){
							singleFiles = "Florist"+"+@-"+classPath[1]+"+@-"+dateTime+file.name+"+@-"+dpImageId;
						}else{
							singleFiles = singleFiles + "-,@_"+"Florist"+"+@-"+classPath[1]+"+@-"+dateTime+file.name+"+@-"+dpImageId;
						}
		 			});
				},
				renameFilename : function(fileName) {
					var classpath = fileName;
					classpath = classpath.split("_");
					return "Florist" + "_" + dateTime+classpath[0];
					
					}
					
				});
		}
	var freeProductArray = new Array();
	function fetchAllProductsOfSeller(){
		$.ajax({
			type : "GET",
			url : "admin-fetchAllProductsBySeller",
			data : "",
			contentType : "application/json",
			processData : false,
			success : function(data) {
				alert(JSON.stringify(data))
				$("#freeProductSelect").html("");
				if (data.status) {
					var arValue = "";
					while (freeProductArray.length > 0) {
						freeProductArray.pop();
					}
					for(var j = 0; j < 3 ;j++){
					var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- Free Products --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- Free Products --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
							+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id='ulFreeProduct"+ Number(j)+"'>"
							+ "<li data-original-index=\"0\" class=\"selected\" id='freeProductLi"+Number(j)+"' onclick=\"clickFreeProductLi('"
							+ 0
							+ "','Free Products')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Free Products --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					var cde = "";
					for (var i = 0; i < data.listGeneralProduct.length; i++) {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' id='freeProductLi"
								+ j + Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFreeProductLi('"
								+ j + Number(Number(i) + Number(1))
								+ "','"
								+ data.listGeneralProduct[i].name
								+ "','"
								+ data.listGeneralProduct[i].allProductId
								+ "')\"><span class=\"text\">"
								+ data.listGeneralProduct[i].name
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						if(j === Number(0)){
							arValue = data.listGeneralProduct[i].specificId
							+ "_"
							+ data.listGeneralProduct[i].name
				   			freeProductArray.push(arValue);	
						}		
						
					}
					cde = cde + "</ul></div>";
					if(j === Number(0)){
						$("#freeProductSelect").html(abc + cde);
					}else{
						$("#freeProductSelect"+Number(j)).html(abc + cde);
					}
					
					}
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
			if(title1 === 'Free Products')
			{
				title1 = "--"+title1+"--";
			}
			var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\""+title1+ "\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">"
					+ title1
					+ "</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul id='ulFreeProduct"+liId[0]+"' class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"

			if (Number(liId[1]) > Number(0)) {
				var selectedId = $(".selected").attr("id");
				previousFreeProductLi = liId[0];
				alert("Previous Li Id Is"+previousFreeProductLi);

				abc = abc
						+ "<li data-original-index=\"0\" class=\"\" id='freeProductLi"+liId[0]+"' onclick=\"clickFreeProductLi('"
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
								+ liId[0] + Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFreeProductLi('"
								+ liId[0] + Number(Number(i) + Number(1))
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
								+ liId[0] + Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFreeProductLi('"
								+ liId[0] + Number(Number(i) + Number(1))
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
				if($("ul#ulFreeProduct"+liId[0]+" li#freeProductLi"+liId).parent().parent().parent().parent().attr("id") === "freeProductSelect"){
				   $("#freeProductSelect").html(abc + cde);
				   $("#freeProductName").val(freeProductId);
				}else if($("ul#ulFreeProduct"+liId[0]+" li#freeProductLi"+liId).parent().parent().parent().parent().attr("id") === "freeProductSelect1"){
					alert("In else if");
				   $("#freeProductSelect1").html(abc + cde);
				   $("#freeProductName1").val(freeProductId);
				}else{
				   $("#freeProductSelect2").html(abc + cde);
				   $("#freeProductName2").val(freeProductId);
				}

			} 
			else {
				alert("In else");
				$("#freeProductLi" + previousFreeProductLi).removeClass("selected");
				$("#freeProductLi"+liId[0]).addClass("selected");

				abc = abc
						+ "<li data-original-index=\"0\" class=\"selected\" id='freeProductLi"+liId[0]+"' onclick=\"clickFreeProductLi('"
						+ liId[0]
						+ "','Free Products')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Free Products--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < freeProductArray.length; i++) {
					var splittedArray = freeProductArray[i].split("_");
					cde = cde
							+ "<li data-original-index='"
							+ Number(Number(i) + Number(1))
							+ "' id='freeProductLi"
							+ liId[0] + Number(Number(i) + Number(1))
							+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFreeProductLi('"
							+ liId[0] + Number(Number(i) + Number(1))
							+ "','"
							+ splittedArray[1]
							+ "','"
							+ splittedArray[0]
							+ "')\"><span class=\"text\">"
							+ splittedArray[1]
							+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"

								}
								cde = cde + "</ul></div>"
								if($("ul#ulFreeProduct"+liId[0]+" li#freeProductLi"+liId).parent().parent().parent().parent().attr("id") === "freeProductSelect"){
									   $("#freeProductSelect").html(abc + cde);
									   $("#freeProductName").val(freeProductId);
									}else if($("ul#ulFreeProduct"+liId[0]+" li#freeProductLi"+liId).parent().parent().parent().parent().attr("id") === "freeProductSelect1"){
										alert("In else if");
									   $("#freeProductSelect1").html(abc + cde);
									   $("#freeProductName1").val(freeProductId);
									}else{
									   $("#freeProductSelect2").html(abc + cde);
									   $("#freeProductName2").val(freeProductId);
									}
				}
		}
		
	</script>
    <div class="color-bg"></div>
    <%@ include file="admin-includeFooter.jsp" %>
</body>
</html>
