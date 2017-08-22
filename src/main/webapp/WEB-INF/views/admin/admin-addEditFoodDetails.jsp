<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Food Details</title>

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
				<h2>Add Food Details</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>Food Details</h2>
						</div>
						<div class="body">
							<div class="row clearfix">
								<div class="col-sm-6 col-xs-12">
									<div class="form-group drop-custum" id="foodTypeDiv"></div>
								</div>
								<div class="col-sm-6 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerId"
												id="sellerId" value = "${sessionScope.sellerDetailsSession.id}" placeholder="Seller Id">
										</div>
									</div>
								</div>
							</div>
							<div class="foodDiv">
								<div class="row clearfix">
								<div class="col-sm-3 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="foodName"
												id="foodName" placeholder="Food Name">
										</div>
									</div>
								</div>
								 <div class="col-sm-2 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="price"
												id="price" placeholder="Price/Plate">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<label for="comment">Food Description</label>
											<textarea class="form-control textarea-add" rows="6"
												name="foodDescription" id="foodDescription"></textarea>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="vegDish" id="vegDish">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Veg
												</label> &nbsp;
												<label class="labelCheckbox"> <input type="checkbox"
													name="nonVegDish" id="nonVegDish">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Non-Veg
												</label>
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
							<div class="hideDiv" id="foodStatusDiv">
								<div class="row clearfix">
									<div class="col-sm-4 col-xs-12">
										<div class="form-group drop-custum" id="foodStatus">
											<select class="form-control show-tick">
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-xs-12">
								<input type ="hidden" name ="typeName" id="typeName" value="">
								<input type ="hidden" name="editFoodId" id ="editFoodId" value="0">
								<input type ="hidden" name="foodStatusSelect" id = "foodStatusSelect" value="">
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
							<h2>All Listed Foods</h2>
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
								class="table table-bordered table-striped table-hover js-basic-example dataTable" id="foodTable">
								<thead>
									<tr>
										<th class="text-center">Sl.No</th>
										<th class="text-center">Food Id</th>
										<th class="text-center">Food Name</th>
										<th class="text-center">Food Description</th>
										<th class="text-center">Food Type Name</th>
										<th class="text-center">Status</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>
								<tbody>
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
		fetchAllFoodTypes();          //Fetching all Food Type List
		fetchAllFoodNamesBySellerId();
	});
	
	var ary = new Array ();  		// Array for storing the food types and Id.
	function fetchAllFoodTypes() {
		$
				.ajax({
					type : "GET",
					url : "admin-fetchAllFoodTypesWithStatus",
					data : "",
					contentType : "application/json",
					processData : false,
					success : function(data) {
						$("#foodTypeDiv").html("");
						if (data.status) {
							var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Food Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Food Type--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
									+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
									+"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"+0+"','Food Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Food Type --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
							var cde = "";		
									for(var i = 0; i<data.listFoodType.length; i++){	
										cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' id='li"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"+Number(Number(i)+Number(1))+"','"+data.listFoodType[i].name+"','"+data.listFoodType[i].id+"')\"><span class=\"text\">"+data.listFoodType[i].name+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
										var arValue = data.listFoodType[i].id+"_"+data.listFoodType[i].name;
										ary.push(arValue);
									}
								cde = cde +"</ul></div>"
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
	
	
	var previousLi; 			// For previous li id to remove the class selected
	
	//On click of each li in Category list 
	function clickLi(liId,title1,foodTypeId){
		$("#typeName").val(foodTypeId);
		var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--"+title1+ "--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"
		+ title1
		+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"

		if(Number(liId) > Number(0)){
			 var selectedId = $(".selected").attr("id");
				previouLi = liId;

			abc = abc + "<li data-original-index=\"0\" class=\"\" id=\"li0\" onclick=\"clickLi('"
					+ 0
					+ "','Food Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Food Type --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
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
			$("#foodTypeDiv").html(abc + cde);

		} else {
			$("#li" + previousLi).removeClass("selected");
			$("#li0").addClass("selected");
			
			 abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"
			+ 0
			+ "','Food Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Food Type --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
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
	$("#foodTypeDiv").html(abc + cde);

		}
	}

	var i = Number(0); 			//Variable to  know number of times the new div has been added
	
	//On click of Add button
	$("#plusbtn").click(function() {
		addDiv();

	});
	
	//For Adding new div
	function addDiv() {
		if ($("#foodName" + i).val() === ""
				|| $("#foodName").val() === "") {
			swal({
				title : 'Warning!',
				text : 'Please Enter Food Name!!!',
				type : 'warning',
				confirmButtonText : 'OK',
				allowEscapeKey : true,
				confirmButtonClass : "btn btn-raised gradient-right",
				animation : true
			});
		}else if($("#price" + i).val() === ""
			|| $("#price").val() === ""){
			swal({
				title : 'Warning!',
				text : 'Please Enter Price Of Food!!!',
				type : 'warning',
				confirmButtonText : 'OK',
				allowEscapeKey : true,
				confirmButtonClass : "btn btn-raised gradient-right",
				animation : true
			});
		}else if(!($("#vegDish" + i+",#vegDish,#nonVegDish" + i+",#nonVegDish").is(":checked"))){
			swal({
				title : 'Warning!',
				text : 'Please Enter Type Of Dish!!!',
				type : 'warning',
				confirmButtonText : 'OK',
				allowEscapeKey : true,
				confirmButtonClass : "btn btn-raised gradient-right",
				animation : true
			}); 
		}else {
			if(Number(i) < Number(5)){
				i = Number(Number(i) + Number(1));
				$(".foodDiv")
						.append(
								"<div class=\"row clearfix addDivs\" id='foodDiv"+i+"'>"
										+ "<div class=\"col-sm-3 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<div class=\"form-line\">"
										+ "<input type=\"text\" class=\"form-control\"name=\"foodName\" id='foodName"+i+"' placeholder=\"Food Name\">"
										+ "</div>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-2 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<div class=\"form-line\">"
										+ "<input type=\"text\" class=\"form-control\"name=\"price\" id='price"+i+"' placeholder=\"Price/Plate\">"
										+ "</div>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-3 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<label for=\"comment\">Food Description</label>"
										+ "<textarea class=\"form-control textarea-add\" rows=\"6\" name=\"foodDescription\" id='foodDescription"+i+"'></textarea>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-2 col-xs-12\">"
										+ "<div class=\"form-group mrgn-less-15\">"
										+ "<div class=\"checkbox\">"
										+ "<label class=\"labelCheckbox\"> <input type=\"checkbox\" name=\"vegDish\" id='vegDish"+i+"' onclick=\"typeOfDish(this.id,'"+i+"')\">"
										+ "<span class=\"cr\"><i class=\"cr-icon glyphicon glyphicon-ok\"></i></span> Veg"
										+ "</label> &nbsp;"
										+ "<label class=\"labelCheckbox\"> <input type=\"checkbox\" name=\"nonVegDish\" id='nonVegDish"+i+"' onclick=\"typeOfDish(this.id,'"+i+"')\">"
										+ "<span class=\"cr\"><i class=\"cr-icon glyphicon glyphicon-ok\"></i></span> Non-Veg"
										+ "</label>"
										+ "</div>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-2 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<button type=\"button\" class=\"btn btn-raised gradient-left\" id=\"plusbtn\" onclick=\"addDiv()\">Add</button>"
										+ "<button type=\"button\" class=\"btn btn-raised gradient-left\" id=\"minusbtn\" onclick=\"removeFoodDiv('"
										+ i + "')\">Remove</button>" + "</div>"
										+ "</div>" + "</div>")
			}else{
				swal({
					title : 'Warning!',
					text : 'You can only add 6 Food Names at a time!!!',
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
	function removeFoodDiv(removeId) {
		$("#foodDiv" + removeId).remove();
	}
	
		// On submit of the form
	     $("#submit").click(function (event){
			event.preventDefault();
			 if($("#typeName").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Food Type!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			} else if($("#foodName").val() === "" ){
				swal({
					title : 'Warning!',
					text : 'Please Enter Food Name!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}else if($("#price").val() === ""){
				swal({
					title : 'Warning!',
					text : 'Please Enter Price Of The Food!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}else if(!($("#vegDish").is(":checked") || $("#nonVegDish").is(":checked"))){
				swal({
					title : 'Warning!',
					text : 'Please Enter Type Of Dish!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}else{
				var job = {};
				var check = Number(0);
				job["editFoodId"] =$("#editFoodId").val();
				job["typeId"] = $("#typeName").val();
				if($("#foodStatusSelect").val() !== ""){
					job["foodStatusSelect"] = $("#foodStatusSelect").val();
				}
				job["foodDetails"] = $("#foodName").val()+"_@."+$("#price").val()+"_@."+($("#vegDish").prop("checked") ? true : false) +"_@."+$("#foodDescription").val();;
				/* if($("#foodDescription").val() !== ""){
					job["foodDetails"] = job["foodDetails"]+"_@."+$("#foodDescription").val(); 
				} */
				for (var k = 1; k <= Number(i); k++) {
					if (($("#foodName" + k).val() !== "") && ($("#price" + k).val() !== "") && ($("#vegDish" + k+",#nonVegDish"+k).is(":checked")) && ($("#foodName" + k).val() !== undefined) && ($("#price" + k).val() !== undefined)) {
						//if($("#foodDescription"+ k).val() !=""){
							job["foodDetails"] = job["foodDetails"] + "-,@_"+$("#foodName" + k).val()+"_@."+$("#price" + k).val()+"_@."+($("#vegDish" + k).prop("checked") ? true : false)+"_@."+$("#foodDescription" + k).val();
						/* }else{
							job["foodDetails"] = job["foodDetails"]+ "-,@_"+$("#foodName" + k).val()+"^@_"+$("#price" + k).val()+"^@_"+($("#vegDish" + k).prop("checked") ? true : false);
						} */
					  }
					
					if($("#foodName" + k).val() === ""){
						check = Number(1);
						swal({
							title : 'Warning!',
							text : 'Please Enter Food Name!!!',
							type : 'warning',
							confirmButtonText : 'OK',
							allowEscapeKey : true,
							confirmButtonClass : "btn btn-raised gradient-right",
							animation : true
						});
					}else if($("#price" + k).val() === ""){
						check = Number(1);
						swal({
							title : 'Warning!',
							text : 'Please Enter Price Of The Food!!!',
							type : 'warning',
							confirmButtonText : 'OK',
							allowEscapeKey : true,
							confirmButtonClass : "btn btn-raised gradient-right",
							animation : true
						});
					}else if(!($("#vegDish" + k).is(":checked") || $("#nonVegDish" + k).is(":checked"))){
						check = Number(1);
						swal({
							title : 'Warning!',
							text : 'Please Enter Type Of Dish!!!',
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
					url : "admin-addEditFood",
					data : JSON.stringify(job),
					processData : false,
					contentType :"application/json",
					success : function(data) {
							swal({
								  title: 'Success!',
								  text: 'Food Details Successfully Inserted!!!',
								  type: 'success',
								  showConfirmButton :false,
								  allowEscapeKey:true,
								  timer:2000,
								  animation:true
								});
						
						
						$("#submit").prop("disabled", false);

					},
					error : function(e) {
						alert("Error");
						swal({
							  title: 'Error!',
							  text: 'Food Details Not Inserted Successfully!!!',
							  type: 'error',
							  confirmButtonText :"OK",
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
						$("#submit").prop("disabled", false);

					}, complete : function(){
						
						//Removing all the values after successful submission of the form
						$("#typeName").val("");
						$("#foodName").val("");
						$("#price").val("");
						$("#foodDescription").val("");
						for(var k =1; k<= Number(i); k++){
							removeFoodDiv(Number(k));
						}
						$("#editCityId").val("0");
						defaultTypeList(true,0,"Food Type");
						$("#foodStatusDiv").attr("style","");
						$("#foodStatusSelect").val("");
						i = Number(0);
						$("#plusbtn").attr("disabled", false);
						fetchAllFoodNamesBySellerId();
					}
			});  
				}
				
				
			}
		});  
	 
		function fetchAllFoodNamesBySellerId(){
			$.ajax({
				type : "GET",
				url : "admin-fetchAllFoodsBySeller",
				data : "",
				processData : false,
				contentType :"application/json",
				success : function(data) {
						  if(data.status){
							$("#foodTable > tbody").html("");
							var abc ="";
							for(var i = 0; i< data.listFood.length; i++){
								var foodDescription;
								var status;
								if(data.listFood[i].description !== null){
									foodDescription = data.listFood[i].description;
								}else{
									foodDescription = "---";
								}
								
								if(data.listFood[i].status){
									status = "Active";
								}else{
									status = "Inactive";
								}
								abc = abc +"<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
								+"<td class=\"text-center\">"+data.listFood[i].id+"</td>"
								+"<td class=\"text-center\">"+data.listFood[i].name+"</td>"
								+"<td class=\"text-center\">"+foodDescription+"</td>"
								+"<td class=\"text-center\">"+data.listFood[i].foodType.name+"</td>"
								+"<td class=\"text-center\">"+status+"</td>"
								+"<td class=\"text-center\"><a href=\"#\" onclick=\"editFoodDetailsById('"+data.listFood[i].id+"')\">Edit<a><a href=\"\">Y</a></td></tr>"
							}
							$("#foodTable > tbody").html(abc);
						}  
				},
				error : function(e) {
					alert("Error");
					swal({
						  title: 'Error!',
						  text: 'Food Details Not Fetched Successfully!!!',
						  type: 'error',
						  confirmButtonText :"OK",
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}
			 }); 
			
		}
		
		function editFoodDetailsById(foodNameId){
			$.ajax({
				type : "GET",
				url : "admin-fetchFoodById?id="+foodNameId,
				data : "",
				processData : false,
				contentType :"application/json",
				success : function(data) {
					defaultTypeList(false,Number(data.food.foodType.id),data.food.foodType.name);
					$("#foodName").val(data.food.name);
					$("#price").val(data.food.price);
					if(data.food.description !== null){
						$("#foodDescription").val(data.food.description);
					}
					$("#foodStatusDiv").attr("style","display:block");
					var isActive;
					if(data.food.status){
						isActive = "Active";
					}else{
						isActive = "Inactive";
					}
					foodDetailsStatus(isActive);
					$("#plusbtn").attr("disabled", true);
					$("#typeName").val(data.food.foodType.id);
					$("#editFoodId").val(data.food.id);
				},
				error : function(e) {
					swal({
						  title: 'Error!',
						  text: 'Food Detail Not Fetched Successfully!!!',
						  type: 'error',
						  confirmButtonText :"OK",
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});

				}
		}); 
		}
		
		$("#vegDish, #nonVegDish").click(function(){
			var check = Number(0);
			if($("#"+this.id).is(':checked')){
				check = Number(1);
			}
			$("#vegDish,#nonVegDish").prop("checked",false);
			
			if(check === Number(1)){
				$("#"+this.id).prop("checked",true);
			}
		});
		
		function typeOfDish(id,noOfDiv){
			var check = Number(0);
			if($("#"+id).is(':checked')){
				check = Number(1);
			}
			$("#vegDish"+noOfDiv+",#nonVegDish"+noOfDiv).prop("checked",false);
			
			if(check === Number(1)){
				$("#"+id).prop("checked",true);
			}
		}
		
		function foodDetailsStatus(isActive){
			$("#foodStatusSelect").val(isActive);
			var clicked;
			if(isActive === "Active"){
				clicked ="<li data-original-index=\"1\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"foodDetailsStatus('Active')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"<li data-original-index=\"2\" ><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"foodDetailsStatus('Inactive')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"</ul></div>"
			}else{
				clicked ="<li data-original-index=\"1\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"foodDetailsStatus('Active')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"<li data-original-index=\"2\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"foodDetailsStatus('Inactive')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"</ul></div>"
			}
			
			var mno ="<div class=\"form-group drop-custum\">"
				+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+isActive+"  --\"><span class=\"filter-option pull-left\">--"+isActive+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
				+"<ul class=\"dropdown-menu inner\" role=\"menu\">"
				+"<li data-original-index=\"0\" class=\"\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Food Type Status --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+clicked
				+"</div>"
			$("#foodStatusDiv").html(mno);	
		} 
		function defaultTypeList(isInComplete,typeId,typeName){
			// Removing the values from the Type list
			var abc ="";
			if(isInComplete){
				 abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Food Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Food Type"
					+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
					 abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"
						+ 0
						+ "','Food Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Food Type --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			}else{
				
				abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=--"+typeName+"-- aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"+typeName
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
						cde = cde + "<li data-original-index=\"0\" id=\"li0\" onclick=\"clickLi('"+ 0+ "','Food Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- State Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>";
					}
			}
			cde = cde + "</ul></div>"
			
			$("#foodTypeDiv").html(abc + cde);
			
		}  
	</script>
	
	
	<div class="color-bg"></div>
	<%@ include file="admin-includeFooter.jsp"%>
	</body>
	</html>