<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | City</title>

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
				<h2>Add City</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>City Details</h2>
						</div>
						<div class="body">
							<div class="row clearfix">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group drop-custum" id="stateDiv"></div>
								</div>
							</div>
							<div class="cityDiv">
								<div class="row clearfix">
									<div class="col-sm-5 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="cityName"
													id="cityName" placeholder="City Name">
											</div>
										</div>
									</div>
									<div class="col-sm-5 col-xs-12">
										<div class="form-group">
											<label for="comment">City Description</label>
											<textarea class="form-control textarea-add" rows="3"
												name="cityDescription" id="cityDescription"></textarea>
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
								<input type ="hidden" name ="stateName" id="stateName" value="">
								<input type ="hidden" name="editCityId" id ="editCityId" value="0">
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
							<h2>All Listed Cities</h2>
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
								class="table table-bordered table-striped table-hover js-basic-example dataTable" id="cityTable">
								<thead>
									<tr>
										<th class="text-center">Sl.No</th>
										<th class="text-center">City Id</th>
										<th class="text-center">City Name</th>
										<th class="text-center">City Description</th>
										<th class="text-center">State Name</th>
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
		fetchAllState();          //Fetching all State List
		fetchAllCities();
	});
	
	var ary = new Array ();  		// Array for storing the state names and Id.
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
	
	//On click of each li in Category list 
	function clickLi(liId,title1,stateId){
		alert(stateId);
		$("#stateName").val(stateId);
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
	}

	var i = Number(0); 			//Variable to  know number of times the new div has been added
	
	//On click of Add button
	$("#plusbtn").click(function() {
		addDiv();

	});
	
	//For Adding new div
	function addDiv() {
		if ($("#cityName" + i).val() === ""
				|| $("#cityName").val() === "") {
			swal({
				title : 'Warning!',
				text : 'Please Enter City Name!!!',
				type : 'warning',
				confirmButtonText : 'OK',
				allowEscapeKey : true,
				confirmButtonClass : "btn btn-raised gradient-right",
				animation : true
			});
		
		} else {
			if(Number(i) < Number(9)){
				i = Number(Number(i) + Number(1));
				$(".cityDiv")
						.append(
								"<div class=\"row clearfix addDivs\" id='cityDiv"+i+"'>"
										+ "<div class=\"col-sm-5 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<div class=\"form-line\">"
										+ "<input type=\"text\" class=\"form-control\"name=\"cityName\" id='cityName"+i+"' placeholder=\"City Name\">"
										+ "</div>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-5 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<label for=\"comment\">City Description</label>"
										+ "<textarea class=\"form-control textarea-add\" rows=\"3\" name=\"cityDescription\" id='cityDescription"+i+"'></textarea>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-2 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<button type=\"button\" class=\"btn btn-raised gradient-left\" id=\"plusbtn\" onclick=\"addDiv()\">Add</button>"
										+ "<button type=\"button\" class=\"btn btn-raised gradient-left\" id=\"minusbtn\" onclick=\"removeCityDiv('"
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
	function removeCityDiv(removeId) {
		$("#cityName"+removeId).val("");
		$("#cityDescription"+removeId).val("");
		$("#cityDiv" + removeId).remove();
	}
	
		// On submit of the form
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
			}else{
				var job = {};
				var check = Number(0);
				job["editCityId"] =$("#editCityId").val();
				job["stateId"] = $("#stateName").val();
				job["cityName"] = $("#cityName").val();
				if($("#cityDescription").val() !== ""){
					job["cityDescription"] = $("#cityDescription").val();
				}
				for (var k = 1; k <= Number(i); k++) {
					if(($("#cityName" + k).val() === "") && ($("#cityDescription"+ k).val() !== "")){
						check = Number(1);
						swal({
							title : 'Warning!',
							text : 'Please Enter City Name!!!',
							type : 'warning',
							confirmButtonText : 'OK',
							allowEscapeKey : true,
							confirmButtonClass : "btn btn-raised gradient-right",
							animation : true
						});
					}
					if(($("#cityName" + k).val() !== undefined) && ($("#cityName" + k).val() !== "")){
							if (k === Number(1)){
								if($("#cityDescription" + k).val() !== ""){
									job["otherCityDetails"] = $("#cityName" + k).val()+ ","+ $("#cityDescription" + k).val();
								}else{
									job["otherCityDetails"] = $("#cityName" + k).val();
								}
								
							}else {
								if($("#cityDescription" + k).val() !== ""){
									if(job["otherCityDetails"] === undefined){
										job["otherCityDetails"] = $("#cityName" + k).val()+ ","+ $("#cityDescription" + k).val();
									}else{
										job["otherCityDetails"] = job["otherCityDetails"]+ "_"+ $("#cityName" + k).val()+ ","+ $("#cityDescription" + k).val();
									}
									
								}else{
									if(job["otherCityDetails"] === undefined){
										job["otherCityDetails"] = $("#cityName" + k).val();
									}else{
										job["otherCityDetails"] = job["otherCityDetails"]+ "_"+ $("#cityName" + k).val();
									}
									
								}
								
							}
					}
				}
				alert(JSON.stringify(job));
				if(i === Number(0) || check === Number(0)){
					$("#submit").prop("disabled", true);
					$.ajax({
					type : "POST",
					url : "admin-addEditCity",
					data : JSON.stringify(job),
					processData : false,
					contentType :"application/json",
					success : function(data) {
							swal({
								  title: 'Success!',
								  text: 'City Successfully Inserted!!!',
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
							  text: 'City Not Inserted Successfully!!!',
							  type: 'error',
							  confirmButtonText :"OK",
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
						$("#submit").prop("disabled", false);

					}, complete : function(){
						
						//Removing all the values after successful submission of the form
						$("#stateName").val("");
						$("#cityName").val("");
						$("#cityDescription").val("");
						for(var k =1; k<= Number(i); k++){
							removeCityDiv(Number(k));
						}
						i = Number(0);
						$("#editCityId").val("0");
						defaultStateList(true,0,"stateName");
						$("#plusbtn").attr("disabled", false);
						fetchAllCities();
					}
			}); 
				}
				
			}
		});  
	 
		function fetchAllCities(){
			$.ajax({
				type : "GET",
				url : "admin-fetchAllCities",
				data : "",
				processData : false,
				contentType :"application/json",
				success : function(data) {
						  if(data.status){
							$("#cityTable > tbody").html("");
							var abc ="";
							for(var i = 0; i< data.listAllCities.length; i++){
								var cityDescription;
								if(data.listAllCities[i].cityDescription !== null){
									cityDescription = data.listAllCities[i].cityDescription;
								}else{
									cityDescription = "---";
								}
								abc = abc +"<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
								+"<td class=\"text-center\">"+data.listAllCities[i].id+"</td>"
								+"<td class=\"text-center\">"+data.listAllCities[i].cityName+"</td>"
								+"<td class=\"text-center\">"+cityDescription+"</td>"
								+"<td class=\"text-center\">"+data.listAllCities[i].state.stateName+"</td>"
								+"<td class=\"text-center\"><a href=\"#\" onclick=\"editCityById('"+data.listAllCities[i].id+"')\"title=\"Edit\"><i class=\"fa fa-pencil-square-o  editIcon\" aria-hidden=\"true\"></i></a><a href=\"#\" title=\"Delete\"><i class=\"material-icons deleteIcon\" style=\"margin-top:-10%;\">delete_sweep</i> <span class=\"icon-name\"></span></a></td></tr>"
							}
							$("#cityTable > tbody").html(abc);
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
		
		function editCityById(cityId){
			$.ajax({
				type : "GET",
				url : "admin-fetchCityById?id="+cityId,
				data : "",
				processData : false,
				contentType :"application/json",
				success : function(data) {
					defaultStateList(false,Number(data.city.stateId),data.city.stateName);
					$("#cityName").val(data.city.cityName);
					if(data.city.cityDescription !== null){
						$("#cityDescription").val(data.city.cityDescription);
					}
					$("#plusbtn").attr("disabled", true);
					$("#stateName").val(data.city.stateId);
					$("#editCityId").val(data.city.id);
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
		
		function defaultStateList(isInComplete,stateId,stateName){
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
			
		}
		
	</script>
	
	
	<div class="color-bg"></div>
	<%@ include file="admin-includeFooter.jsp"%>