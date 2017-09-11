<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Add Caterer</title>
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
                    <h2>Add Caterer</h2>
                    <small class="text-muted">Welcome to Wedlock application</small>
                </div>
                <div class="row clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2>Caterer Basic Information</h2>
                            </div>
                            <div class="body">
                                <div class="row clearfix" id="productNameDiv">
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="name"  id="name"  placeholder="Caterer Name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="sellerId" id="sellerId" value = "${sessionScope.sellerDetailsSession.id}" placeholder="Seller ID" readonly="readonly">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <label for="comment">Caterer Description</label>
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
                                    <div class="form-group drop-custum" id="catererTypeDiv">
                                            <select class="form-control show-tick">
                                                <option value="">--Caterer Type--</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="header margin-left-right-zero marginb15">
                                    <h2>Caterer Details </h2>
                                </div>
                                <div class="row clearfix">
                                <div class="col-sm-4 col-xs-12">
                                       <div class="form-group">
											<label for="comment">Freebie (if any)</label>
											<textarea class="form-control textarea-add" rows="6"
												name="freebie" id="freebie"></textarea>
										</div>
                                    </div> 
                                    <div class="col-sm-2 col-xs-12">
                                    <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" name ="noOfMembers" id="noOfMembers" placeholder="No. of Members">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-xs-12" id="availabilityDiv">
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
                                                <input type="text" class="form-control" name="advancePaymentPercentage" id="advancePaymentPercentage" placeholder="Advance percentage">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix form-group">
									<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 _thumnailImage" id="displayDiv">
										 <label for="comment" id="labelDisplayDiv">Caterer Display Image</label>
										<div id ="catererDisplayDiv">
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
									<div class="col-lg-8 col-md-6 col-sm-6 col-xs-12 _productImages" id="imagesDiv">
									<label for="comment" id="labelImagesDiv">Caterer Description Images</label>
									<div id="catererImagesDiv">
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
                                <div class="row clearfix">
								<div class="header marginb15 margin-bottom10">
									<div class="checkbox header-add">
										<label> <input type="checkbox" id="packageCheck" ><span class="cr" id="bank-check"> <i class="cr-icon glyphicon glyphicon-ok"></i>
										</span> Package Details(if any)
										</label>
									</div>
								</div>
							</div>
							<div id="packageDiv" class="hideDiv">
								<div class="row clearfix">
									<div class="col-sm-3 col-xs-12">
										<div class="form-group drop-custum" id="foodTypeDiv"></div>
									</div>
									<div class="col-sm-4 col-xs-12">
										<div class="form-group div-center hundred-width" id="foodNameDiv">
											<select class="form-control show-tick">
												<option value="0">-- Food Name --</option>
											</select>
										</div>
									</div>
									<div class="col-sm-5 col-xs-12" id="foodAdded">
										<div class="form-group">
											<label for="comment">Food Items Added</label>
											<label for="addedItems" id="addedItems"></label>
											<textarea class="form-control textarea-add" readonly="readonly" rows="6" name="listOfAddedFoodItems" id="listOfAddedFoodItems">
											</textarea>
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
                                    <div class="header marginb15">
                                        <h2>Caterer Pricing </h2>
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
														name="toDate" id="toDate" placeholder="To Date" disabled="disabled">
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<div class="form-line" id="basePrice1">
													<input type="text" class="form-control" name="price"
														id="price" placeholder="Base Price" readonly="readonly">
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<button type="button" id="plusbtn" class="plusIcon" title="Add Price"><img src="resources/images/icons8-Add-80.png" class="img-responsive"></button>
												<button type="button" id="clearPlusBtn" class="clearIcon" title="Clear Price Details"><img src="resources/images/icons8-Clear Symbol-80.png" class="img-responsive"></button>
												<button type="button" id="showPreviousPrices" class="showIcon hideDiv" title="Show Previous Prices" data-toggle="modal" data-target="#showPriceModal"><img src="resources/images/icons8-Show Property-100.png" class="img-responsive"></button>
											</div>
										</div>
									</div>
									<div class="row clearfix hideDiv" id="catererPricing1">
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
														name="toDate" id="toDate1" placeholder="To Date" disabled ="disabled">
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<div class="form-line" id="basePrice2">
													<input type="text" class="form-control" name="price"
														id="price1" placeholder="Base Price" readonly="readonly">
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<!-- <button type="button" class="btn btn-raised gradient-right"
													id="plusbtn1">Add</button> -->
												<button type="button" id="plusbtn1" class="plusIcon" title="Add Price"><img src="resources/images/icons8-Add-80.png" class="img-responsive"></button>
												<!-- <button type="button" class="btn btn-raised gradient-right"
													id="removePlusBtn1">Add</button> -->
												<button type="button" id="removePlusBtn1" class="minusIcon" title="Remove Price"><img src="resources/images/minus.png" class="img-responsive"></button>
												<button type="button" id="clearPlusBtn1" class="clearIcon1" title="Clear Price Details"><img src="resources/images/icons8-Clear Symbol-80.png" class="img-responsive"></button>	
											</div>
										</div>
									</div>
									<div class="row clearfix hideDiv" id="catererPricing2">
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
														name="toDate" id="toDate2" placeholder="To Date" disabled ="disabled">
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<div class="form-line" id="basePrice3">
													<input type="text" class="form-control" name="price"
														id="price2" placeholder="Base Price" readonly="readonly">
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
											<button type="button" id="plusbtn1" class="plusIcon" title="Add Price"><img src="resources/images/icons8-Add-80.png" class="img-responsive"></button>
												<!-- <button type="button" class="btn btn-raised gradient-right"
													id="plusbtn2">Add</button> -->
												<!-- <button type="button" class="btn btn-raised gradient-right"
														id="removePlusBtn2">Add</button> -->
												<button type="button" id="removePlusBtn2" class="minusIcon" title="RemovePrice"><img src="resources/images/minus.png" class="img-responsive"></button>
												<button type="button" id="clearPlusBtn2" class="clearIcon1" title="Clear Price Details"><img src="resources/images/icons8-Clear Symbol-80.png" class="img-responsive"></button>	
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
                                    	<input type = "hidden" name = "foodTypeName" id = "foodTypeName" value = "">
                                    	<input type = "hidden" name = "foodName" id = "foodName" value = "">
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
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
    
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
    var foodNameTitleLength = "";
    var lengthOccasions = "";
    var lengthFoodNames = "";
    var editFoodName = "";
    var editFoodTypeId = "";
    var editFoodTypeNames = "";
    var doNotRemoveFields = Number(0);
    Dropzone.options.singleUpload = {
			url : "singleUpload",
			init : function() {
				this.on("success", function(file, response) {
					var a = this.element.classList+"";
					a = a.split("_");
					classPathSingleFile = $("form." + "_" + a[1]).parent().parent().attr("class");
					classPathSingleFile = classPathSingleFile.split("_");
					if(singleFiles === ""){
						singleFiles = "Catering"+"+@-"+classPathSingleFile[1]+"+@-"+dateTime+file.name;
					}else{
						singleFiles = singleFiles + "-,@_"+"Catering"+"+@-"+classPathSingleFile[1]+"+@-"+dateTime+file.name;
					}
	 			});
			},
			renameFilename : function(fileName) {
				var classpath = fileName;
				classpath = classpath.split("_");
				return "Catering" + "_" + dateTime+classpath[0];
				
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
					classPath = $("form." + "_" + a[1]).parent().parent().attr("class");
					classPath = classPath.split("_");
					if(multipleFiles === ""){
						multipleFiles = "Catering"+"+@-"+classPath[1]+"+@-"+dateTime+file.name;
					}else{
						multipleFiles = multipleFiles + "-,@_"+ "Catering"+"+@-"+classPath[1]+"+@-"+dateTime+file.name;
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
				return "Catering" + "_" + dateTime+classpath[0];
			}
			
		};
    
    var idForFetch;
	$(document).ready(function(){
		fetchAllCatererType();
		fetchAllOccasion();
		if(location.href.match(/id/)){
			idForFetch = location.search.split("?");
			idForFetch = idForFetch[1].split("=");
			idForFetch = idForFetch[1];
			fetchCatererById(idForFetch);
		}
		
	});
    
    var catName = "Catering";
    var typeArr = new Array();
	var arry3 = new Array();
    
    function fetchAllCatererType() {
		$.ajax({
				type : "GET",
				url : "admin-fetchProductTypesWithStatusByCat?catName=" + catName,
				data : "",
				contentType : "application/json",
				processData : false,
				success : function(data) {
					$("#catererTypeDiv").html("");
					if (data.status) {

						var arValue = "";
						while(typeArr.length > 0){
							typeArr.pop();
						}
						var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Caterer Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Caterer Type--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
								+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
								+"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"+0+"','Caterer Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Caterer Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						var cde = "";		
								for(var i = 0; i<data.listAllProductTypes.length && data.listAllProductTypes[i].status; i++){	
									description = 
									cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' id='li"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"+Number(Number(i)+Number(1))+"','"+data.listAllProductTypes[i].typeName+"','"+data.listAllProductTypes[i].id+"')\"><span class=\"text\" title=\""+data.listAllProductTypes[i].typeDescription+"\">"+data.listAllProductTypes[i].typeName+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
									arValue = data.listAllProductTypes[i].id+"_"+data.listAllProductTypes[i].typeName+"_"+data.listAllProductTypes[i].typeDescription;
									typeArr.push(arValue);
								}
							cde = cde +"</ul></div>"
							$("#catererTypeDiv").html(abc + cde);
					}

				},
				error : function(e) {

					swal({
						title : 'Error!',
						text : 'Caterer Type Not Fetched Successfully!!!',
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
		if(title1 === 'Caterer Type')
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
					+ "','Caterer Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Caterer Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
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

			$("#catererTypeDiv").html(abc + cde);

		} 
		else {
			$("#li" + previousLi).removeClass("selected");
			$("#li0").addClass("selected");

			abc = abc
					+ "<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"
					+ 0
					+ "','Caterer Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Caterer Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
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

							$("#catererTypeDiv").html(abc + cde);
			}
	}
 
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
			if(title === ""){
				title = "-- Occasion --";
			}
		}
		if(lengthOccasions !=""){
			if(lengthOccasions > title.split(",").length){
				titleLength = "minus";
			}else if(lengthOccasions < title.split(",").length){
				titleLength = "plus";
			}else if(lengthOccasions === title.split(",").length){
				var editTitleName;
				var occsionTitleName;
				var check = Number(0);
				if(editOccasionName.indexOf(",")>=0){
					editTitleName = editOccasionName.split(",");
				}else{
					editTitleName = editOccasionName;
				}
				
				if(title.indexOf(",")>=0){
					occsionTitleName = title.split(",");
				}else{
					occsionTitleName = title;
				}
				
				var editId;
				if(editOccasionId.indexOf(",")>=0){
					editId = editOccasionId.split(",");
				}else{
					editId = editOccasionId;
				}
				
				for(var i =0; i<editTitleName.length; i++){
					for(var j =0; j<occsionTitleName.length;j++){
						if(editTitleName[i] === occsionTitleName[j]){
							check = Number(1);
							break;
						}
					}
					if(check === Number(0)){
						break;
					}
				}
				
				if(check === Number(1)){
					titleLength = "same";
				}else{
					titleLength = "samePlus"+"@*"+editId[i];
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
		if(pricingsDivNumber === Number(0)){
			$("#fromDate").attr("disabled",true);
			$("#toDate").attr("disabled",true);
			$("#price").attr("disabled",true);	
		}else{
			$("#fromDate" +pricingsDivNumber).attr("disabled",true);
			$("#toDate" +pricingsDivNumber).attr("disabled",true);
			$("#price" +pricingsDivNumber).attr("disabled",true);	
		}	
		
		addOtherDivs();
	  }
  }
	var fromPriceDate="";
	function addOtherDivs(){
		if (Number(pricingsDivNumber) < Number(2)) {
			pricingsDivNumber = Number(Number(pricingsDivNumber) + Number(1));
			if (pricingsDivNumber === 1) {
				
				  var fromDate1 = moment($("#toDate").val(),"dddd DD MMMM YYYY");
				    fromDate1 = fromDate1.add(1,'days')
				    fromDate1 = moment(fromDate1).format("dddd DD MMMM YYYY");
				    fromPriceDate = fromDate1;
				    
				    momentCalender($,moment);
				    $("#fromDate1").bootstrapMaterialDatePicker({
						 format: 'dddd DD MMMM YYYY',
					     clearButton: true,
					     weekStart: 1,
					     time: false,
						 minDate:new Date()
					});
				    
				    if($("#fromDate1").val() === ""){
				    	$("#fromDate1").val(fromDate1);
				    }
				    var toDate1 = moment(fromDate1,"dddd DD MMMM YYYY");
				    toDate1 = toDate1.add(1,'days')
				    toDate1 = moment(toDate1).format("dddd DD MMMM YYYY"); 
				    
				    $("#toDate1").bootstrapMaterialDatePicker({
						 format: 'dddd DD MMMM YYYY',
					     clearButton: true,
					     weekStart: 1,
					     time: false,
						 minDate:new Date()
					}); 
				addDiv1();
			} else if (pricingsDivNumber === 2) {
				
				var fromDate2 = moment($("#toDate1").val(),"dddd DD MMMM YYYY");
			    fromDate2 = fromDate2.add(1,'days')
			    fromDate2 = moment(fromDate2).format("dddd DD MMMM YYYY");
			    fromPriceDate = fromDate2;
			    
				momentCalender($,moment);
			    $("#fromDate2").bootstrapMaterialDatePicker({
					 format: 'dddd DD MMMM YYYY',
				     clearButton: true,
				     weekStart: 1,
				     time: false,
					 minDate:new Date()
				});
			    if($("#fromDate2").val() === ""){
			    	$("#fromDate2").val(fromDate2);
			    }
			    var toDate2 = moment(fromDate2,"dddd DD MMMM YYYY");
			    toDate2 = toDate2.add(1,'days')
			    toDate2 = moment(toDate2).format("dddd DD MMMM YYYY");
			    
			    $("#toDate2").bootstrapMaterialDatePicker({
					 format: 'dddd DD MMMM YYYY',
				     clearButton: true,
				     weekStart: 1,
				     time: false,
					 minDate:new Date()
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
		$("#catererPricing1").attr("style", "display:block");
	}
	function addDiv2() {
		$("#catererPricing2").attr("style", "display:block");
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
		    fromDate = fromDate.add(1,'days');
		    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");

		    $("#fromDate").bootstrapMaterialDatePicker({
				 format: 'dddd DD MMMM YYYY',
			     clearButton: true,
			     weekStart: 1,
			     time: false,
				 minDate:new Date()
			});
		    var from = moment().format("dddd DD MMMM YYYY")
		    if( $("#fromDate").val() === ""){
		    	$("#fromDate").val(from);
		    }
		    	$("#toDate").bootstrapMaterialDatePicker({
					 format: 'dddd DD MMMM YYYY',
				     clearButton: true,
				     weekStart: 1,
				     time: false,
					 minDate:fromDate
				});
	
	});
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

	$("#packageCheck").click(function(){
		if($(this).is(':checked')) {
		   $("#packageDiv").removeClass("hideDiv");
		   showAllFoodTypes();  
	    }else{
	    	$("#packageDiv").addClass("hideDiv");
	    }
	});
	var foodTypeArr = new Array();
	function showAllFoodTypes(){
		$.ajax({
			type : "GET",
			url : "admin-fetchAllFoodTypesWithStatus",
			data : "",
			contentType : "application/json",
			processData : false,
			success : function(data) {
				$("#foodTypeDiv").html("");
				if (data.status) {
					var arValue = "";
					while (foodTypeArr.length > 0) {
						foodTypeArr.pop();
					}
					var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- Food Type --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- Food Type --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
							+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulfoodType0\">"
							+ "<li data-original-index=\"0\" class=\"selected\" id=\"foodTypeLi0\" onclick=\"clickFoodTypeLi('"
							+ 0
							+ "','Food Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Food Type --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					var cde = "";
					for (var i = 0; i < data.listFoodType.length; i++) {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' id='foodTypeLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFoodTypeLi('"
								+ Number(Number(i) + Number(1))
								+ "','"
								+ data.listFoodType[i].name
								+ "','"
								+ data.listFoodType[i].id
								+ "')\"><span class=\"text\" title=\""+data.listFoodType[i].description+"\">"
								+ data.listFoodType[i].name
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						arValue = data.listFoodType[i].id
								+ "_"
								+ data.listFoodType[i].name
								+ "_"
								+ data.listFoodType[i].description;
								foodTypeArr.push(arValue);
					}
					cde = cde + "</ul></div>"
					$("#foodTypeDiv").html(abc + cde);
				}

			},
			error : function(e) {
				alert("Error");
				swal({
					title : 'Error!',
					text : 'Food Type Not Fetched Successfully!!!',
					type : 'error',
					confirmButtonText : "OK",
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}
		});
	}
	 var foodTypePreviousLi;    

		function clickFoodTypeLi(liId, title1, foodTypeId) {
			
			$("#foodTypeName").val(foodTypeId); //Hidden field to store the Flower type Id
			if(title1 === 'Food Type')
			{
				title1 = "--"+title1+"--";
			}
			var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\""+title1+ "\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">"
					+ title1
					+ "</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" id=\"ulfoodType0\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"

			if (Number(liId) > Number(0)) {
				var selectedId = $(".selected").attr("id");
				foodTypePreviousLi = liId;

				abc = abc
						+ "<li data-original-index=\"0\" class=\"\" id=\"foodTypeLi0\" onclick=\"clickFoodTypeLi('"
						+ 0
						+ "','Food Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Food Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < foodTypeArr.length; i++) {
					var splittedArray = foodTypeArr[i].split("_");
					if (Number(i) === Number(Number(liId) - Number(1))) {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' class =\"selected\" id='foodTypeLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"  title=\""+splittedArray[2]+"\" onclick =\"clickFoodTypeLi('"
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
								+ "' id='foodTypeLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" title=\""+splittedArray[2]+"\" onclick =\"clickFoodTypeLi('"
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

				$("#foodTypeDiv").html(abc + cde);

			} 
			else {
				$("#foodTypeLi" + foodTypePreviousLi).removeClass("selected");
				$("#foodTypeLi0").addClass("selected");

				abc = abc
						+ "<li data-original-index=\"0\" class=\"selected\" id=\"foodTypeLi0\" onclick=\"clickFoodTypeLi('"
						+ 0
						+ "','Food Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Food Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < foodTypeArr.length; i++) {
					var splittedArray = foodTypeArr[i].split("_");
					cde = cde
							+ "<li data-original-index='"
							+ Number(Number(i) + Number(1))
							+ "' id='li"
							+ Number(Number(i) + Number(1))
							+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" title=\""+splittedArray[2]+"\" onclick =\"clickFoodTypeLi('"
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
						   $("#foodTypeDiv").html(abc + cde);
				}
			showAllFoodNamesByFoodType(title1,foodTypeId);
		}
	 
		var foodNameArr = new Array();
		var foodNameid ="";
		var foodNametitle = "";
		function showAllFoodNamesByFoodType(foodTypeName,foodTypeId){
			if(foodTypeId !== undefined){
				$.ajax({
					type : "GET",
					url : "admin-fetchFoodByTypeIdWithStatus?typeId="+foodTypeId,
					data : "",
					contentType : "application/json",
					processData : false,
					success : function(data) {
						$("#foodNameDiv").html("");
						if (data.status) {
							var arValue = "";
							while (foodNameArr.length > 0) {
								foodNameArr.pop();
							}
							var classSelected = "";
							var title = "";
							var check = Number(0);
							if(foodNameid === "" && editFoodTypeId === ""){
								classSelected = "class = selected";
								title = "-- Food Name --";
							}else if(foodNameid === "" && editFoodTypeId !== ""){
								foodNameid = editFoodTypeId;
								foodNametitle = editFoodName;
								foodTypeNames = editFoodTypeNames;
								var textAreaFill = "";
								var subFoodNameTitle = foodNametitle.split(",");
								var subFoodTypeNames;
								if(foodTypeNames !== undefined){
									 subFoodTypeNames = foodTypeNames.split(",");	
									 for(var i =0; i< subFoodNameTitle.length; i++){
									 if(subFoodNameTitle[i] !== ""){
												textAreaFill = textAreaFill + subFoodTypeNames[i] +" --> " + subFoodNameTitle[i] +"\n";
											}
										}
									$("#addedItems").html("Items Added =" +subFoodNameTitle.length); 
									$("#listOfAddedFoodItems").html(textAreaFill);
								}
							}
							
							var cde = "";
							var abc = "";
							if(data.listFood !== null){
								for (var i = 0; i < data.listFood.length; i++) {
									var liClassSelected = "";
									if(foodNameid.indexOf(",") >=0){
										var lpq = foodNameid.split(",");
										var title1 = foodNametitle.split(",");
										for(var k = 0; k<lpq.length; k++){
											if(foodTypeId+"_"+data.listFood[i].id === lpq[k]){
												liClassSelected = "class = selected";
												if(title === ""){
													title = title1[k];
												} else{
													title = title + "," + title1[k];
												}
												check = Number(1);
											}
										}
									}else{
										if(foodTypeId+"_"+data.listFood[i].id === foodNameid){
											liClassSelected = "class = selected";
											if(title === ""){
												title = foodNametitle;
											} 
											check = Number(1);
										}
									}
									
									cde = cde
											+ "<li data-original-index='"
											+ Number(Number(i) + Number(1))
											+ "' "
											+ liClassSelected
											+ " id='foodNameLi"
											+ Number(Number(i) + Number(1))
											+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFoodNameLi('"
											+ Number(Number(i) + Number(1))
											+ "','"
											+ data.listFood[i].name
											+ "','"
											+ data.listFood[i].id
											+ "','"
											+ liClassSelected
											+ "','"
											+ Number(foodTypeId)
											+ "','"
											+ foodTypeName
											+ "')\"><span class=\"text\" title=\""+data.listFood[i].description+"\">"
											+ data.listFood[i].name
											+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
											
									arValue = data.listFood[i].id
											+ "_"
											+ data.listFood[i].name
											+ "_"
											+ data.listFood[i].description
											+ "_"
											+ Number(foodTypeId)
											+ "_"
											+ foodTypeName
											foodNameArr.push(arValue);
								}
								if(check === Number(0)){
									 title = "-- Food Name --";
								 }
								
								abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title="+title+" aria-expanded=\"false\"><span class=\"filter-option pull-left\">"+title+"</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
								+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulFoodName0\">"
								+ "<li data-original-index=\"0\" '"+classSelected+"' id=\"foodNameLi0\" onclick=\"clickFoodNameLi('"
								+ 0
								+ "','Food Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Food Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
								
							}else{
								abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- No Food To Display --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- No Food To Display --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
								+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulFoodName0\">"
								+ "<li data-original-index=\"0\" class=\"selected\" id=\"foodNameLi0\" onclick=\"clickFoodNameLi('"
								+ 0
								+ "','Food Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- No Food To Display --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
							}
							cde = cde + "</ul></div>"
							$("#foodNameDiv").html(abc + cde);
							
						}

					},
					error : function(e) {
						swal({
							title : 'Error!',
							text : 'Food Name Not Fetched Successfully!!!',
							type : 'error',
							confirmButtonText : "OK",
							allowEscapeKey : true,
							confirmButtonClass : "btn btn-raised gradient-right",
							animation : true
						});
					}
				});
			}else{
				var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- Food Name --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- Food Name --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
					+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulFoodName0\">"
					+ "<li data-original-index=\"0\" class=\"selected\" id=\"foodNameLi0\" onclick=\"clickFoodNameLi('"
					+ 0
					+ "','Food Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Food Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
				$("#foodNameDiv").html(abc);

			}
		}
		
		var previousFoodNameLi = "";
		var foodTypeIds = "";
		var foodTypeNames = "";
		//On click of each li in Occasion list 
		function clickFoodNameLi(liId, title1, foodNameId, classSelected, foodTypeId, foodTypeName) {
			foodTypeIds = foodTypeId;
			if (classSelected === undefined || classSelected === "") {
				if (foodNametitle === "") {
					foodNametitle = title1;
					foodNameid = foodTypeIds+"_"+foodNameId;
					foodTypeNames = foodTypeName;
				}else {
					if(title1 === "Food Name" || foodNametitle.indexOf("Food Name") >=0){
					foodNametitle = "";
					foodNameid = "";
					}
					else{
						if(foodNametitle === ""){
							foodNametitle = title1;
							foodNameid = foodTypeIds+"_"+foodNameId;
							foodTypeNames = foodTypeName;
						}else{
							foodNametitle = foodNametitle + "," + title1;
							foodNameid = foodNameid + "," + foodTypeIds+"_"+foodNameId;
							foodTypeNames = foodTypeNames + "," + foodTypeName;
						}
					}
					
				}
					
			} else {
				var a = foodNametitle.split(",");
				var b = foodNameid.split(",");
				var c = foodTypeNames.split(",");
				foodNametitle = "";
				foodNameid = "";
				foodTypeNames = "";
				for (var i = 0; i < a.length; i++) {
					if (a[i] === title1) {
						a[i] = "";
						b[i] = "";
						c[i] = "";
					} else {
						if (foodNametitle === "") {
							foodNametitle = a[i];
							foodNameid = b[i];
							foodTypeNames = c[i];
						} else {
							foodNametitle = foodNametitle + "," + a[i];
							foodNameid = foodNameid +"," + b[i];
							foodTypeNames = foodTypeNames +"," + c[i];
							
						}
					}
				}
			}
			var titles = "";
			if(foodNameid.indexOf(",") >=0){
				var lpq = foodNameid.split(",");
				var titleShow = foodNametitle.split(",");
				for(var i=0; i<lpq.length; i++){
					if(lpq[i].indexOf(foodTypeId+"_") >=0){
						if(titles === ""){
							titles = titleShow[i];
						}else{
							titles = titles +"," + titleShow[i];
						}						
					}
				}
				
				if(titles === ""){
					titles = "-- Food Name --";
				}
				
			}else{
				if(foodNametitle === "" || titles === ""){
					titles = "-- Food Name --";
				}else{
					titles = foodNametitle;
				}
				
			}
			
				var textAreaFill = "";
				$("#listOfAddedFoodItems").html("");
				var subFoodNameTitle = foodNametitle.split(",");
				
				var subFoodTypeNames;
					if(foodTypeNames !== undefined){
						 subFoodTypeNames = foodTypeNames.split(",");
						 for(var i =0; i< subFoodNameTitle.length; i++){
						 if(subFoodNameTitle[i] !== ""){
								  textAreaFill = textAreaFill + subFoodTypeNames[i] +" --> " + subFoodNameTitle[i] +"\n";
								}
							}
						 if(subFoodNameTitle[0] !== ""){
							 $("#addedItems").html("Items Added =" +subFoodNameTitle.length); 	 
						 }else{
							 $("#addedItems").html("");
						 }
						$("#listOfAddedFoodItems").html(textAreaFill);
					}
				
				
			    if(lengthFoodNames !=""){
			      var removeItems = "";
			      var similarItems = "";
			      foodNameTitleLength = "";	
				  var check = Number(0); 
				  var foodIdEdit = editFoodTypeId.split(",");
				  var id = foodNameid.split(",");
				  
					 for(var i =0; i< foodIdEdit.length;i++){
						for(var j =0; j<id.length; j++){
							if(foodIdEdit[i] === id[j]){
								check =Number(1);
								if(similarItems === ""){
									similarItems = foodIdEdit[i];
								}else{
									similarItems = similarItems + "," + foodIdEdit[i];
								}
								break;
							}
							
						}
						if(check === Number(0)){
							if(removeItems === ""){
								removeItems = foodIdEdit[i];
							}else{
								removeItems = removeItems + "," + foodIdEdit[i];
							}
						}else{
							check = Number(0);
						}
					}
				
			    var abc = similarItems.split(",");
			    var addedItems = "";
				 for(var i =0; i< id.length; i++){
					for(var j =0; j<abc.length; j++){
						if(id[i] === abc[j]){
							id[i] = "";
							check = Number(1);
							break;
						}
					}
					if(check === Number(0)){
						if(addedItems === ""){
							addedItems = id[i];
						}else{
							addedItems = addedItems + "," +id[i];
						}
					}else{
						check = Number(0);
					}
				}	 
				
				/*  var check = Number(0);
				if(lengthFoodNames > foodNametitle.split(",").length){
					foodNameTitleLength = "minus";
				}else if(lengthFoodNames < foodNametitle.split(",").length){
					foodNameTitleLength = "plus";
				}else if(lengthFoodNames === foodNametitle.split(",").length){
					var foodNameEdit;
					var title;
					var foodIdEdit;
					if(editFoodName.indexOf(",")>=0){
						foodNameEdit = editFoodName.split(",");
					}else{
						foodNameEdit = editFoodName;
					}
					if(foodNametitle.indexOf(",")>=0){
						title = foodNametitle.split(",");
					}else{
						title = foodNametitle;
					}
					if(editFoodTypeId.indexOf(",")>=0){
						foodIdEdit = editFoodTypeId.split(",");
					}else{
						foodIdEdit = editFoodTypeId;
					}
					
					for(var i =0; i< foodNameEdit.length;i++){
						for(var j =0; j<title.length; j++){
							if(foodNameEdit[i] === title[j]){
								check = Number(1); 
								break;
							}
						}
						if(check === Number(0)){
							break;	
						}
					}
					if(check === Number(1)){
						foodNameTitleLength = "same";
					}else{
						foodNameTitleLength = "samePlus"+"-@.-"+foodIdEdit[i];
					}
				} */
				$("#foodName").val(addedItems+"-@.-"+removeItems);
			}else{
				$("#foodName").val(foodNameid); //Hidden field to store the Occasion Id
			} 
			
			
			if($("#foodTypeName").val() !== "" && ($("#foodName").val() !== "")){
				$("#basePrice1").html("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price\" disabled=\"disabled\"  placeholder=\"Package Price / Per Plate\">");
				$("#basePrice2").html("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price1\" disabled=\"disabled\" placeholder=\"Package Price / Per Plate\">");
				$("#basePrice3").html("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price2\" disabled=\"disabled\" placeholder=\"Package Price / Per Plate\">");
			}else{
				$("#basePrice1").html("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price\" disabled=\"disabled\" placeholder=\"Base Price / Per Plate\">");
				$("#basePrice2").html("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price1\" disabled=\"disabled\"placeholder=\"Base Price / Per Plate\">");
				$("#basePrice3").html("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price2\" disabled=\"\disabled\" placeholder=\"Base Price / PerPlate\">");
			}
			var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\""+titles+ "\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">"
					+ titles
					+ "</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulFoodName0\">"

			if (Number(liId) > Number(0)) {
				var selectedId = $(".selected").attr("id");
				previousFoodNameLi = liId;

				abc = abc
						+ "<li data-original-index=\"0\" class=\"\" id=\"foodNameLi0\" onclick=\"clickFoodNameLi('"
						+ 0
						+ "','Food Name','"+""+"')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Food Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < foodNameArr.length; i++) {
					var splittedArray = foodNameArr[i].split("_");
					if (Number(i) === Number(Number(liId) - Number(1))) {
						var classSelected = "";
						if (!($("#foodNameLi" + Number(liId)).hasClass("selected"))) {
							classSelected = "class = selected";
						}
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' "
								+ classSelected
								+ " id='foodNameLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFoodNameLi('"
								+ Number(Number(i) + Number(1))
								+ "','"
								+ splittedArray[1]
								+ "','"
								+ splittedArray[0]
								+ "','"
								+ classSelected
								+ "','"
								+ splittedArray[3]
								+ "','"
								+ splittedArray[4]
								+ "')\"><span class=\"text\" title=\""+splittedArray[2]+"\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					} else {
						var classSelected = "";
						if($("#foodNameLi"+ Number(Number(i) + Number(1))).hasClass("selected")) {
							classSelected = "class = selected";
						}
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' "
								+ classSelected
								+ " id='foodNameLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick =\"clickFoodNameLi('"
								+ Number(Number(i) + Number(1))
								+ "','"
								+ splittedArray[1]
								+ "','"
								+ splittedArray[0]
								+ "','"
								+ classSelected
								+ "','"
								+ splittedArray[3]
								+ "','"
								+ splittedArray[4]
								+ "')\"><span class=\"text\" title=\""+splittedArray[2]+"\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					}

				}
				cde = cde + "</ul></div>"

				$("#foodNameDiv").html(abc + cde);

			} else {
				$("#foodNameLi" + previousFoodNameLi).removeClass("selected");
				$("#foodNameLi0").addClass("selected");
				var classSelected = "";
				abc = abc
						+ "<li data-original-index=\"0\" class=\"selected\" id=\"foodNameLi0\" onclick=\"clickFoodNameLi('"
						+ 0
						+ "','Food Name','"
						+ classSelected
						+ "')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Food Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < foodNameArr.length; i++) {
					var splittedArray = foodNameArr[i].split("_");
					cde = cde
							+ "<li data-original-index='"
							+ Number(Number(i) + Number(1))
							+ "' id='foodNameLi"
							+ Number(Number(i) + Number(1))
							+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFoodNameLi('"
							+ Number(Number(i) + Number(1))
							+ "','"
							+ splittedArray[1]
							+ "','"
							+ splittedArray[0]
							+ "','"
							+ classSelected
							+ "','"
							+ splittedArray[3]
							+ "','"
							+ splittedArray[4]
							+ "')\"><span class=\"text\" title=\""+splittedArray[2]+"\">"
							+ splittedArray[1]
							+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"

				}
				cde = cde + "</ul></div>"

				$("#foodNameDiv").html(abc + cde);
			}
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
				  text: 'Please Enter Caterer Type!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if($("#noOfMembers").val() === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Approximate No. Of Memembers In The Team!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		} else if($("#availability").val() === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Select Availability Of The Product!!!',
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
		}else if(singleFiles === "" && $("#defaultDpImage").val() === "" ){
			swal({
				  title: 'Warning!',
				  text: 'Please Upload Thumnail Image Of The Product!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if(multipleFiles === ""  && defaultImageId === "" ){
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
		}else if($("#basePrice").val() === "" && (!($("#packageCheck").is(":checked")))){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Base Price Of The Product!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else if($("#packageCheck").is(":checked") && ($("#foodTypeName").val() === "") || (($("#foodTypeName").val() !== "") && ($("#foodName").val() === ""))){
			if($("#foodTypeName").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Food Type!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else{
				swal({
					  title: 'Warning!',
					  text: 'Please Enter At Least One Food Name!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}
		}else{
			alert("In else");
			var job={};
			job["editProductId"]= $("#editProductId").val();
			job["allProductId"] = $("#allProductId").val();
			var check = Number(0);
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
			job["noOfMembers"] = $("#noOfMembers").val();
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
			if($("#foodName") !== ""){
				job["foodName"] = $("#foodName").val();	
			}
			if(titleLength !=""){
				job["titleLength"] = titleLength;
			}
			if(foodNameTitleLength !=""){
				job["foodTitleLength"] = foodNameTitleLength;
			}
			if($("#fromDate").val() !== ""){
			if($("#fromDate").val() !==""){
				/* var fromDate = ($("#fromDate").val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
				var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
				if(fromMonth < 10){
					fromMonth = "0"+fromMonth;
				}  */
				var fromDate = moment($("#fromDate").val(),"dddd DD MMMM YYYY");
				fromDate = moment(fromDate).format("YYYY-MM-DD");
				//job["pricingDetails"] = fromDate[3]+"-"+fromMonth+"-"+fromDate[1]; 
				job["pricingDetails"] = fromDate;
			}
			
			if($("#toDate").val() !=""){
				/* var toDate = ($("#toDate").val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
				var toMonth = getMonth(toDate[2]);   //Method to convert month name to month number
				if(toMonth < 10){
					toMonth = "0"+toMonth;
				} 
				job["pricingDetails"] = job["pricingDetails"] + "_@." + toDate[3]+"-"+toMonth+"-"+toDate[1];  */
				var toDate = moment($("#toDate").val(),"dddd DD MMMM YYYY");
				toDate = moment(toDate).format("YYYY-MM-DD");
				job["pricingDetails"] = job["pricingDetails"] + "_@." + toDate;
			}
			job["pricingDetails"] = job["pricingDetails"] + "_@." + $("#price").val();
			if(pricingsDivNumber > Number(0)){
				for(var k = 1; k<= Number(pricingsDivNumber) ; k++){
					if(($("#fromDate"+k).val() !== undefined) && ($("#toDate"+k).val() !== undefined) && ($("#price"+k).val() !== undefined) && ($("#fromDate"+k).val() !== "") && ($("#toDate"+k).val() !=="") && ($("#price"+k).val() !== "")){
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
						 var fromDate = moment($("#fromDate"+k).val(),"dddd DD MMMM YYYY");
						 fromDate = moment(fromDate).format("YYYY-MM-DD");
						 
						 var toDate = moment($("#toDate"+k).val(),"dddd DD MMMM YYYY");
						 toDate = moment(toDate).format("YYYY-MM-DD");
						 
						//job["pricingDetails"] = job["pricingDetails"] + "-,@_" + fromDate[3]+"-"+fromMonth+"-"+fromDate[1] + "_@." + toDate[3]+"-"+toMonth+"-"+toDate[1] + "_@." + $("#price"+k).val();
						if(job["pricingDetails"] !== undefined){
							job["pricingDetails"] = job["pricingDetails"] + "-,@_" + fromDate + "_@." + toDate + "_@." + $("#price"+k).val() ;
						}else{
							job["pricingDetails"] = fromDate + "_@." + toDate + "_@." + $("#price"+k).val();
						} 
						
					}
					if($("#fromDate"+k).val() === ""){
						check = Number(1);
						swal({
							  title: 'Warning!',
							  text: 'Please Enter Starting Date For The Respective Price!!!',
							  type: 'warning',
							  confirmButtonText: 'OK',
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
					}else if($("#toDate"+k).val() === ""){
						check = Number(1);
						swal({
							  title: 'Warning!',
							  text: 'Please Enter Ending Date For The Respective Price!!!',
							  type: 'warning',
							  confirmButtonText: 'OK',
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
					}else if($("#price"+k).val() === ""){
						check = Number(1);
						swal({
							  title: 'Warning!',
							  text: 'Please Enter Price For The Product!!!',
							  type: 'warning',
							  confirmButtonText: 'OK',
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
					}
				}
			}
		}	
			if(pricingsDivNumber === Number(0) || check === Number(0)){
				var categoryName = window.location+"";
				categoryName = categoryName.split("/");
				job["categoryName"] = categoryName[4];
				if(idForFetch !== undefined){
					categoryName = categoryName[4].split("?");
					job["categoryName"] = categoryName[0];
				}
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
						/* var fromDate = ($("#fromDateDiscount").val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
						var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
						if(fromMonth < 10){
							fromMonth = "0"+fromMonth;
						} 
						job["fromDateDiscount"] = fromDate[3]+"-"+fromMonth+"-"+fromDate[1]; */
						
						
						var fromDate = moment($("#fromDateDiscount").val(),"dddd DD MMMM YYYY");
						fromDate = moment(fromDate).format("YYYY-MM-DD");
						
						job["fromDateDiscount"] = fromDate;
						/* var toDate = ($("#toDateDiscount").val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
						var toMonth = getMonth(toDate[2]);   //Method to convert month name to month number
						if(toMonth < 10){
							toMonth = "0"+toMonth;
						}  */
						/* job["toDateDiscount"] =toDate[3]+"-"+toMonth+"-"+toDate[1]; */
						
						var toDate = moment($("#toDateDiscount").val(),"dddd DD MMMM YYYY");
						toDate = moment(toDate).format("YYYY-MM-DD");
						job["toDateDiscount"] = toDate;
						
						job["discount"] = $("#discount").val();
						if($("#checkBoxDiscountAmount").is(':checked')){
							job["isFlat"] = Number(1);
						}else{
							job["isFlat"] = Number(0);
						}
						alert(JSON.stringify(job));
						$("#submit").prop("disabled", true);
						 $.ajax({
						type : "POST",
						url : "admin-addEditCaterer",
						data : JSON.stringify(job),
						processData : false,
						contentType :"application/json",
						success : function(data) {
							if(data){
								if($("#editProductId").val() !=""){
									window.location = "admin-viewCateringProducts";
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
					url : "admin-addEditCaterer",
					data : JSON.stringify(job),
					processData : false,
					contentType :"application/json",
					success : function(data) {
						if(data){
							if($("#editProductId").val() !=""){
								window.location = "admin-viewCateringProducts";
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
			
			
		}
	});
	function removeAllFields(){
		$("#name").val("");
		$("#description").val("");
		$("#availability").val("");
		$("#noOfMembers").val("");
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
		defaultCatererOccasion(true,0,"Occasion");
		defaultProductType(true,0,"Caterer Type");
		$("#freebie").val("");
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
		if($("#discountCheck").is(':checked')){
			$("#discountCheck").prop("checked",false);
			$("#discountDiv").attr("style","display:none");
		}
		
		var l = pricingsDivNumber;
		for(var k =1; k<= l ;k++){
			removeFlowerPricingDiv(k);
		}
		
		if($("#packageCheck").is(":checked")){
			$("#packageCheck").prop("checked",false);
			$("#packageDiv").addClass("hideDiv");
			defaultFoodType(true,"0","Food Type");
			$("#foodNameDiv").html("<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- Food Name --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- Food Name --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
					+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulFoodName0\">"
					+ "<li data-original-index=\"0\" class=\"selected\" id=\"foodNameLi0\" onclick=\"clickFoodNameLi('"
					+ 0
					+ "','Food Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Food Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>");
			$("#listOfAddedFoodItems").val("");
			$("#basePrice1").html("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price\" placeholder=\"Base Price\">");
			$("#basePrice2").html("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price1\" placeholder=\"Base Price\">");
			$("#basePrice3").html("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price2\" placeholder=\"Base Price\">");
			
		}
		pricingsDivNumber = Number(0);
		singleFiles = "";
		multipleFiles = "";
		title = "";
		id = "";
		modelId = "";
		dpImageId = "";
		defaultImageId = "";
		titleLength = "";
		lengthOccasions = "";
		abc = "";
		efg = "";
		foodNameTitleLength = "";
	    lengthFoodNames = "";
	    editFoodName = "";
	    editFoodTypeId = "";
		$("#productAvailability").val("");
		$("#editProductId").val("");
		$("#allProductId").val("");
		$("#productStatus").val("");
		$("#occasionName").val("");
		$("#typeName").val("");
		$("#foodTypeName").val("");
		$("#foodName").val("");
	}
	
	function defaultCatererOccasion(isInComplete,occasionId,occasionName){
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
	
	function defaultProductType(isInComplete,typeId,typeName){
		// Removing the values from the photo type list
		var abc ="";
		if(isInComplete){
			 abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Caterer Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Caterer Type--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
					+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
					+"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"+0+"','Caterer Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Caterer Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		}else{
			abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\--" +typeName+"--\ aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"+typeName+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
				+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
				+"<li data-original-index=\"0\" class=\"\" id=\"li0\" onclick=\"clickLi('"+0+"','Caterer Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Caterer Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
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
		
		$("#catererTypeDiv").html(abc + cde);
		
	}
	
	function defaultFoodType(isInComplete,foodTypeId,foodTypeName){
		// Removing the values from the photo type list
		var abc ="";
		if(isInComplete){
			 abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Food Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Food Type--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
					+"<ul class=\"dropdown-menu inner\" id=\"ulfoodType0\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
					+"<li data-original-index=\"0\" class=\"selected\" id=\"foodTypeLi0\" onclick=\"clickLi('"+0+"','Food Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Food Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		}else{
			abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\--" +typeName+"--\ aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"+typeName+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
				+"<ul class=\"dropdown-menu inner\" id=\"ulfoodType0\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
				+"<li data-original-index=\"0\" class=\"\" id=\"foodTypeLi0\" onclick=\"clickLi('"+0+"','Food Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Food Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		}
		var cde = "";
		for (var i = 0; i < foodTypeArr.length; i++) {
			var splittedArray = foodTypeArr[i].split("_");
			var classSelected = ""
			if(!isInComplete){
				if(Number(splittedArray[0]) === Number(typeId)){
					classSelected = "class = selected";
				}
			}
				cde = cde
				+ "<li data-original-index='"
				+ Number(Number(i) + Number(1))+ "'id='foodTypeLi"+ Number(Number(i) + Number(1))+ "' "+classSelected+"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickFoodTypeLi('"
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
		
		$("#foodTypeDiv").html(abc + cde);
		
		
	}
	 function fetchCatererById(catererId){
		$.ajax({
			type : "GET",
			url : "admin-fetchCatererByCatererId?id="+catererId,
			data : "",
			processData : false,
			contentType : "application/json",
			success : function(data) {
					if(data==="null" || data===null || data==="" || typeof data === "undefined")
					{
						alert("Error Page");
					}
					 if(data.status){
						$("#name").val(data.caterer.name);
						$("#description").val(data.caterer.description);
						for(var i=0; i<data.listIntProductOccasion.length;i++){
							if(Number(i) === Number(0)){
								editOccasionId = data.listIntProductOccasion[i].occasion.id;
								editOccasionName = data.listIntProductOccasion[i].occasion.name;
							}else{
								editOccasionId = editOccasionId +","+data.listIntProductOccasion[i].occasion.id;
								editOccasionName = editOccasionName +","+data.listIntProductOccasion[i].occasion.name;
							}
						}
						
						$("#occasionName").val(editOccasionId);
						title = editOccasionName;
						id = editOccasionId;
						lengthOccasions = data.listIntProductOccasion.length;
						titleLength = "same";
						defaultCatererOccasion(false,editOccasionId,editOccasionName);
						$("#typeName").val(data.caterer.productType.id);
						defaultProductType(false,Number(data.caterer.productType.id),data.caterer.productType.typeName);
						$("#freebie").val(data.caterer.freebie);
						$("#noOfMembers").val(data.caterer.noOfMember);
						$("#advancePaymentPercentage").val(data.caterer.advancePaymentPercentage);
						$("#flowerDisplayDiv").html("");
						showDpEdit(data.caterer.dpUrl,data.caterer.id);
						singleFiles = Number(1);
						$("#defaultDpImage").val(data.caterer.dpUrl);
						$("#catererImagesDiv").html("");
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
						
						
						if(data.listFoodOfPackage[0] !== null){
							for(var i =0; i<data.listFoodOfPackage.length; i++){
								if(Number(i) === Number(0)){
									editFoodTypeId = data.listFoodOfPackage[i].food.foodType.id +"_" +data.listFoodOfPackage[i].food.id; 
									editFoodName = data.listFoodOfPackage[i].food.name;
									foodTypeNames = data.listFoodOfPackage[i].food.foodType.name;
									editFoodTypeNames = data.listFoodOfPackage[i].food.foodType.name;
								}else{
									editFoodTypeId = editFoodTypeId + "," + data.listFoodOfPackage[i].food.foodType.id +"_" +data.listFoodOfPackage[i].food.id;
									editFoodName = editFoodName +"," + data.listFoodOfPackage[i].food.name;
									foodTypeNames = foodTypeNames +","+data.listFoodOfPackage[i].food.foodType.name;
									editFoodTypeNames = foodTypeNames +","+data.listFoodOfPackage[i].food.foodType.name;
								}
							}
							$("#foodName").val(editFoodTypeId);
							$("#listOfAddedFoodItems").html("");
							$("#packageCheck").prop("checked",true);
							$("#packageDiv").removeClass("hideDiv");
							showAllFoodTypes();
							$("#basePrice1").html("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price\" disabled=\"disabled\"placeholder=\"Package Price / Per Plate\">");
							$("#basePrice2").html("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price1\" disabled=\"disabled\" placeholder=\"Package Price / Per Plate\">");
							$("#basePrice3").html("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price2\" disabled=\"disabled\"placeholder=\"Package Price / Per Plate\">");
							foodNametitle = editFoodName;
							foodNameid = editFoodTypeId;
							lengthFoodNames = data.listFoodOfPackage.length;
							foodNameTitleLength = "same";
							var textAreaFill = "";
							var subFoodNameTitle = foodNametitle.split(",");
							var subFoodTypeNames;
							if(foodTypeNames !== undefined){
								 subFoodTypeNames = foodTypeNames.split(",");	
								 for(var i =0; i< subFoodNameTitle.length; i++){
								 if(subFoodNameTitle[i] !== ""){
											textAreaFill = textAreaFill + subFoodTypeNames[i] +" --> " + subFoodNameTitle[i] +"\n";
										}
									}
								alert(subFoodNameTitle.length); 
								$("#addedItems").html("Items Added =" +subFoodNameTitle.length); 
								$("#listOfAddedFoodItems").html(textAreaFill);
							}
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
						 if(data.caterer.status){
							productStatus("Active");
							$("#productStatus").val("Active");
						}else{
							productStatus("Inactive");
							$("#productStatus").val("Inactive")
						}
						if(data.caterer.availability){
							productAvailability("Yes");
						}else{
							productAvailability("No");
						}
						
						$("#productStatusHeader").removeClass("hideDiv");
						$("#productNameDiv").html("");
						var productNameDiv = "<div class=\"col-sm-4 col-xs-12\">"
						+"<div class=\"form-group\">"
						+"<div class=\"form-line\">"
						+"<input type=\"text\" class=\"form-control\" name=\"name\" id =\"name\" value=\""+data.caterer.name+"\" placeholder=\"Product Name\">"
						+"</div>"
						+"</div>"
						+"</div>"
						+"<div class=\"col-sm-4 col-xs-12\">"
						+"<div class=\"form-group\">"
						+"<div class=\"form-line\">"
						+"<input type=\"text\" class=\"form-control\" name=\"productId\" id =\"productId\" value ="+data.caterer.id+" readonly=\"readonly\" placeholder=\"Product Id\">"
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
						$("#editProductId").val(data.caterer.id);
						$("#allProductId").val(data.caterer.allProducts.id); 
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
		abc = abc +"<div class=\"col-md-4 col-sm-6 col-xs-12 editImages\">"
			+"<div class=\"thumbnail\">"
			+"<img src=\"getImage?id="+imageName+"\" class=\"img-responsive\" data-toggle=\"modal\" onclick=\"showModal('"+imageName+"','"+imageId+"')\"/>"
			+"<span class=\"label label-danger prdctName\">25 December 2015</span>"
		    +"</div>"
	        +"</div>";
	      $("#imagesDiv").removeClass("col-lg-8 col-md-6 col-sm-6 col-xs-12 _productImages").addClass("col-lg-6 col-md-6 col-sm-6 col-xs-12 _productImages");  
	      $("#labelImagesDiv").attr("style","margin-left:3%;");
	      $("#catererImagesDiv").html(abc);
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
		efg = efg + "<div class=\"col-md-4 col-sm-12 col-xs-12 editImages\">"
		+"<div class=\"thumbnail\">"
		+"<img src=\"getImage?id="+imageUrl+"\" class=\"img-responsive\" data-toggle=\"modal\" onclick=\"showDpModal('"+imageUrl+"','"+imageId+"')\"/>"
		+"<span class=\"label label-danger prdctName\">25 December 2015</span>"
	    +"</div>"
        +"</div>";
      $("#displayDiv").removeClass("col-lg-4 col-md-6 col-sm-6 col-xs-12 _thumnailImage").addClass("col-lg-6 col-md-6 col-sm-6 col-xs-12 _thumnailImage");
      $("#labelDisplayDiv").attr("style","margin-left:2%;");
      $("#catererDisplayDiv").html(efg);
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
	
	 $("#price,#price1,#price2").click(function(){
		 var i = "";
		 if(this.id.indexOf("1")>=0){
			 i = 1;
		 }else if(this.id.indexOf("2")>=0){
			 i = 2;
		 }
		var fromDate =  moment($("#fromDate"+i).val(),"dddd DD MMMM YYYY");
		fromDate =moment(fromDate).format("YYYY-MM-DD");
		var toDate =  moment($("#toDate"+i).val(),"dddd DD MMMM YYYY");;
		toDate = moment(toDate).format("YYYY-MM-DD");
		
		if(moment(toDate).isBefore(moment(fromDate))){
			swal({
				  title : 'Warning!',
				  text: 'Ending Date Cannot Be Before Starting Date!!!',
				  type : 'warning',
				  confirmButtonText : 'OK',
				  allowEscapeKey : true,
				  confirmButtonClass : "btn btn-raised gradient-right",
				  animation : true
				});
			$("#toDate"+i).val("");
			$("#price"+i).val("");
		}else if(moment(fromDate).isSame(moment(toDate))){
			swal({
				  title : 'Warning!',
				  text: 'Ending Date Cannot Be Same As Starting Date!!!',
				  type : 'warning',
				  confirmButtonText : 'OK',
				  allowEscapeKey : true,
				  confirmButtonClass : "btn btn-raised gradient-right",
				  animation : true
				});
			$("#toDate"+i).val("");
			$("#price"+i).val("");
		}else if ($("#fromDate"+i).val() !== ""){
			if(i !== ""){
				if(i === Number(1)){
					if(($("#fromDate"+i).val() === $("#fromDate").val()) && ($("#toDate"+i).val() === $("#toDate").val())){
						swal({
							  title : 'Warning!',
							  text: 'You Have Already Entered Price Within The Same Range Of Dates!!!',
							  type : 'warning',
							  confirmButtonText : 'OK',
							  allowEscapeKey : true,
							  confirmButtonClass : "btn btn-raised gradient-right",
							  animation : true
							});
						$("#fromDate"+i).val("");
						$("#toDate"+i).val("");
						$("#price"+i).val("");
					}
				}else{
					if(($("#fromDate"+i).val() === $("#fromDate").val()) && ($("#toDate"+i).val() === $("#toDate").val())){
						swal({
							  title : 'Warning!',
							  text: 'You Have Already Entered Price Within The Same Range Of Dates!!!',
							  type : 'warning',
							  confirmButtonText : 'OK',
							  allowEscapeKey : true,
							  confirmButtonClass : "btn btn-raised gradient-right",
							  animation : true
							});
						$("#fromDate"+i).val("");
						$("#toDate"+i).val("");
						$("#price"+i).val("");
					}else{
						if(($("#fromDate"+i).val() === $("#fromDate"+Number(Number(i) - Number(1))).val()) && ($("#toDate"+i).val() === $("#toDate"+ Number(Number(i) - Number(1))).val())){
							swal({
								  title : 'Warning!',
								  text: 'You Have Already Entered Price Within The Same Range Of Dates!!!',
								  type : 'warning',
								  confirmButtonText : 'OK',
								  allowEscapeKey : true,
								  confirmButtonClass : "btn btn-raised gradient-right",
								  animation : true
								});
							$("#fromDate"+i).val("");
							$("#toDate"+i).val("");
							$("#price"+i).val("");
						}
					}
				}
			}
			
		}
		
	});
	 
	 $("#discount").click(function(){
		    var fromDate =  moment($("#fromDateDiscount").val(),"dddd DD MMMM YYYY");
			fromDate =moment(fromDate).format("YYYY-MM-DD");
			var toDate =  moment($("#toDateDiscount").val(),"dddd DD MMMM YYYY");;
			toDate = moment(toDate).format("YYYY-MM-DD");
			
			if(moment(toDate).isBefore(moment(fromDate))){
				swal({
					  title : 'Warning!',
					  text: 'Ending Date Cannot Be Before Starting Date!!!',
					  type : 'warning',
					  confirmButtonText : 'OK',
					  allowEscapeKey : true,
					  confirmButtonClass : "btn btn-raised gradient-right",
					  animation : true
					});
				$("#toDateDiscount").val("");
				$("#discount").val("");
			}else if(moment(fromDate).isSame(moment(toDate))){
				swal({
					  title : 'Warning!',
					  text: 'Ending Date Cannot Be Same As Starting Date!!!',
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
	 $("#fromDate").mouseleave(function(){
			if( $("#fromDate").val() !== ""){
				$("#toDate").attr("disabled",false);
				$("#fromDate").attr("disabled",true);
			}
		 });
		 $("#toDate").mouseleave(function(){
			if($("#toDate").val() !==""){
				 var fromDate = moment($("#toDate").val(),"dddd DD MMMM YYYY");
				    fromDate = fromDate.add(1,'days');
				    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");
				    if($("#fromDate1").val() === ""){
				    	$("#fromDate1").val(fromDate);
				    }
				}	
		});
		 $("#price").click(function(){
			 if($("#toDate").val() !== ""){
				 $("#price").attr("readonly",false);
				 $("#toDate") .attr("disabled",true);
			 }
		 });
		 
		 $("#fromDate1").mouseleave(function(){
			 if( $("#fromDate1").val() !== ""){
					$("#toDate1").attr("disabled",false);
					$("#fromDate1").attr("disabled",true);
				}
		 });
		 $("#toDate1").mouseleave(function(){
				if($("#toDate1").val() !==""){
					var fromDate = moment($("#toDate1").val(),"dddd DD MMMM YYYY");
				    fromDate = fromDate.add(1,'days');
				    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");
				    if($("#fromDate2").val() === ""){
					    $("#fromDate2").val(fromDate);
				    }
				}	
		});
		 $("#price1").click(function(){
			 if($("#toDate1").val() !== ""){
				 $("#price1").attr("readonly",false);
				 $("#toDate1").attr("disabled",true); 
			 }
		 });
		 $("#fromDate2").mouseleave(function(){
			 if( $("#fromDate2").val() !== ""){
					$("#toDate2").attr("disabled",false);
				}
			 $("#fromDate2").attr("disabled",true);
		 });
		$("#price2").click(function(){
			if($("#toDate2").val() !== ""){
				 $("#price2").attr("readonly",false);
				 $("#toDate2").attr("disabled",true);
			 }
		});
	$("#clearPlusBtn,#clearPlusBtn1,#clearPlusBtn2").click(function(){
		if(this.id === "clearPlusBtn"){
			$("#fromDate").val("");
			$("#toDate").val("");
			$("#toDate").attr("disabled",true);
			$("#price").val("");
			$("#price").attr("readonly",true);
			$("#price").attr("disabled",false);
			$("#fromDate").attr("disabled",false);
			/* $("#toDate").attr("disabled",false);
			$("#price").attr("disabled",false); */
		}else if(this.id === "clearPlusBtn1"){
			var fromDate = moment($("#toDate").val(),"dddd DD MMMM YYYY");
		    fromDate = fromDate.add(1,'days');
		    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");
			$("#fromDate1").val(fromDate);
			$("#fromDate1").attr("disabled",false);
			$("#toDate1").val("");
			$("#toDate1").attr("disabled",true);
			$("#price1").val("");
			$("#price1").attr("readonly",true);
			$("#price").attr("disabled",false);
			/* $("#fromDate1").attr("disabled",false);
			$("#toDate1").attr("disabled",true);
			$("#price1").attr("disabled",true);  */
		}else {
			var fromDate = moment($("#toDate1").val(),"dddd DD MMMM YYYY");
		    fromDate = fromDate.add(1,'days');
		    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");
		    
			$("#fromDate2").val(fromDate);
			$("#fromDate2").attr("disabled",false);
			$("#toDate2").val("");
			$("#toDate2").attr("disabled",true);
			$("#price2").val("");
			$("#price2").attr("readonly",true);
			$("#price").attr("disabled",false);
			/* $("#fromDate2").attr("disabled",false);
			$("#toDate2").attr("disabled",true);
			$("#price2").attr("disabled",true); */
		}
	}); 
	</script> 
    <div class="color-bg"></div>
    <%@ include file="admin-includeFooter.jsp" %>
</body>
</html>
