<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | ZipCode</title>

<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css">
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
				<h2>Add ZipCode</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>ZipCode Details</h2>
						</div>
						<div class="body">
							<div class="row clearfix">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group drop-custum" id="stateDiv"></div>
								</div>
								<div class="col-sm-6 col-xs-12">
									<div class="form-group drop-custum" id="cityDiv">
										<select class="form-control show-tick" >
											<option value="">--City Name--</option>
											
										</select>
									</div>
								</div>
							</div>
							<div class="zipCodeDiv">
								<div class="row clearfix">
									<div class="col-sm-5 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="zipCode"
													id="zipCode" placeholder="Zip Code">
											</div>
										</div>
									</div>
									<div class="col-sm-5 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="localityName"
													id="localityName" placeholder="Locality Name">
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12">
										<div class="form-group">
											<button type="button" class="btn btn-raised gradient-right"
												id="plusbtn">Add</button>
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-xs-12">
								<input type ="hidden" name ="cityName" id="cityName" value="">
								<input type ="hidden" name ="editZipCodeId" id="editZipCodeId" value="0">
								<input type ="hidden" name = "stateName" id="stateName" value="">
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
							<h2>All Listed ZipCodes</h2>
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
								class="table table-bordered table-striped table-hover js-basic-example dataTable" id="zipCodeTable">
								<thead>
									<tr>
										<th class="text-center">Sl.No</th>
										<th class="text-center">Zip Code Id</th>
										<th class="text-center">Zip Code</th>
										<th class="text-center">Locality Name</th>
										<th class="text-center">City Name</th>
										<th class="text-center">Action</th>
										
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

	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script src="resources/js/sweetalert.min.js"></script>
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
	
	<script type="text/javascript">
	$(document).ready(function(){
		fetchAllState();     //Fetching all the states
		fetchAllZipCodes();
	});
	
	var ary = new Array ();   // Array for storing the state names and Id.
	var cityAry = new Array ();
	
	//Function to fetch all the states on page load
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
							text : 'Sub Category Not Inserted Successfully!!!',
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
	
	//On click of each li in Category list 
	function clickLi(liId,title1,stateId){
		$("#stateName").val(stateId);        //Hidden field to store state Id
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
		if(stateId !== undefined){
			fetchAllCitiesById(false,stateId,"CityName","cityId");    //Fetching all cities by state Id
		}
		
	}

	var i = Number(0); 			//Variable to  know number of times the new div has been added
	
	//On click of Add button
	$("#plusbtn").click(function() {
		addDiv();

	});
	
	//For Adding new div
	function addDiv() {
		if ($("#zipCode" + i).val() === ""
				|| $("#zipCode").val() === "") {
			swal({
				title : 'Warning!',
				text : 'Please Enter Zip Code!!!',
				type : 'warning',
				confirmButtonText : 'OK',
				allowEscapeKey : true,
				confirmButtonClass : "btn btn-raised gradient-right",
				animation : true
			});
		
		}else if($("#localityName" + i).val() === ""
			|| $("#localityName").val() === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Locality Name!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		} else {
			if(Number(i) < Number(9)){
				i = Number(Number(i) + Number(1));
				$(".zipCodeDiv")
						.append(
								"<div class=\"row clearfix addDivs\" id='zipCodeDiv"+i+"'>"
										+ "<div class=\"col-sm-5 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<div class=\"form-line\">"
										+ "<input type=\"text\" class=\"form-control\"name=\"zipCode\" id='zipCode"+i+"' placeholder=\"Zip Code\">"
										+ "</div>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-5 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<div class=\"form-line\">"
										+ "<input type=\"text\" class=\"form-control\"name=\"localityName\" id='localityName"+i+"' placeholder=\"Locality Name\">"
										+ "</div>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-2 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<button type=\"button\" class=\"btn btn-raised gradient-left\" id=\"plusbtn\" onclick=\"addDiv()\">Add</button>"
										+ "<button type=\"button\" class=\"btn btn-raised gradient-left\" id=\"minusbtn\" onclick=\"removeZipCodeDiv('"
										+ i + "')\">Remove</button>" + "</div>"
										+ "</div>" + "</div>")
			}else{
				swal({
					title : 'Warning!',
					text : 'You can only add 10 cities at a time!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}
			
		}
	}

	// For removing present div
	function removeZipCodeDiv(removeId) {
		$("#zipCodeDiv" + removeId).remove();
	}
	
	//On submit of the form
	     $("#submit").click(function (event){
			event.preventDefault();
			if($("#stateName").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter State Name!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#cityName").val() === ""){
				swal({
					title : 'Warning!',
					text : 'Please Enter City Name!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}else if($("#zipCode").val() === ""){
				swal({
					title : 'Warning!',
					text : 'Please Enter Zip Code!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}else if($("#localityName").val() === ""){
				swal({
					title : 'Warning!',
					text : 'Please Enter Locality Name!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}else{
				var job = {};
				var check = Number(0);
				job["editZipCodeId"] = $("#editZipCodeId").val();
				job["cityId"] = $("#cityName").val();
				job["zipCode"] = $("#zipCode").val();
				job["localityName"] = $("#localityName").val();
				for (var k = 1; k <= Number(i); k++) {
					if ((($("#zipCode" + k).val() !== undefined) && ($("#localityName" + k).val() !== undefined)) && (($("#zipCode" + k).val() !== "") && ($("#localityName" + k).val() !== ""))) {
						if (k === Number(1)) {
							job["otherZipCodeDetails"] = $("#zipCode" + k).val()+ ","+ $("#localityName"+ k).val();
						} else {
							if(job["otherZipCodeDetails"] === undefined){
								job["otherZipCodeDetails"] = $("#zipCode" + k).val()+ ","+ $("#localityName"+ k).val();
							}else{
								job["otherZipCodeDetails"] = job["otherZipCodeDetails"]+ "_"+ $("#zipCode" + k).val()+ ","+ $("#localityName"+ k).val();
							}
						}
					}
					
					if($("#zipCode" + k).val() === ""){
						check = Number(1);
						swal({
							title : 'Warning!',
							text : 'Please Enter Zip Code!!!',
							type : 'warning',
							confirmButtonText : 'OK',
							allowEscapeKey : true,
							confirmButtonClass : "btn btn-raised gradient-right",
							animation : true
						});
					}else if($("#localityName" + k).val() === ""){
						check = Number(1);
						swal({
							title : 'Warning!',
							text : 'Please Enter Locality Name!!!',
							type : 'warning',
							confirmButtonText : 'OK',
							allowEscapeKey : true,
							confirmButtonClass : "btn btn-raised gradient-right",
							animation : true
						});
					}

				}
				alert(JSON.stringify(job));
				if(i === Number(0) || check === Number(0)){
					$("#submit").prop("disabled", true);
					$.ajax({
					type : "POST",
					url : "admin-addEditZipCode",
					data : JSON.stringify(job),
					processData : false,
					contentType :"application/json",
					success : function(data) {
							swal({
								  title: 'Success!',
								  text: 'Zip Code Successfully Inserted!!!',
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
							  text: 'Zip Code Not Inserted Successfully!!!',
							  type: 'error',
							  confirmButtonText :"OK",
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
						$("#submit").prop("disabled", false);

					}, complete : function(){
						//Removing all the fields after successful insertion of the data
						$("#cityName").val("");
						$("#zipCode").val("");
						$("#localityName").val("");
						$("#editZipCodeId").val("0");
						$("#stateName").val("");
						for(var k =1; k<= Number(i); k++){
							removeZipCodeDiv(Number(k));
						}
						i = Number(0);
						fetchAllZipCodes();
						//Removing the values from state list
						var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--State Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--State Name"
							+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\">"
							 abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"
								+ 0
								+ "','State Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- State Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						var cde = "";
						for (var i = 0; i < ary.length; i++) {
							var splittedArray = ary[i].split("_");
							alert("SplittedArray[1]"+splittedArray[1]);
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
						
						
					}
			}); 
				}
				
				
			}
		});  
	     
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
							var abc = "";
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
											}else{
												while(cityAry.length > 0){
													cityAry.pop();
												}
												var arValue = data.listAllCities[i].id+"_"+data.listAllCities[i].cityName;
												cityAry.push(arValue);
											}
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
	     
		// On click of Li in city List
	    function clickCityLi(liId,title1,cityId){
			$("#cityName").val(cityId);        //Hidden field to sotre city Id
			alert($("#cityName").val());
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
	    } 
	 
		function fetchAllZipCodes(){
			$.ajax({
				type : "GET",
				url : "admin-fetchAllZipCodes",
				data : "",
				processData : false,
				contentType :"application/json",
				success : function(data) {
					if(data.status){
						$("#zipCodeTable > tbody").html("");
						var abc ="";
						for(var i = 0; i< data.listAllZipCodes.length; i++){
							abc = abc +"<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
							+"<td class=\"text-center\">"+data.listAllZipCodes[i].id+"</td>"
							+"<td class=\"text-center\">"+data.listAllZipCodes[i].zipCode+"</td>"
							+"<td class=\"text-center\">"+data.listAllZipCodes[i].localityName+"</td>"
							+"<td class=\"text-center\">"+data.listAllZipCodes[i].city.cityName+"</td>"
							+"<td class=\"text-center\"><a href=\"#\" onclick=\"editZipCodeById('"+data.listAllZipCodes[i].id+"')\"title=\"Edit\"><i class=\"fa fa-pencil-square-o  editIcon\" aria-hidden=\"true\"></i></a><a href=\"#\" title=\"Delete\"><i class=\"material-icons deleteIcon\" style=\"margin-top:-10%;\">delete_sweep</i> <span class=\"icon-name\"></span></a></td></tr>"
						}
						$("#zipCodeTable > tbody").html(abc);
					}
				},
				error : function(e) {
					alert("Error");
					swal({
						  title: 'Error!',
						  text: 'Zip Code Not Fetched Successfully!!!',
						  type: 'error',
						  confirmButtonText :"OK",
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});

				}
		});
		}
		function editZipCodeById(zipCodeId){
			$.ajax({
				type : "GET",
				url : "admin-fetchZipCodeById?id="+zipCodeId,
				data : "",
				processData : false,
				contentType :"application/json",
				success : function(data) {
					defaultStateList(false,Number(data.zipCode.stateId),data.zipCode.stateName,Number(data.zipCode.cityId),data.zipCode.cityName);
					$("#zipCode").val(data.zipCode.zipCode);
					$("#localityName").val(data.zipCode.localityName);
					$("#plusbtn").attr("disabled", true);
					$("#cityName").val(data.zipCode.cityId);
					$("#editZipCodeId").val(data.zipCode.id); 
				},
				error : function(e) {
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
		
		function defaultStateList(isInComplete,stateId,stateName,cityName,cityId){
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
			}
			var cde = "";
			for (var i = 0; i < ary.length; i++) {
				var splittedArray = ary[i].split("_");
				var classSelected = ""
				if(!isInComplete){
					if(Number(splittedArray[0]) === stateId){
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
					if(classSelected === "class = selected"){
						cde = cde + "<li data-original-index=\"0\" id=\"li0\" onclick=\"clickLi('"+ 0+ "','State Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- State Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>";
					}
			}
			cde = cde + "</ul></div>"
			
			$("#stateDiv").html(abc + cde);
			
			fetchAllCitiesById(true,stateId,cityId,cityName);
			
		}
	</script>
	
	
	<div class="color-bg"></div>
	<%@ include file="admin-includeFooter.jsp"%>