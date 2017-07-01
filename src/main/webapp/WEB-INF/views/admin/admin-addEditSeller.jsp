<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Seller</title>
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
											<label> <input type="checkbox" value="" id="checkBoxId"> <span
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
								<div class="col-sm-4 col-xs-12">
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
								<div class="col-sm-6 col-xs-12">
									<div class="form-group drop-custum">
										<select class="form-control show-tick" name="sellerAddressProof" id="sellerAddressProof">
											<option value="">-- Address Proof --</option>
											<option value="10">XXX</option>
											<option value="20">XXXX</option>
										</select>
									</div>
								</div>
								<div class="col-sm-6 col-xs-12">
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
							<div class="row clearfix">
								<div class="col-xs-12">
								<input type = "hidden" name ="stateName" id ="stateName" value = "">
								<input type = "hidden" name = "cityame" id ="cityName" value = "">
								<input type = "hidden" name = "localityName" id = "localityName" value = "">
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
	<script src="resources/js/sweetalert2.min.js"></script>
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
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
							addressProof = "Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
						}else{
							addressProof = addressProof +","+"Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
						}
					}
					if(classPath[1] === "idProof"){
						if(idProof === ""){
							idProof = "Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
						}else{
							idProof = idProof +","+"Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
						}
					}if(classPath[1] === "sellerImage"){
						if(sellerImage === ""){
							sellerImage = "Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
						}else{
							sellerImage = sellerImage +","+"Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
						}
					}
					
				
					
				});
			},
			renameFilename : function(fileName) {
				var classpath = fileName;
				classpath = classpath.split("_");
				return "Seller" + "_" + dateTime+classpath[0];

			}
		};
		
		
		$(document).ready(function(){
			fetchAllState();
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
								var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--State Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--State Name--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
										+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
										+"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"+0+"','State Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- State Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
								var cde = "";		
										for(var i = 0; i<data.listAllStates.length; i++){	
											cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' id='li"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"+Number(Number(i)+Number(1))+"','"+data.listAllStates[i].stateName+"','"+data.listAllStates[i].id+"')\"><span class=\"text\">"+data.listAllStates[i].stateName+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
											var arValue = data.listAllStates[i].id+"_"+data.listAllStates[i].stateName;
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
				fetchAllCitiesById(stateId);
			}
			
		}
		
		//Fetching City list By State Id 
		function fetchAllCitiesById(stateId){
	    	 $.ajax({
					type : "GET",
					url : "admin-fetchCityByStateId?id="+stateId,
					data : "",
					processData : false,
					contentType :"application/json",
					success : function(data) {
						$("#cityDiv").html("");
						if(data.status){
							while(cityAry.length > 0) {
								cityAry.pop();
							}
								var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--City Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--City Name--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
										+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
										+"<li data-original-index=\"0\" class=\"selected\" id=\"cityLi0\" onclick=\"clickCityLi('"+0+"','City Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- City Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
								var cde = "";		
										for(var i = 0; i<data.listAllCities.length; i++){	
											cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' id='cityLi"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickCityLi('"+Number(Number(i)+Number(1))+"','"+data.listAllCities[i].cityName+"','"+data.listAllCities[i].id+"')\"><span class=\"text\">"+data.listAllCities[i].cityName+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
											var arValue = data.listAllCities[i].id+"_"+data.listAllCities[i].cityName;
											cityAry.push(arValue);
										}
									cde = cde +"</ul></div>"
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
				fetchAllLocalitiesByCityId(cityId);
			}
			
	    } 
	 
		//Fetch Zip Code By City Id
	    function fetchAllLocalitiesByCityId(cityId){
	    	 $.ajax({
					type : "GET",
					url : "admin-fetchZipCodeByCityId?id="+cityId,
					data : "",
					processData : false,
					contentType :"application/json",
					success : function(data) {
						$("#localityDiv").html("");
						if(data.status){
							while(localityAry.length > 0){
								localityAry.pop();
							}
								var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Locality Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Locality Name--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
										+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
										+"<li data-original-index=\"0\" class=\"selected\" id=\"localityLi0\" onclick=\"clickLocalityLi('"+0+"','Locality Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Locality Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
								var cde = "";		
										for(var i = 0; i<data.listAllZipCodes.length; i++){	
											cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' id='localityLi"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLocalityLi('"+Number(Number(i)+Number(1))+"','"+data.listAllZipCodes[i].localityName+"','"+data.listAllZipCodes[i].id+"','"+data.listAllZipCodes[i].zipCode+"')\"><span class=\"text\">"+data.listAllZipCodes[i].localityName+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
											var arValue = data.listAllZipCodes[i].id+"_"+data.listAllZipCodes[i].localityName+"_"+data.listAllZipCodes[i].zipCode;
											localityAry.push(arValue);
										}
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
			if($("#checkBoxId").hasClass("isCheck")){
				$("#checkBoxId").removeClass("isCheck");
				$("#sellerPermanentAddress").val("");
			}else{
				$("#checkBoxId").addClass("isCheck");
				 for(var i = 0; i<storePresentAddress.length; i++){
					   $("#sellerPermanentAddress").val(storePresentAddress[i]);
					  }
			}
			
			
		});
	    
	   //On submit click
		$("#submit").click(function(event){
			event.preventDefault();
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
				job["sellerFirstName"] = $("#sellerFirstName").val();
				job["sellerLastName"] = $("#sellerLastName").val();
				job["sellerContactNumber"] =$("#sellerContactNumber").val();
				job["sellerAlternateNumber"] =$("#sellerAlternateNumber").val();
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
				job["sellerGender"] =$("#sellerGender").val();
				job["sellerCompanyName"] =$("#sellerCompanyName").val();
				job["sellerAddressProof"] =$("#sellerAddressProof").val();
				job["sellerIdProof"] =$("#sellerIdProof").val();
				job["sellerEmailId"] =$("#sellerEmailId").val();
				job["sellerPassword"] =$("#sellerPassword").val();
				job["addressProofFiles"] = addressProof;
				job["idProofFiles"] = idProof;
				job["sellerImageFiles"] = sellerImage;
				
				
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
						alert("///Has Value"+hasValue);
						job["hasValue"] = hasValue;
						job["accountHolderName"] =$("#accountHolderName").val();
						job["accountNumber"] =$("#accountNumber").val();
						job["ifscCode"] = $("#ifscCode").val();
						job["branchCode"] =$("#branchCode").val();
						job["branchName"] =$("#branchName").val();
						
						 $("#submit").prop("disabled", true);
						$.ajax({
						type : "POST",
						url : "admin-addEditSellerDetails",
						data : JSON.stringify(job),
						processData : false,
						contentType :"application/json",
						success : function(data) {
								swal({
									  title: 'Success!',
									  text: 'Seller Details Successfully Inserted!!!',
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
								  text: 'Seller Details Not Inserted Successfully!!!',
								  type: 'error',
								  confirmButtonText :"OK",
								  allowEscapeKey:true,
								  confirmButtonClass:"btn btn-raised gradient-right",
								  animation:true
								});
							$("#submit").prop("disabled", false);

						},complete : function (){
							removeFieldValues();
						}
						}); 
					}
					}else{
						job["hasValue"] = hasValue;
						alert("///Has Value"+hasValue);
						 $("#submit").prop("disabled", true);
						$.ajax({
						type : "POST",
						url : "admin-addEditSellerDetails",
						data : JSON.stringify(job),
						processData : false,
						contentType :"application/json",
						success : function(data) {
								swal({
									  title: 'Success!',
									  text: 'Seller Details Successfully Inserted!!!',
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
								  text: 'Seller Details Not Inserted Successfully!!!',
								  type: 'error',
								  confirmButtonText :"OK",
								  allowEscapeKey:true,
								  confirmButtonClass:"btn btn-raised gradient-right",
								  animation:true
								});
							$("#submit").prop("disabled", false);

						},complete : function (){
							removeFieldValues();
							
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
			if(hasValue !==0){
				$("#accountHolderName").val("");
				$("#accountNumber").val("");
				$("#ifscCode").val("");
				$("#branchCode").val("");
				$("#branchName").val("");
			}
			hasValue = 0;
			
			//Removing values from state list and fetching it from array
			var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--State Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--State Name"
				+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
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
			
				checkSubmit = 1; //Making the checker to 1 meaning the page is submitted not refreshed
			
		}
	</script>
	<%@ include file="admin-includeFooter.jsp"%>

</body>
</html>