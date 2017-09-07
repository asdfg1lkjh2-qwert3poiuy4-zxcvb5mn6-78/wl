<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Seller</title>
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css">
<%@ include file="admin-includeHeader.jsp"%>
</head>
<body class="theme-blush">
<!-- Test Modal -->
<div class="modal fade" id="smallModal" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="smallModalLabel">Package Details</h4>
            </div>
            <div class="modal-body">
					<div class="body">
						<div class="row clearfix">
						<div class="col-sm-3 col-xs-12">
							<div class="form-group">
							<label for="serviceName" style="padding-top:12%;">Service Name:</label>
							</div>
						</div>
							<div class="col-sm-9 col-xs-12">
								<div class="form-group mrgn-less-15">
									<div class="form-line">
										<input type="text" class="form-control"name="serviceName" id="serviceName"placeholder="Service Taken" disabled="disabled">
									</div>
								</div>
							</div>
						</div>
						<div class="row clearfix">
						<div class="col-sm-3 col-xs-12">
							<div class="form-group">
							<label for="serviceName" style="padding-top:12%;">Start Date:</label>
							</div>
						</div>
							<div class="col-sm-9 col-xs-12">
								<div class="form-group mrgn-less-15">
									<div class="form-line">
										<input type="text" class="form-control"name="startDate" id="startDate"placeholder="Service Start Date" disabled="disabled">
									</div>
								</div>
							</div>
						</div>
						<div class="row clearfix">
						<div class="col-sm-3 col-xs-12">
							<div class="form-group">
							<label for="serviceName" style="padding-top:12%;">Expiry Date:</label>
							</div>
						</div>
							<div class="col-sm-9 col-xs-12">
								<div class="form-group mrgn-less-15">
									<div class="form-line">
										<input type="text" class="form-control"name="endDate" id="endDate"placeholder="Service Expiry Date" disabled="disabled">
									</div>
								</div>
							</div>
						</div>
						<div class="row clearfix">
							<div class="col-sm-6 col-xs-12">
								<div class="form-group mrgn-less-15">
									<div class="checkbox">
										<label class="labelCheckbox"> <input type="checkbox"
											name="halfYearly" id="halfYearly">
											<span class="cr"><i
												class="cr-icon glyphicon glyphicon-ok"></i></span> Half Yearly Plan
										</label>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-xs-12">
								<div class="form-group mrgn-less-15">
									<div class="checkbox">
										<label class="labelCheckbox"> <input type="checkbox"
											name="annual" id="annual">
											<span class="cr"><i
												class="cr-icon glyphicon glyphicon-ok"></i></span> Annual Plan
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
            <div class="modal-footer">
            <button type="button" class="btn btn-raised waves-effect" data-dismiss="modal" id="closeModal">CLOSE</button>
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
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerFirstName" id="sellerFirstName"
												placeholder="Seller First Name">
										</div>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerLastName" id="sellerLastName"
												placeholder="Seller Last Name">
										</div>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerContactNumber" id="sellerContactNumber"
												placeholder="Seller Contact Number">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerAlternateNumber" id="sellerAlternateNumber"
												placeholder="Seller Alternate Number">
										</div>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerEmailId" id="sellerEmailId"
												placeholder="Seller Email Id">
										</div>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="password" class="form-control" name="sellerPassword" id="sellerPassword"
												placeholder="Seller Password">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-12">
									<div class="form-group">
									<label for="comment">Seller Present Address</label>
											<textarea rows="4" class="form-control textarea-add no-resize" name ="sellerPresentAddress" id="sellerPresentAddress"></textarea>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-12 col-xs-12">
									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox" name ="checkBoxId" id="checkBoxId"> <span
												class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
												Same as present address...
											</label>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="form-group margin-top0">
										<label for="comment">Seller Permanent Address</label>
											<textarea rows="4" class="form-control textarea-add no-resize" name="sellerPermanentAddress" id="sellerPermanentAddress"></textarea>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-4 col-xs-12">
									<div class="form-group drop-custum" id="stateDiv">
										<select class="form-control show-tick">
											<option value="">-- State --</option>
										</select>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group drop-custum" id="cityDiv">
										<select class="form-control show-tick">
											<option value="">-- CityName --</option>
										</select>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12">
									<div class="form-group drop-custum" id="localityDiv">
										<select class="form-control show-tick">
											<option value="">-- Locality Name --</option>
										</select>
									</div>
								</div>
								<div class="col-sm-1 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" readonly="readonly" name="zipCode" id="zipCode"
												placeholder="Zip Code">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="datepicker form-control" name="sellerDateOfBirth" id="sellerDateOfBirth"
												placeholder="Date of Birth">
										</div>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12" id="sellerGenderDiv">
									<div class="form-group drop-custum">
										<select class="form-control show-tick" name="sellerGender" id="sellerGender">
											<option value="">-- Gender --</option>
											<option value="Male">Male</option>
											<option value="Female">Female</option>
											<option value="TransGender">TransGender</option>
										</select>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerCompanyName" id="sellerCompanyName"
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
								<div class="col-sm-6 col-xs-12" id="sellerAddressProofDiv">
									<div class="form-group drop-custum">
										<select class="form-control show-tick" name="sellerAddressProof" id="sellerAddressProof">
											<option value="">-- Address Proof --</option>
											<option value="10">XXX</option>
											<option value="20">XXXX</option>
										</select>
									</div>
								</div>
								<div class="col-sm-6 col-xs-12" id="sellerIdProofDiv">
									<div class="form-group drop-custum">
										<select class="form-control show-tick" name="sellerIdProof" id="sellerIdProof">
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
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 _sellerImage">
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
								<div class="header marginb15">
									<h2>Our Service Available</h2>
								</div>
							</div>
							<div class="row clearfix">
							<div class="col-md-12 col-xs-12">
								<div class="main-service-section" id="serviceTakenDiv">
									      <div class="view view-eighth">
                                                            <div class="service-modal-image">
                                                                <img src="resources/images/16.jpg" class="img-responsive" alt="">
                                                                <div class="flower-position">
                                                                    <span><img src="images/flower-ico.png" alt=""></span>
                                                                    <label>Flourist</label>
                                                                </div> 
                                                            </div>
                                                            <div id="servicePriceDetails" class="mask">
                                                                <div class="pricemodal-details">
                                                                    <div class="serviceHalfYearly">
                                                                        <span>Half-yearly</span>
                                                                        <p class=""><i class="fa fa-inr"></i>12500</p>
                                                                    </div>
                                                                     <div class="serviceAnually">
                                                                        <span>Annually</span>
                                                                        <p class=""><i class="fa fa-inr"></i>12500</p>
                                                                    </div>
                                                                </div>
                                                                <div class="serviceChecked hideDiv">
                                                                	<img src="resources/images/smileyService.png" alt="Service Added To Cart" class="img-responsive">
                                                                </div>
                                                            </div>
									</div>
								</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="header marginb15 margin-bottom10">
									<div class="checkbox header-add">
										<label> <input type="checkbox" value="" id="addAccountCheck" > <span
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
												<input type="text" class="form-control" name="accountHolderName" id="accountHolderName"
													placeholder="Account Holder Name">
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="form-control" name="accountNumber" id="accountNumber"
													placeholder="Account Number">
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-sm-6 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="ifscCode" id="ifscCode"
													placeholder="IFSC Code">
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="branchCode" id="branchCode"
													placeholder="Branch Code">
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-sm-6 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="branchName" id="branchName"
													placeholder="Branch Name">
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div class="form-group"></div>
									</div>
								</div>
							</div>
							<div class="hideDiv" id="sellerAccountFull">
								<div class="row clearfix">
									<div class="header marginb15 margin-bottom10">
										<div class="checkbox header-add">
											<label> Seller Account Details</label>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-sm-6 col-xs-12" id="sellerAccountDiv">
										<div class="form-group drop-custum">
											<select class="form-control show-tick">

											</select>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12 " id="sellerInactiveDiv">
										<div class="form-group drop-custum">
											<select class="form-control show-tick">

											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-xs-12">
								<input type = "hidden" name ="stateName" id ="stateName" value = "">
								<input type = "hidden" name = "cityame" id ="cityName" value = "">
								<input type = "hidden" name = "localityName" id = "localityName" value = "">
								<input type = "hidden" name = "sellerGenderClick" id ="sellerGenderClick" value = "">
								<input type = "hidden" name = "sellerAddressProofClick" id ="sellerAddressProofClick" value = "">
								<input type = "hidden" name = "sellerIdProofClick" id ="sellerIdProofClick" value= "">
								<input type = "hidden" name = "editSellerId" id = "editSellerId" value = "">
								<input type = "hidden" name = "editSellerBankDetailsId" id ="editSellerBankDetailsId" value = "0">
								<input type = "hidden" name = "defaultSellerAdressProofImg" id = "defaultSellerAddressProofImg" value ="">
								<input type = "hidden" name = "defaultSellerIdProofImg" id ="defaultSellerIdProofImg" value = "">
								<input type = "hidden" name = "defaultSellerImg" id ="defaultSellerImg" value = "">
								<input type = "hidden" name = "sellerAccount" id ="sellerAccount" value = "">
								<input type = "hidden" name = "sellerInactive" id = "sellerInactive" value = ""> 
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
	<script src="resources/js/sweetalert.min.js"></script>
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
	<script src="resources/js/basic-form-elements.js"></script> 
	<!--jquery-2.1.3.min Library Js -->
	<script type="text/javascript">
		
		var dateTime = new Date().getTime();    //For getting the current time in milli seconds
		var checkFile = new Array();			// Array to check whether all mandatory upload fields are been inserted before submit
		var classPath ="";						//For checking the files and thereby inserting to their respective image variables
		var addressProof = "";					//For retaining all the address Proof image files
		var idProof = "";                       //For retaining all the id Proof image files
		var sellerImage = "";					//For retaining all the seller Image files;
		var checkSubmit = 0;					//Marker to check whether the page is refreshed or not
		var hasValue = 0;
		var isEdit = 0;
		//Upload and renaming the files being uploaded in dropzone.js
		Dropzone.options.singleUpload = {
			url : "singleUpload",
			init : function() {
				this.on("success", function(file, response) {
					var a = this.element.classList+"";
					a = a.split("_");
					 if(checkFile.length === 0){
						checkFile.push(a[1].trim());
					}else{
						for(var i = 0; i<checkFile.length; i++){
							var k = Number(0);
							for(var j=i ; j<checkFile.length;j++){
								if(checkFile[j].trim() === a[1].trim()){
									k = Number(1);
								}
							}
							if( k === Number(0)){
								checkFile.push(a[1].trim());
							}
							
						}
					}
					classPath = $("form." + "_" + a[1]).parent().attr("class");
					classPath = classPath.split("_");
					if(classPath[1] === "addressProof"){
						if(addressProof === ""){
							if(isEdit === Number(1)){
								addressProof = "Seller"+"_"+classPath[1]+"_"+$("#defaultSellerAddressProofImg").val();
							}else{
								addressProof = "Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
							}
							
						}else{
							addressProof = addressProof +","+"Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
						}
					}
					if(classPath[1] === "idProof"){
						if(idProof === ""){
							if(isEdit === Number(1)){
								idProof = "Seller"+"_"+classPath[1]+"_"+$("#defaultSellerIdProofImg").val();
							}else{
								idProof = "Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
							}
							
						}else{
							idProof = idProof +","+"Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
						}
					}if(classPath[1] === "sellerImage"){
						if(sellerImage === ""){
							if(isEdit === Number(1)){
								sellerImage = "Seller"+"_"+classPath[1]+"_"+$("#defaultSellerImg").val();
							}else{
								sellerImage = "Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
							}
						}else{
							sellerImage = sellerImage +","+"Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
						}
					}
					
				
					
				});
				 if(isEdit === 1){
						this.on("addedfile", function() {
							if (this.files[1] != null) {
								this.removeFile(this.files[0]);
							}
						});
					}
			},
			renameFilename : function(fileName) {
				var classpath = fileName;
				classpath = classpath.split("_");
				if(isEdit === 1){
					return classpath[0];
				}else{
					return "Seller" + "_" + dateTime+classpath[0];
				}
				

			}
		};
		
		
		$(document).ready(function(){
			fetchAllState();
			var idForFetch;
			if(location.href.match(/id/)){
				idForFetch = location.search.split("?");
				idForFetch = idForFetch[1].split("=");
				idForFetch = idForFetch[1];
				fetchSellerById(idForFetch);
			}
			  if(idForFetch === undefined){
				fetchAllCategories();
			} 
		});
		var ary = new Array ();   			// Array for storing the state names and Id.
		var cityAry = new Array ();			//Array for storing city names anf Id
		var localityAry = new Array ();		// Array for storing zipCodes and Id
		
		//Fetching all States by ajax call
		function fetchAllState() {
			$
					.ajax({
						type : "GET",
						url : "admin-fetchAllStates",
						data : "",
						contentType : "application/json",
						processData : false,
						success : function(data) {
							$("#stateDiv").html("");
							if (data.status) {
								var arValue = "";
								while(ary.length > 0){
									ary.pop();
								}
								var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--State Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--State Name--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
										+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
										+"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"+0+"','State Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- State Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
								var cde = "";		
										for(var i = 0; i<data.listAllStates.length; i++){	
											cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' id='li"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"+Number(Number(i)+Number(1))+"','"+data.listAllStates[i].stateName+"','"+data.listAllStates[i].id+"')\"><span class=\"text\">"+data.listAllStates[i].stateName+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
											arValue = data.listAllStates[i].id+"_"+data.listAllStates[i].stateName;
											ary.push(arValue);
										}
									cde = cde +"</ul></div>"
									$("#stateDiv").html(abc + cde);
							}

						},
						error : function(e) {
							alert("Error");
							swal({
								title : 'Error!',
								text : 'State Not Fetched Successfully!!!',
								type : 'error',
								confirmButtonText : "OK",
								allowEscapeKey : true,
								confirmButtonClass : "btn btn-raised gradient-right",
								animation : true
							});
						}
					});
		}
		
		
		var previousLi; 			// For previous li id to remove the class selected
		
		//On click of each li in State list 
		 function clickLi(liId,title1,stateId){
			$("#stateName").val(stateId);			//Hidden field to store the state Id
			var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--"+title1+ "--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"
			+ title1
			+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"

			if(Number(liId) > Number(0)){
				 var selectedId = $(".selected").attr("id");
					previouLi = liId;

				abc = abc + "<li data-original-index=\"0\" class=\"\" id=\"li0\" onclick=\"clickLi('"
						+ 0
						+ "','State Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- State Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < ary.length; i++) {
					var splittedArray = ary[i].split("_");

					if (Number(i) === Number(Number(liId) - Number(1))) {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' class =\"selected\" id='li"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"+Number(Number(i) + Number(1))+"','"+splittedArray[1]+"','"+splittedArray[0]+"')\"><span class=\"text\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					} else {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' id='li"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"+Number(Number(i) + Number(1))+"','"+splittedArray[1]+"','"+splittedArray[0]+"')\"><span class=\"text\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					}

				}
				cde = cde + "</ul></div>"
				
				$("#stateDiv").html(abc + cde);

			} else {
				$("#li" + previousLi).removeClass("selected");
				$("#li0").addClass("selected");
				
				 abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"
				+ 0
				+ "','State Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- State Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		var cde = "";
		for (var i = 0; i < ary.length; i++) {
			var splittedArray = ary[i].split("_");
				cde = cde
						+ "<li data-original-index='"
						+ Number(Number(i) + Number(1))
						+ "' id='li"
						+ Number(Number(i) + Number(1))
						+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"
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

		$("#stateDiv").html(abc + cde);
			}
			if(stateId !=undefined){
				fetchAllCitiesById(false,stateId,"CityId","CityName");     //Fetching all cities by state Id
			}
			
		}
		
		 // Function to fetch all cities by state Id
	     function fetchAllCitiesById(isForEdit,stateId,cityId,cityName){
	    	 $.ajax({
					type : "GET",
					url : "admin-fetchCityByStateId?id="+stateId,
					data : "",
					processData : false,
					contentType :"application/json",
					success : function(data) {
						$("#cityDiv").html("");
						if(data.status){
							while(cityAry.length > 0){
								cityAry.pop();
							}
							var abc = "";
							var arValue = "";
							if(!isForEdit){
								abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--City Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--City Name--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
									+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
									+"<li data-original-index=\"0\" class=\"selected\" id=\"cityLi0\" onclick=\"clickCityLi('"+0+"','City Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- City Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
							}else{
								
								abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=--"+cityName+"-- aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"+cityName
								+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
								+ "<li data-original-index=\"0\" id=\"li0\" onclick=\"clickCityLi('"+ 0+ "','City Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- City Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
							}
										var cde = "";
										for (var i = 0; i <data.listAllCities.length; i++) {
											var classSelected = ""
											if(isForEdit){
												if(Number(data.listAllCities[i].id) === cityId){
													classSelected = "class = selected";
												}
											}
												arValue = data.listAllCities[i].id+"_"+data.listAllCities[i].cityName;
												cityAry.push(arValue);
												
												cde = cde
												+ "<li data-original-index='"
												+ Number(Number(i) + Number(1))+ "'id='li"+ Number(Number(i) + Number(1))+ "' "+classSelected+"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickCityLi('"
												+ Number(Number(i) + Number(1))
												+ "','"
												+ data.listAllCities[i].cityName
												+ "','"
												+ data.listAllCities[i].id
												+ "')\"><span class=\"text\">"
												+ data.listAllCities[i].cityName
												+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
										}
										
									cde = cde +"</ul></div>"
									$("#cityName").val(cityId);
									$("#cityDiv").html(abc + cde);
						}
							
					},
					error : function(e) {
						alert("Error");
						swal({
							  title: 'Error!',
							  text: 'City Not Fetched Successfully!!!',
							  type: 'error',
							  confirmButtonText :"OK",
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
						$("#submit").prop("disabled", false);

					}
	    	 });
	    	 
	    	 
	     }
	     
		//On click of li in city list
	    function clickCityLi(liId,title1,cityId){
			$("#cityName").val(cityId);			//Hidden field to store city Id
			var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--"+title1+ "--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"
			+ title1
			+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"

			if(Number(liId) > Number(0)){
				 var selectedId = $(".selected").attr("id");
					previouLi = liId;

				abc = abc + "<li data-original-index=\"0\" class=\"\" id=\"cityLi0\" onclick=\"clickCityLi('"
						+ 0
						+ "','City Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- City Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < cityAry.length; i++) {
					var splittedArray = cityAry[i].split("_");

					if (Number(i) === Number(Number(liId) - Number(1))) {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' class =\"selected\" id='cityLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickCityLi('"+Number(Number(i) + Number(1))+"','"+splittedArray[1]+"','"+splittedArray[0]+"')\"><span class=\"text\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					} else {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' id='cityLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickCityLi('"+Number(Number(i) + Number(1))+"','"+splittedArray[1]+"','"+splittedArray[0]+"')\"><span class=\"text\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					}

				}
				cde = cde + "</ul></div>"
				
				$("#cityDiv").html(abc + cde);

			} else {
				$("#cityLi" + previousLi).removeClass("selected");
				$("#cityLi0").addClass("selected");
				
				 abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"cityLi0\" onclick=\"clickCityLi('"
				+ 0
				+ "','City Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- City Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		var cde = "";
		for (var i = 0; i < cityAry.length; i++) {
			var splittedArray = cityAry[i].split("_");
				cde = cde
						+ "<li data-original-index='"
						+ Number(Number(i) + Number(1))
						+ "' id='cityLi"
						+ Number(Number(i) + Number(1))
						+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickCityLi('"
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

		$("#cityDiv").html(abc + cde);
		
			}
			if(cityId !=undefined){
				fetchAllLocalitiesByCityId(false,cityId,"ZipCodeId","LocalityName");
			}
			
	    } 
	 
		
	  //Fetch Zip Code By City Id
	    function fetchAllLocalitiesByCityId(isForEdit,cityId,zipCodeId,localityName){
	    	 $.ajax({
					type : "GET",
					url : "admin-fetchZipCodeByCityId?id="+cityId,
					data : "",
					processData : false,
					contentType :"application/json",
					success : function(data) {
						$("#localityDiv").html("");
						if(data.status){
							var arValue = "";
							while(localityAry.length > 0){
								localityAry.pop();
							}
							if(!isForEdit){
								var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Locality Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Locality Name--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
									+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
									+"<li data-original-index=\"0\" class=\"selected\" id=\"localityLi0\" onclick=\"clickLocalityLi('"+0+"','Locality Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Locality Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
							}else{
								var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\--"+localityName+"--\ aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"+localityName+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
									+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
									+"<li data-original-index=\"0\"  id=\"localityLi0\" onclick=\"clickLocalityLi('"+0+"','Locality Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Locality Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
							}
								
								var cde = "";		
										for(var i = 0; i<data.listAllZipCodes.length; i++){	
											var classSelected = ""
												if(isForEdit){
													if(Number(data.listAllZipCodes[i].id) === zipCodeId){
														classSelected = "class = selected";
													}
												}
													var arValue = data.listAllZipCodes[i].id+"_"+data.listAllZipCodes[i].localityName+"_"+data.listAllZipCodes[i].zipCode;
													localityAry.push(arValue);
												
											cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' "+classSelected+" id='localityLi"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLocalityLi('"+Number(Number(i)+Number(1))+"','"+data.listAllZipCodes[i].localityName+"','"+data.listAllZipCodes[i].id+"','"+data.listAllZipCodes[i].zipCode+"')\"><span class=\"text\">"+data.listAllZipCodes[i].localityName+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
										}
								    $("#localityName").val(zipCodeId);
									cde = cde +"</ul></div>"
									$("#localityDiv").html(abc + cde);
						}
							
					},
					error : function(e) {
						alert("Error");
						swal({
							  title: 'Error!',
							  text: 'Locality Not Fetched Successfully!!!',
							  type: 'error',
							  confirmButtonText :"OK",
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
					}
	    	 });
   	
	    }
	    var zipCodeValue;      // Variable to show zip Code
	    function clickLocalityLi(liId,title1,zipCodeId,zipCode){
			$("#localityName").val(zipCodeId);    // Hidden field to store zip Code Id
			zipCodeValue = zipCode;
			var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--"+title1+ "--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"
			+ title1
			+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"

			if(Number(liId) > Number(0)){
				 var selectedId = $(".selected").attr("id");
					previouLi = liId;

				abc = abc + "<li data-original-index=\"0\" class=\"\" id=\"localityLi0\" onclick=\"clickLocalityLi('"
						+ 0
						+ "','Locality Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Locality Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < localityAry.length; i++) {
					var splittedArray = localityAry[i].split("_");
					if (Number(i) === Number(Number(liId) - Number(1))) {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' class =\"selected\" id='localityLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLocalityLi('"+Number(Number(i) + Number(1))+"','"+splittedArray[1]+"','"+splittedArray[0]+"','"+splittedArray[2]+"')\"><span class=\"text\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					} else {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' id='localityLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLocalityLi('"+Number(Number(i) + Number(1))+"','"+splittedArray[1]+"','"+splittedArray[0]+"','"+splittedArray[2]+"')\"><span class=\"text\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					}

				}
				cde = cde + "</ul></div>"
				
				$("#localityDiv").html(abc + cde);

			} else {
				$("#localityLi" + previousLi).removeClass("selected");
				$("#localityLi0").addClass("selected");
				
				 abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"localityLi0\" onclick=\"clickLocalityLi('"
				+ 0
				+ "','Locality Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Locality Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		var cde = "";
		for (var i = 0; i < localityAry.length; i++) {
			var splittedArray = localityAry[i].split("_");
			zipCodeValue = "";
			zipCodeValue = splittedArray[2];
				cde = cde
						+ "<li data-original-index='"
						+ Number(Number(i) + Number(1))
						+ "' id='localityLi"
						+ Number(Number(i) + Number(1))
						+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLocalityLi('"
						+ Number(Number(i) + Number(1))
						+ "','"
						+ splittedArray[1]
						+ "','"
						+ splittedArray[0]
						+ "','"
						+ splittedArray[2]
						+ "')\"><span class=\"text\">"
						+ splittedArray[1]
						+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			
	}
		cde = cde + "</ul></div>"

		$("#localityDiv").html(abc + cde);
		
			}
		if(liId !=0){
			$("#zipCode").val(zipCodeValue);
		}else{
			$("#zipCode").val("");
		}	
		
	    } 
	  
	   var storePresentAddress = new Array();     //Array to store present address on key press if checkeboz is marked.
	   $("#sellerPresentAddress").keyup(function(){
		  storePresentAddress.push($("#sellerPresentAddress").val()); 
		  if($("#checkBoxId").hasClass("isCheck")){
			  for(var i = 0; i<storePresentAddress.length; i++){
				  $("#sellerPermanentAddress").val(storePresentAddress[i]);
			  }
			  
		  }
		  
	   });
	   
	   //On click of checkbox if marked than write the same thing in permanent address 
		$("#checkBoxId").click(function(){
			checkBoxClick();
		});
		function checkBoxClick(){
			if($("#checkBoxId").is(':checked')) {
				$("#checkBoxId").addClass("isCheck");
				if($("#sellerPresentAddress").val() !== ""){
					storePresentAddress.push($("#sellerPresentAddress").val());
				}
				 for(var i = 0; i<storePresentAddress.length; i++){
					   $("#sellerPermanentAddress").val(storePresentAddress[i]);
					  }
			    }else{
			    	if($("#checkBoxId").hasClass("isCheck")){
						$("#checkBoxId").removeClass("isCheck");
						$("#sellerPermanentAddress").val("");
					}
			    }
		}
		
	    
	   //On submit click
		$("#submit").click(function(event){
			event.preventDefault();
			var doNotRemoveFields = 0;
			if(checkFile.length === Number(3)){
				
			if($("#sellerFirstName").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter First Name!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#sellerLastName").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Last Name!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#sellerContactNumber").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Contact Number!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#sellerPresentAddress").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Present Address!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#sellerPermanentAddress").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Permanent Address!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#stateName").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter State!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#cityName").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter City!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#localityName").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Locality!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if ($("#sellerDateOfBirth").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Date of Birth!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#sellerGender").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Gender!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#sellerCompanyName").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Company Name!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#sellerAddressProof").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Address Proof!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#sellerIdProof").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Id Proof!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if(checkServiceTaken === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter At Least Service You Want To Avail!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if(($("#sellerInactive").val() ==="Reasons")){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Inactive Reason!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#sellerEmailId").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Email Id!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#sellerPassword").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Password!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			} else{
				
				var job = {};
				
				job["editSellerId"] = $("#editSellerId").val();
				job["sellerFirstName"] = $("#sellerFirstName").val();
				job["sellerLastName"] = $("#sellerLastName").val();
				job["sellerContactNumber"] =$("#sellerContactNumber").val();
				job["sellerAlternateNumber"] =$("#sellerAlternateNumber").val();
				job["editSellerBankDetailsId"] = $("#editSellerBankDetailsId").val();
				job["sellerPresentAddress"] =$("#sellerPresentAddress").val();
				job["sellerPermanentAddress"] =$("#sellerPermanentAddress").val();
				job["stateId"] =$("#stateName").val();
				job["cityId"] =$("#cityName").val();
				job["zipCodeId"] =$("#localityName").val();
				var sellerDateOfBirth = ($("#sellerDateOfBirth").val()).trim().split(/\s+/);  //Trimming the seller Date of Birth For white spaces 
				var sellerMonth = getMonth(sellerDateOfBirth[2]);   //Method to convert month name to month number
				if(sellerMonth < 10){
					sellerMonth = "0"+sellerMonth;
				} 
				job["sellerDateOfBirth"] = sellerDateOfBirth[3]+"-"+sellerMonth+"-"+sellerDateOfBirth[1]; 
				if($("#sellerGenderClick").val() !=""){
					job["sellerGender"] = $("#sellerGenderClick").val();
				}else{
					job["sellerGender"] =$("#sellerGender").val();
				}
				job["sellerCompanyName"] =$("#sellerCompanyName").val();
				if($("#sellerAddressProofClick").val() !=""){
					job["sellerAddressProof"] = $("#sellerAddressProofClick").val();
				}else{
					job["sellerAddressProof"] =$("#sellerAddressProof").val();
				}
				if($("#sellerIdProofClick").val() !=""){
					job["sellerIdProof"] = $("#sellerIdProofClick").val();
				}else{
					job["sellerIdProof"] =$("#sellerIdProof").val();
				}
				
				job["sellerInactive"] = $("#sellerInactive").val();
				job["sellerEmailId"] =$("#sellerEmailId").val();
				job["sellerPassword"] =$("#sellerPassword").val();
				job["addressProofFiles"] = addressProof;
				job["idProofFiles"] = idProof;
				job["sellerImageFiles"] = sellerImage;
				job["serviceTakenId"] = serviceTakenId;
				
				if(($("#accountHolderName").val() || $("#accountNumber").val() || $("#ifscCode").val() || $("#branchCode").val() || $("#branchName").val()) !=""){
					hasValue = 1;
					if($("#accountHolderName").val() === ""){
						swal({
							  title: 'Warning!',
							  text: 'Please Enter Acoount Holder Name!!!',
							  type: 'warning',
							  confirmButtonText: 'OK',
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
					}else if($("#accountNumber").val() === ""){
						swal({
							  title: 'Warning!',
							  text: 'Please Enter Account Number!!!',
							  type: 'warning',
							  confirmButtonText: 'OK',
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
					}else if($("#ifscCode").val() === ""){
						swal({
							  title: 'Warning!',
							  text: 'Please Enter Ifsc Code!!!',
							  type: 'warning',
							  confirmButtonText: 'OK',
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
					}else if($("#branchCode").val() ===""){
						swal({
							  title: 'Warning!',
							  text: 'Please Enter Branch Code!!!',
							  type: 'warning',
							  confirmButtonText: 'OK',
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
					}else if($("#branchName").val() === ""){
						swal({
							  title: 'Warning!',
							  text: 'Please Enter Branch Name!!!',
							  type: 'warning',
							  confirmButtonText: 'OK',
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
					}else{
						job["hasValue"] = hasValue;
						job["accountHolderName"] =$("#accountHolderName").val();
						job["accountNumber"] =$("#accountNumber").val();
						job["ifscCode"] = $("#ifscCode").val();
						job["branchCode"] =$("#branchCode").val();
						job["branchName"] =$("#branchName").val();
						
						 $("#submit").prop("disabled", true);
						 alert(JSON.stringify(job));
						$.ajax({
						type : "POST",
						url : "admin-addEditSellerDetails",
						data : JSON.stringify(job),
						processData : false,
						contentType :"application/json",
						success : function(data) {
							if(data){
								swal({
									  title: 'Success!',
									  text: 'Seller Details Successfully Inserted!!!',
									  type: 'success',
									  showConfirmButton :false,
									  allowEscapeKey:true,
									  timer:3000,
									  animation:true
									});
							}else{
								doNotRemoveFields = 1;
								swal({
									  title: 'Error!',
									  text: 'Seller Contact Number Or Email Id Already Registered. Please Register With Different Contact Number Or Email Id!!!',
									  type: 'error',
									  confirmButtonText :"OK",
									  allowEscapeKey:true,
									  confirmButtonClass:"btn btn-raised gradient-right",
									  animation:true
									});
							}
							$("#submit").prop("disabled", false);

						},
						error : function(e) {
							alert("Error");
							swal({
								  title: 'Error!',
								  text: 'Seller Details Not Inserted Successfully!!!',
								  type: 'error',
								  confirmButtonText :"OK",
								  allowEscapeKey:true,
								  confirmButtonClass:"btn btn-raised gradient-right",
								  animation:true
								});
							$("#submit").prop("disabled", false);

						},complete : function (){
							 if($("#editSellerId").val() !=""){
									window.location = "admin-viewSeller";
								}else{
									if(doNotRemoveFields === 0){
										removeFieldValues();
									}else{
										doNotRemoveFields = 0;
									}
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
						url : "admin-addEditSellerDetails",
						data : JSON.stringify(job),
						processData : false,
						contentType :"application/json",
						success : function(data) {
							if(data){
								
								swal({
									  title: 'Success!',
									  text: 'Seller Details Successfully Inserted!!!',
									  type: 'success',
									  showConfirmButton :false,
									  allowEscapeKey:true,
									  timer:3000,
									  animation:true
									});
							}else{
								doNotRemoveFields = 1;
								swal({
									  title: 'Error!',
									  text: 'Seller Contact Number Or Email Id Already Registered. Please Register With Different Contact Number And Email Id!!!',
									  type: 'error',
									  confirmButtonText :"OK",
									  allowEscapeKey:true,
									  confirmButtonClass:"btn btn-raised gradient-right",
									  animation:true
									});
							}
							$("#submit").prop("disabled", false);

						},
						error : function(e) {
							alert("Error");
							swal({
								  title: 'Error!',
								  text: 'Seller Details Not Inserted Successfully!!!',
								  type: 'error',
								  confirmButtonText :"OK",
								  allowEscapeKey:true,
								  confirmButtonClass:"btn btn-raised gradient-right",
								  animation:true
								});
							$("#submit").prop("disabled", false);

						},complete : function (){
							 if($("#editSellerId").val() !==""){
								 alert("In if");
								window.location = "admin-viewSeller";
							}else{
								if(doNotRemoveFields === 0){
									removeFieldValues();
								}else{
									doNotRemoveFields = 0;
								}
							} 
							
							
						}
						}); 
					}
				}
				
			}
		else{
				if(addressProof === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Upload Address Proof Image!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if(idProof === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Upload Id Proof Image!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if(sellerImage === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Upload Seller Image!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else{
				}
			}
		});
	   
		//Converting month name to month number
		function getMonth(monthStr){
		    return new Date(monthStr+'-1-01').getMonth()+1
		}
		
		function removeFieldValues(){
			//Removing all fields after completing submit
			$("#sellerFirstName").val("");
			$("#sellerLastName").val("");
			$("#sellerContactNumber").val("");
			$("#sellerAlternateNumber").val("");
			$("#sellerEmailId").val("");
			$("#sellerPassword").val("");
			$("#sellerPresentAddress").val("");
			$("#sellerPermanentAddress").val("");
			$("#sellerDateOfBirth").val("");
			$("#sellerCompanyName").val("");
			addressProof = "";
			idProof = "";
			sellerImage = "";
			classPath = "";
			zipCodeValue = "";
			previousLi = "";
			while(checkFile.length > 0){
				checkFile.pop();
			}
			while(cityAry.length > 0){
				cityAry.pop();
			}
			while(localityAry.length > 0){
				localityAry.pop();
			}
			while(storePresentAddress > 0){
				storePresentAddress.pop();
			}
			$("#stateName").val("");
			$("#cityName").val("");
			$("#localityName").val("");
			$("#zipCode").val("");
			if($("#checkBoxId").is(':checked')) {
			       $("#checkBoxId").prop("checked",false);
			    }
			if(hasValue !==0){
				$("#accountHolderName").val("");
				$("#accountNumber").val("");
				$("#ifscCode").val("");
				$("#branchCode").val("");
				$("#branchName").val("");
			}
			hasValue = 0;
			fetchAllState();
			//Removing values from city list
			var efg = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--City Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--City Name--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
				+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
				+"<li data-original-index=\"0\" class=\"selected\" id=\"cityLi0\" onclick=\"clickCityLi('"+0+"','City Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- City Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>";
			
			$("#cityDiv").html(efg);
			
			//Removing values from ZipCode List
			var ghi ="<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Locality Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Locality Name--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
			+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
			+"<li data-original-index=\"0\" class=\"selected\" id=\"localityLi0\" onclick=\"clickLocalityLi('"+0+"','Locality Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Locality Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>";
		
			$("#localityDiv").html(ghi);
			
			//Remove the thumbnails after each insertion being completed from dropzone.js
			$('.dropzone')[0].dropzone.files.forEach(function(file) { 
				  file.previewElement.remove(); 
				});

			  $('.dropzone')[1].dropzone.files.forEach(function(file) { 
				  file.previewElement.remove(); 
				 
				});

			 $('.dropzone')[2].dropzone.files.forEach(function(file) { 
				  file.previewElement.remove(); 
				 
				});

			 $('.dropzone').removeClass(' dz-started ');
			
			 if(checkServiceTaken.indexOf(",")>=0){
				 checkServiceTaken = checkServiceTaken.split(","); 
				 for(var i =0; i< checkServiceTaken.length; i++){
					 alert("CheckServiceTaken"+checkServiceTaken[i]);
					 $("#servicePriceDetails"+checkServiceTaken[i]).removeClass('mask1');
					 $("#servicePriceDetails"+checkServiceTaken[i]).removeClass("clicked");
					 $("#servicePriceDetails"+checkServiceTaken[i]).addClass("mask");
					 $("#serviceCheckedId"+checkServiceTaken[i]).addClass("hideDiv");
				 }
			 }else{
				 $("#servicePriceDetails"+checkServiceTaken).removeClass('mask1');
				 $("#servicePriceDetails"+checkServiceTaken).removeClass("clicked");
				 $("#servicePriceDetails"+checkServiceTaken).addClass("mask");
				 $("#serviceCheckedId"+checkServiceTaken).addClass("hideDiv");
			 }
			 /* checkServiceTaken = "";
			 serviceTakenId = ""; */
			 $("#sellerGenderDiv").html("");
			 var mno ="<div class=\"form-group drop-custum\">"
				+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\"-- Gender --\"><span class=\"filter-option pull-left\">-- Gender --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
				+"<ul class=\"dropdown-menu inner\" role=\"menu\">"
				+"<li data-original-index=\"0\" class=\"selected\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Gender --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"1\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"sellerGenderClick('Male')\"><span class=\"text\">Male</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"2\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"sellerGenderClick('Female')\"><span class=\"text\">Female</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"3\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"sellerGenderClick('TransGender')\"><span class=\"text\">TransGender</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
				+"</div>"
			$("#sellerGenderDiv").html(mno);
			$("#sellerGenderClick").val("");
			checkSubmit = 1;  //Making the checker to 1 meaning the page is submitted not refreshed
			
			$("#editSellerId").val("");
			$("#editSellerBankDetailsId").val("");
			$("#defaultSellerAddressProofImg").val("");
			$("#defaultSellerIdProofImg").val("");
			$("#defaultSellerImg").val("");
			$("#sellerAccount").val("");
			$("#sellerInactive").val("");
			$("#addAccountCheck").prop("checked",false);
			$("#open-bank-account").attr("style","display:none");
			$("#sellerAdressProofDiv").html("")
			var uvw ="<div class=\"form-group drop-custum\">"
				+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\"-- Address Proof --\"><span class=\"filter-option pull-left\">-- Address Proof --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
				+"<ul class=\"dropdown-menu inner\" role=\"menu\">"
				+"<li data-original-index=\"0\" class=\"selected\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Address Proof --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"1\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"sellerAddressProofClick('X')\"><span class=\"text\">X</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"2\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"sellerAddressProofClick('XXXX')\"><span class=\"text\">XXXX</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"3\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"sellerAddressProofClick('XXX')\"><span class=\"text\">XXX</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
				+"</div>"
			$("#sellerAddressProofDiv").html(uvw);	
			$("#sellerAddressProofClick").val("");
			
			$("#sellerIdProofDiv").html("")
			var qrs ="<div class=\"form-group drop-custum\">"
				+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\"-- Id Proof --\"><span class=\"filter-option pull-left\">-- Id Proof --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
				+"<ul class=\"dropdown-menu inner\" role=\"menu\">"
				+"<li data-original-index=\"0\" class=\"selected\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Id Proof --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"1\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"sellerIdProofClick('X')\"><span class=\"text\">X</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"2\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"sellerIdProofClick('XXXX')\"><span class=\"text\">XXXX</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"3\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"sellerIdProofClick('XXX')\"><span class=\"text\">XXX</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
				+"</div>"
			$("#sellerIdProofDiv").html(qrs);
			$("#sellerIdProofClick").val("");	
		}
		
		
		function sellerGenderClick(str){
				$("#sellerGenderClick").val(str);
				var clicked;
				$("#sellerGenderDiv").html("");
				if(str === "Male"){
					clicked ="<li data-original-index=\"1\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerGenderClick('Male')\"><span class=\"text\">Male</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						+"<li data-original-index=\"2\" ><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerGenderClick('Female')\"><span class=\"text\">Female</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						+"<li data-original-index=\"3\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerGenderClick('TransGender')\"><span class=\"text\">TransGender</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
					
				}else if(str === "Female"){
					clicked = "<li data-original-index=\"1\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerGenderClick('Male')\"><span class=\"text\">Male</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"<li data-original-index=\"2\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerGenderClick('Female')\"><span class=\"text\">Female</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"<li data-original-index=\"3\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"sellerGenderClick('TransGender')\"><span class=\"text\">TransGender</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
				}else{
					clicked ="<li data-original-index=\"1\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"sellerGenderClick('Male')\"><span class=\"text\">Male</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"<li data-original-index=\"2\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"sellerGenderClick('Female')\"><span class=\"text\">Female</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"<li data-original-index=\"3\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerGenderClick('TransGender')\"><span class=\"text\">TransGender</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
				}
				var mno ="<div class=\"form-group drop-custum\">"
					+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+str+"  --\"><span class=\"filter-option pull-left\">--"+str+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
					+"<ul class=\"dropdown-menu inner\" role=\"menu\">"
					+"<li data-original-index=\"0\" class=\"\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Gender --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+clicked
					+"</div>"
				$("#sellerGenderDiv").html(mno);	
		}
		
		
		function sellerAddressProofClick(str,str3){
				$("#sellerAddressProofClick").val(str);
				var clicked;
				$("#sellerAddressProofDiv").html("");
					var uvw ="<div class=\"form-group drop-custum\">"
						+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+str+"  --\"><span class=\"filter-option pull-left\">--"+str+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
						+"<ul class=\"dropdown-menu inner\" role=\"menu\" id=\"addressProofUl\">"
						+"<li data-original-index=\"0\" class=\"selected\" id=\"addressProofLi0\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"sellerAddressProofClick('Address Proof','"+0+"')\"><span class=\"text\">-- Address Proof --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						+"<li data-original-index=\"1\" id=\"addressProofLi1\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"sellerAddressProofClick('X','"+1+"')\"><span class=\"text\">X</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						+"<li data-original-index=\"2\" id=\"addressProofLi2\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerAddressProofClick('XXXX','"+2+"')\"><span class=\"text\">XXXX</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						+"<li data-original-index=\"3\" id=\"addressProofLi3\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"sellerAddressProofClick('XXX','"+2+"')\"><span class=\"text\">XXX</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
						+"</div>"
				$("#sellerAddressProofDiv").html(uvw);
					var lengthOfUl = $("#addressProofUl li").size();
					for(var i = 0;i<lengthOfUl; i++){
						if(str3 === undefined){
							var data = $("ul#addressProofUl li#addressProofLi"+Number(i)).find('span:first').text();
							if(data === str){
								$("#addressProofLi0").removeClass("selected");
								$("#addressProofLi"+Number(i)).addClass("selected");
							}
						}else{
							if(Number(i) === Number(str3)){
								$("#addressProofLi"+Number(i)).addClass("selected");
							}else{
								$("#addressProofLi"+Number(i)).removeClass("selected");
							}
						}
						
					}
			
		}
		
		
		function sellerIdProofClick(str,str3){
				$("#sellerIdProofClick").val(str);
				var clicked;
				$("#sellerIdProofDiv").html("");
					var mno ="<div class=\"form-group drop-custum\">"
						+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+str+"  --\"><span class=\"filter-option pull-left\">--"+str+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
						+"<ul class=\"dropdown-menu inner\" role=\"menu\" id=\"idProofUl\">"
						+"<li data-original-index=\"0\" id=\"idProofLi0\"class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerIdProofClick('Id Proof','"+0+"')\"><span class=\"text\">-- Id Proof --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						+"<li data-original-index=\"1\" id=\"idProofLi1\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerIdProofClick('X','"+1+"')\"><span class=\"text\">X</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						+"<li data-original-index=\"2\" id=\"idProofLi2\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"sellerIdProofClick('XXXX','"+2+"')\"><span class=\"text\">XXXX</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						+"<li data-original-index=\"3\" id=\"idProofLi3\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"sellerIdProofClick('XXX','"+3+"')\"><span class=\"text\">XXX</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
						+"</div>"
				$("#sellerIdProofDiv").html(mno);	
					var lengthOfUl = $("#idProofUl li").size();
					for(var i = 0;i<lengthOfUl; i++){
						
						if(str3 === undefined){
							var getdata = $("ul#idProofUl li#idProofLi"+Number(i)).find('span').text();
							if(getdata === str){
								$("#idProofLi0").removeClass("selected");
								$("#idProofLi"+Number(i)).addClass("selected");
							}
						}else{
							if(Number(i) === Number(str3)){
								$("#idProofLi"+Number(i)).addClass("selected");
							}else{
								$("#idProofLi"+Number(i)).removeClass("selected");
							}
						}
					}
		}
		
		function fetchSellerById(sellerId){
			$.ajax({
				type : "GET",
				url : "admin-fetchAllSellersById?id="+sellerId,
				data : "",
				processData : false,
				contentType : "application/json",
				success : function(data) {
						if(data.status){
							$("#sellerFirstName").val(data.sellerDetail.sellerFirstName);
							$("#sellerLastName").val(data.sellerDetail.sellerLastName);
							$("#sellerContactNumber").val(data.sellerDetail.sellerContactNumber);
							$("#sellerAlternateNumber").val(data.sellerDetail.sellerAlternateNumber);
							$("#sellerPresentAddress").val(data.sellerDetail.sellerPresentAddress);
							$("#sellerPermanentAddress").val(data.sellerDetail.sellerPermanentAddress);
							$("#sellerEmailId").val(data.sellerDetail.sellerEmailId);
							$("#sellerPassword").val(data.sellerDetail.sellerPassword);
							$("#zipCode").val(data.sellerDetail.zipCode.zipCode);
							if($("#sellerPresentAddress").val() === $("#sellerPermanentAddress").val()){
								$("#checkBoxId").prop("checked",true);
								checkBoxClick();
								$("#checkBoxId").addClass("isCheck");
							}
							var days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
							var d = new Date(data.sellerDetail.sellerDateOfBirth);
							var dayName = days[d.getDay()];
							var months = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ];
							var monthName = months[d.getMonth()];
							var date = new Date(data.sellerDetail.sellerDOB);
							date = d.getFullYear()+"-"+ (d.getMonth() + 1 > 9 ? d.getMonth() + 1 : "0"+(d.getMonth()+1)) +"-"+d.getDate();
							date = date.split("-");
							$("#sellerDateOfBirth").val(dayName+" "+date[2]+" "+monthName+" "+date[0]);
							sellerGenderClick(data.sellerDetail.sellerGender);
							 sellerAddressProofClick(data.sellerDetail.sellerAddressProof);
							sellerIdProofClick(data.sellerDetail.sellerIdProof); 
							$("#sellerCompanyName").val(data.sellerDetail.sellerCompanyName);
							defaultStateList(false,Number(data.sellerDetail.state.id),data.sellerDetail.state.stateName, Number(data.sellerDetail.city.id), data.sellerDetail.city.cityName, Number(data.sellerDetail.zipCode.id), data.sellerDetail.zipCode.localityName);
							isEdit = 1;
							var editAddressProofImage = data.sellerDetail.sellerAddressProofImg;
							editAddressProofImage = editAddressProofImage.split("/");
							var editIdProofImg = data.sellerDetail.sellerIdProofImg;
							editIdProofImg = editIdProofImg.split("/");
							var editSellerImage = data.sellerDetail.sellerImg;
							editSellerImage = editSellerImage.split("/")
							$("#defaultSellerAddressProofImg").val(editAddressProofImage[2]);
							$("#defaultSellerIdProofImg").val(editIdProofImg[2]);
							$("#defaultSellerImg").val(editSellerImage[2]);
							Dropzone.forElement("._addressProof #singleUpload").destroy();
							var file = {
								    name: editAddressProofImage[2],
								    size: 4096,
								    status: Dropzone.ADDED,
								    accepted: true
								};
								var myDropzone = new Dropzone("._addressProof #singleUpload",{clickable:false})
								myDropzone.emit("addedfile", file);  
								myDropzone.emit("thumbnail", file, "getImage?id="+data.sellerDetail.sellerAddressProofImg);
								myDropzone.emit("processing",file);
								myDropzone.emit("success",file);
								myDropzone.emit("complete", file);
								myDropzone.files.push(file);
								
								Dropzone.forElement("._idProof #singleUpload").destroy();
								var file3 = {
									    name: editIdProofImg[2],
									    size: 4096,
									    status: Dropzone.ADDED,
									    accepted: true
									};
									var myDropzone = new Dropzone("._idProof #singleUpload",{clickable:false})
									myDropzone.emit("addedfile", file3);  
									myDropzone.emit("thumbnail", file3, "getImage?id="+data.sellerDetail.sellerIdProofImg);
									myDropzone.emit("processing",file3);
									myDropzone.emit("success",file3);
									myDropzone.emit("complete", file3);
									myDropzone.files.push(file3); 
									
								Dropzone.forElement("._sellerImage #singleUpload").destroy();
								var file9 = {
										    name: editSellerImage[2],
										    size: 4096,
										    status: Dropzone.ADDED,
										    accepted: true
										};
										var myDropzone = new Dropzone("._sellerImage #singleUpload",{clickable:false})
										myDropzone.emit("addedfile", file9);  
										myDropzone.emit("thumbnail", file9, "getImage?id="+data.sellerDetail.sellerImg);
										myDropzone.emit("processing",file9);
										myDropzone.emit("success",file9);
										myDropzone.emit("complete", file9);
										myDropzone.files.push(file9);
										
								if(data.sellerBankDetail != null){
									$("#addAccountCheck").prop("checked",true);
									$("#open-bank-account").attr("style","display:block");
									$("#accountHolderName").val(data.sellerBankDetail.accountHolderName);
									$("#accountNumber").val(data.sellerBankDetail.accountNumber);
									$("#ifscCode").val(data.sellerBankDetail.ifscCode);
									$("#branchName").val(data.sellerBankDetail.branchName);
									$("#branchCode").val(data.sellerBankDetail.branchCode);
									$("#editSellerBankDetailsId").val(data.sellerBankDetail.id);
								}
								$("#sellerAccountFull").attr("style","display:block");
								if(data.sellerDetail.active){
									sellerAccount("Active");
								}else{
									sellerAccount("Inactive",data.sellerDetail.sellerInactiveDetails[0].inactiveReason);
									$("#sellerInactiveDiv").attr("style","display:block");
								}
								
								$("#serviceTakenDiv").html("");
								for(var i=0; i< data.sellerDetail.serviceTaken.length; i++){
									var todayDate = moment().format("YYYY-MM-DD");
									var sellerRegistrationEnd = moment(data.sellerDetail.sellerRegistrationEnd,"dddd DD MMMM YYYY");
									var service = "";
									sellerRegistrationEnd = moment(sellerRegistrationEnd).format("YYYY-MM-DD");
									var endDate = moment(data.sellerDetail.serviceTaken[i].endDate).format("YYYY-MM-DD");
									var planTaken;
									 if(data.sellerDetail.serviceTaken[i].annually){
										 planTaken = "Annual";
									 }else{
										 planTaken = "HalfYearly";
									 }
									if(moment(todayDate).isBefore(sellerRegistrationEnd) || moment(todayDate).isBefore(endDate)){
										alert("in if oi");
										service = service + "<div class=\"view view-eighth\" id='serviceTaken"+Number(Number(i) + Number(1))+"' >"
										+"<div class=\"service-modal-image\">"
					                      +"<img src=\"resources/images/16.jpg\" class=\"img-responsive\" alt=\"\">"
					                      +"<div class=\"flower-position\">"
					                      +"<span><img src=\"images/flower-ico.png\" alt=\"\"></span>"
					                      +"<label>"+data.sellerDetail.serviceTaken[i].categoryAvailable.categoryName+"</label>"
					                      +"</div>"                                                              
					                      +"</div>"
					                      +"<div id='serviceTakenPriceDetails"+Number(Number(i) + Number(1))+"' class=\"servicePriceDetails mask\">"
					                      +"<div class=\"pricemodal-details\">"
					                      +"<div class=\"serviceHalfYearly\">"
					                      +"<span>Half-yearly</span>"
					                      +"<p><i class=\"fa fa-inr\"></i>"+data.sellerDetail.serviceTaken[i].categoryAvailable.halfYearlyCharge+"</p>"
					                      +"</div>"
					                      +"<div class=\"serviceAnually\">"
					                      +"<span>Annually</span>"
					                      +"<p><i class=\"fa fa-inr\"></i>"+data.sellerDetail.serviceTaken[i].categoryAvailable.annualCharge+"</p>"
					                      +"</div>"
					                      +"</div>"
					                      +"<div class=\"serviceTakenChecked hideDiv\" id='serviceTakenCheckedId"+Number(Number(i) + Number(1))+"'>"
					                      +"<p>Package Taken : "+planTaken+" <a href=\"#\" title=\"View Package Details\" data-toggle=\"modal\" data-target=\"#smallModal\" onclick=\"packageDetailsModal('"+data.sellerDetail.serviceTaken[i].categoryAvailable.id+"','"+data.sellerDetail.serviceTaken[i].categoryAvailable.categoryName+"','"+data.sellerDetail.serviceTaken[i].startDate+"','"+data.sellerDetail.serviceTaken[i].endDate+"','"+data.sellerDetail.serviceTaken[i].annually+"','"+data.sellerDetail.serviceTaken[i].id+"','"+data.sellerDetail.serviceTaken[i].categoryAvailable.paidServiceTaken+"','"+Number(Number(i) + Number(1))+"')\"><i class=\"material-icons\">view_list</i> <span class=\"icon-name\"></span></a></p>"
					                      +""
					                      +"</div>"
					                      +"</div>"
					                      +"</div>";
					                      $("#serviceTakenDiv").append(service);
					                      if(data.sellerDetail.serviceTaken[i].paid){
					                    	  serviceTakenClicked(Number(Number(i)+ Number(1)),data.sellerDetail.serviceTaken[i].categoryAvailable.id);  
					                      }
					                       
									}
								}
								$("#editSellerId").val(data.sellerDetail.id);
								
						} 
					},
				error : function(e) {
					alert("Error");
					swal({
						  title: 'Error!',
						  text: 'Seller By Id Not Fetched Successfully!!!',
						  type: 'error',
						  confirmButtonText :"OK",
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
					
				}, complete : function(){
					isEdit = 0;
				}
			}); 
		}
		function sellerAccount(isActive,inactiveReason){
			$("#sellerAccount").val(isActive);
			var clicked;
			$("#sellerAccountDiv").html("");
			$("#sellerInactiveDiv").html("");
			if(isActive === "Active"){
				clicked ="<li data-original-index=\"1\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerAccount('Active')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"<li data-original-index=\"2\" ><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerAccount('Inactive')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"</ul></div>"
					$("#sellerInactive").val("");
			}else{
				clicked ="<li data-original-index=\"1\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerAccount('Active')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"<li data-original-index=\"2\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"sellerAccount('Inactive')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"</ul></div>"
					sellerInactive(inactiveReason);
			}
			var mno ="<div class=\"form-group drop-custum\">"
				+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+isActive+"  --\"><span class=\"filter-option pull-left\">--"+isActive+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
				+"<ul class=\"dropdown-menu inner\" role=\"menu\">"
				+"<li data-original-index=\"0\" class=\"\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Seller Account --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+clicked
				+"</div>"
			$("#sellerAccountDiv").html(mno);	
		}
		function sellerInactive(str,str3){
			$("#sellerInactive").val(str);
			if(str === "0" || str === undefined){
				str = "Reasons";
			}
			var mno ="<div class=\"form-group drop-custum\">"
				+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+str+"  --\"><span class=\"filter-option pull-left\">--"+str+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
				+"<ul class=\"dropdown-menu inner\" role=\"menu\" id=\"sellerInactiveReasonsUl\">"
				+"<li data-original-index=\"0\" id=\"liSellerInactive0\"class=\"selected\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"sellerInactive('Reasons','"+0+"')\"><span class=\"text\">Reasons</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"1\" id=\"liSellerInactive1\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"sellerInactive('Misconduct','"+1+"')\"><span class=\"text\">Misconduct</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"2\" id=\"liSellerInactive2\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"sellerInactive('Improper use of website','"+2+"')\"><span class=\"text\">Improper use of website</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
				+"</div>"
				
			$("#sellerInactiveDiv").html(mno);	
			var lengthOfUl = $("#sellerInactiveReasonsUl li").size();
			for(var i = 0;i<lengthOfUl; i++){
				var getdata = $("ul#sellerInactiveReasonsUl li#liSellerInactive"+Number(i)).find('span').text();
					if(str === getdata){
						$("#liSellerInactive"+Number(i)).addClass("selected");
					}else{
						$("#liSellerInactive"+Number(i)).removeClass("selected");
					}
			}
			
		}
		
		function defaultStateList(isInComplete,stateId,stateName,cityId,cityName,zipCodeId,localityName){
			// Removing the values from the state list
			var abc ="";
			if(isInComplete){
				 abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--State Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--State Name"
					+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
					 abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"
						+ 0
						+ "','State Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- State Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			}else{
				abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=--"+stateName+"-- aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"+stateName
				+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
				+ "<li data-original-index=\"0\" id=\"li0\" onclick=\"clickCityLi('"+ 0+ "','State Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- State Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			}
			var cde = "";
			for (var i = 0; i < ary.length; i++) {
				var splittedArray = ary[i].split("_");
				var classSelected = ""
				if(!isInComplete){
					if(Number(splittedArray[0]) === Number(stateId)){
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
					+ "')\"><span class=\"text\">"
					+ splittedArray[1]
					+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					
					
			}
			cde = cde + "</ul></div>"
			$("#stateName").val(stateId);
			$("#stateDiv").html(abc + cde);
			fetchAllCitiesById(true,stateId,cityId,cityName);
			fetchAllLocalitiesByCityId(true,cityId,zipCodeId,localityName);
			
		}
		
		$("#addAccountCheck").click(function(){
			if($(this).is(':checked')) {
		       $("#open-bank-account").attr("style","display:block");
		    }else{
		    	$("#open-bank-account").attr("style","display:none");
		    }
		});
		/* if(!$("#servicePriceDetails").hasClass("clicked")){
		$(".view-eighth").mouseover(function(){
			$("#servicePriceDetails").removeClass("mask");
			$("#servicePriceDetails").addClass('mask1');
		});
		}
		
			$(".view-eighth").mouseleave(function(){
				if($("#servicePriceDetails").hasClass("mask1")){
					if(!$("#servicePriceDetails").hasClass("clicked")){
						$("#servicePriceDetails").removeClass("mask1");
						$("#serviceChecked").addClass("hideDiv");
						$(".servicePriceDetails").addClass('mask');
					}else{
						$(".servicePriceDetails").addClass('mask');
					}
				}
			});		
		
		
		$(".view-eighth").click(function(){
			if($("#servicePriceDetails").hasClass("clicked")){
				$("#servicePriceDetails").removeClass('mask1');
				$("#servicePriceDetails").removeClass("clicked");
				$("#servicePriceDetails").addClass("mask");
				$(".serviceChecked").addClass("hideDiv");
			}else{
				if($("#servicePriceDetails").hasClass("mask")){
					$("#servicePriceDetails").removeClass("mask");
				}
				$("#servicePriceDetails").addClass('mask1');
				$("#servicePriceDetails").addClass("clicked");
				$(".serviceChecked").removeClass("hideDiv");
			}
		}) */
	
		   function fetchAllCategories(){
			$.ajax({
				type : "GET",
				url : "admin-fetchAllCategoryAvailbleForDatatable",
				data : "",
				processData : false,
				contentType :"application/json",
				success : function(data) {
					if(data.status){
						$("#serviceTakenDiv").html("");
						var abc = "";
						for(var i = 0; i< data.categoryAvailables.length; i++){
							abc = abc +"<div class=\"view view-eighth\" id='service"+Number(Number(i) + Number(1))+"' onclick=\"serviceTakenClick('"+Number(Number(i) + Number(1))+"','"+data.categoryAvailables[i].id+"')\" \" onmouseover=\"serviceTakenMouseOver('"+Number(Number(i) + Number(1))+"')\" onmouseleave=\"serviceTakenMouseLeave('"+Number(Number(i) + Number(1))+"')\">"
                             +"<div class=\"service-modal-image\">"
                             +"<img src=\"resources/images/16.jpg\" class=\"img-responsive\" alt=\"\">"
                             +"<div class=\"flower-position\">"
                             +"<span><img src=\"images/flower-ico.png\" alt=\"\"></span>"
                             +"<label>"+data.categoryAvailables[i].categoryName+"</label>"
                             +"</div>"                                                              
                             +"</div>"
                             +"<div id='servicePriceDetails"+Number(Number(i) + Number(1))+"' class=\"servicePriceDetails mask\">"
                             +"<div class=\"pricemodal-details\">"
                             +"<div class=\"serviceHalfYearly\">"
                             +"<span>Half-yearly</span>"
                             +"<p><i class=\"fa fa-inr\"></i>"+data.categoryAvailables[i].halfYearlyCharge+"</p>"
                             +"</div>"
                             +"<div class=\"serviceAnually\">"
                             +"<span>Annually</span>"
                             +"<p><i class=\"fa fa-inr\"></i>"+data.categoryAvailables[i].annualCharge+"</p>"
                             +"</div>"
                             +"</div>"
                             +"<div class=\"serviceChecked hideDiv\" id='serviceCheckedId"+Number(Number(i) + Number(1))+"'>"
                             +"<img src=\"resources/images/smileyService.png\" alt=\"Service Added To Cart\" class=\"img-responsive\">"
                             +"</div>"
                             +"</div>"
                             +"</div>"
						}
						$("#serviceTakenDiv").html(abc);
					}
				},
				error : function(e) {
					alert("Error");
					swal({
						  title: 'Error!',
						  text: 'Category Not Fetched Successfully!!!',
						  type: 'error',
						  confirmButtonText :"OK",
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});

				}
		});
		}  
		var checkServiceTaken = "";
		var serviceTakenId = "";
		function serviceTakenClick(id,categoryId){
			if($("#servicePriceDetails"+id).hasClass("clicked")){
				if(serviceTakenId.indexOf(",")< 0){
					serviceTakenId = "";
					checkServiceTaken = "";
				}else{
					var abc = serviceTakenId.split(",");
					var cde = checkServiceTaken.split(",");
					serviceTakenId = "";
					checkServiceTaken = "";
					for(var i =0;i<abc.length;i++){
						if(abc[i] === categoryId){
							abc[i] = "";
							cde[i] = "";
						}else{
							if(serviceTakenId === ""){
								serviceTakenId = abc[i];
								checkServiceTaken = cde[i];
							}else{
								serviceTakenId = serviceTakenId + "," + abc[i];
								checkServiceTaken = checkServiceTaken + "," + cde[i];
							}
						}
					}
				}
				$("#servicePriceDetails"+id).removeClass('mask1');
				$("#servicePriceDetails"+id).removeClass("clicked");
				$("#servicePriceDetails"+id).addClass("mask");
				$("#serviceCheckedId"+id).addClass("hideDiv");
			}else{
				if(serviceTakenId === ""){
					serviceTakenId = categoryId;
					checkServiceTaken = id;
				}else{
					serviceTakenId = serviceTakenId + "," + categoryId;
					checkServiceTaken = checkServiceTaken +","+id;
				}
				if($("#servicePriceDetails"+id).hasClass("mask")){
					$("#servicePriceDetails"+id).removeClass("mask");
				}
				$("#servicePriceDetails"+id).addClass('mask1');
				$("#servicePriceDetails"+id).addClass("clicked");
				$("#serviceCheckedId"+id).removeClass("hideDiv");
			}
			alert(serviceTakenId);
		}
		
		function serviceTakenMouseOver(id){
			if(!$("#servicePriceDetails"+id).hasClass("clicked")){
				$("#servicePriceDetails"+id).removeClass("mask");
				$("#servicePriceDetails"+id).addClass('mask1');
			}
		}
		
		function serviceTakenMouseLeave(id){
			if($("#servicePriceDetails"+id).hasClass("mask1")){
				if(!$("#servicePriceDetails"+id).hasClass("clicked")){
					$("#servicePriceDetails"+id).removeClass("mask1");
					$("#serviceCheckedId"+id).addClass("hideDiv");
					$("#servicePriceDetails"+id).addClass('mask');
				}else{
					$("#servicePriceDetails"+id).addClass('mask');
				}
			}
		}
		function serviceTakenClicked(id,categoryId){
  			if($("#serviceTakenPriceDetails"+id).hasClass("mask")){
  				$("#serviceTakenPriceDetails"+id).removeClass("mask");
  			}
  			$("#serviceTakenPriceDetails"+id).addClass('mask1');
  			$("#serviceTakenPriceDetails"+id).addClass("clicked");
  			$("#serviceTakenCheckedId"+id).removeClass("hideDiv");
  		}
		function packageDetailsModal(categoryId,serviceName,startDate,endDate,isAnnual,serviceId,paidService,id){
			alert(categoryId);
			alert(serviceName);
			alert(startDate);
			alert(endDate);
			clickedCategoryId = categoryId;
			serviceTakenId = serviceId;
			modalServiceId = id;
			paid = paidService;
			$("#serviceName").val(serviceName);
			var startDates = new Date(startDate);
			alert("Start Date is"+startDates);
			startDates = moment(startDates).format("YYYY-MM-DD");
			$("#startDate").val(startDates);
			//$("#endDate").val(endDates);
			if(isAnnual === "true"){
				$("#annual").prop("checked",true);
			}else{
				$("#halfYearly").prop("checked",true);
			}
		}
	</script>
	<%@ include file="admin-includeFooter.jsp"%>
	
</body>
</html>