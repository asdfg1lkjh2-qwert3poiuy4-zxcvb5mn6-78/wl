<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Food Type</title>

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
				<h2>Add Food Type</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>Food Type</h2>
						</div>
						<div class="body">
								<div class = "foodTypeDiv">
								<div class="row clearfix">
									<div class="col-sm-5 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="foodTypeName"
													id="foodTypeName" placeholder="Food Name">
											</div>
										</div>
									</div>
									<div class="col-sm-4 col-xs-12">
										<div class="form-group">
											<label for="comment">Food Description</label>
											<textarea class="form-control textarea-add" rows="5"
												name="foodTypeDescription" id="foodTypeDescription"></textarea>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<button type="button" class="btn btn-raised gradient-right"
												id="plusbtn">Add</button>
										</div>
									</div>
								</div>
							</div>
							<div class="hideDiv" id="typeStatusDiv">
								<div class="row clearfix">
									<div class="col-sm-4 col-xs-12">
										<div class="form-group drop-custum" id="typeStatus">
											<select class="form-control show-tick">
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-5 col-xs-12">
								<input type = "hidden" name = "editFoodTypeId" id = "editFoodTypeId" value = "0">
								<input type = "hidden" name = "typeStatusSelect" id = "typeStatusSelect" value = "">
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
							<h2>All Listed Food Types</h2>
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
								class="table table-bordered table-striped table-hover js-basic-example dataTable" id="foodTypeTable">
								<thead>
									<tr>
										<th class="text-center">Sl.No</th>
										<th class="text-center">Food Type Id</th>
										<th class="text-center">Food Type Name</th>
										<th class="text-center">Food Type Description</th>
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
		fetchAllFoodTypes();
	});
	var i = Number(0); 			//Variable to  know number of times the new div has been added
	//On click of Add button
	$("#plusbtn").click(function() {
		addDiv();

	});
	
	//For Adding new div
	function addDiv() {
		if ($("#foodTypeName" + i).val() === ""
				|| $("#foodTypeName").val() === "") {
			swal({
				title : 'Warning!',
				text : 'Please Enter Food Type Name!!!',
				type : 'warning',
				confirmButtonText : 'OK',
				allowEscapeKey : true,
				confirmButtonClass : "btn btn-raised gradient-right",
				animation : true
			});
		
		} else {
			if(Number(i) < Number(9)){
				i = Number(Number(i) + Number(1));
				$(".foodTypeDiv")
						.append(
								"<div class=\"row clearfix addDivs\" id='foodTypeDiv"+i+"'>"
										+ "<div class=\"col-sm-5 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<div class=\"form-line\">"
										+ "<input type=\"text\" class=\"form-control\"name=\"foodTypeName\" id='foodTypeName"+i+"' placeholder=\"Food Type Name\">"
										+ "</div>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-5 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<label for=\"comment\">Food Type Description</label>"
										+ "<textarea class=\"form-control textarea-add\" rows=\"5\" name=\"foodTypeDescription\" id='foodTypeDescription"+i+"'></textarea>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-2 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<button type=\"button\" class=\"btn btn-raised gradient-left\" id=\"plusbtn\" onclick=\"addDiv()\">Add</button>"
										+ "<button type=\"button\" class=\"btn btn-raised gradient-left\" id=\"minusbtn\" onclick=\"removeTypeDiv('"
										+ i + "')\">Remove</button>" + "</div>"
										+ "</div>" + "</div>")
			}else{
				swal({
					title : 'Warning!',
					text : 'You can only add 10 food types at a time!!!',
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
	function removeTypeDiv(removeId) {
		$("#foodTypeDiv" + removeId).remove();
	}
	
	// On submit of the form
    $("#submit").click(function (event){
		
		event.preventDefault();
		if($("#foodTypeName").val() === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Food Type Name!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else{
			var job = {};
			var check = Number(0);
			job["editFoodTypeId"] = $("#editFoodTypeId").val();
			job["foodTypeDetails"] = $("#foodTypeName").val();
			if($("#typeStatusSelect").val() !== ""){
			job["typeStatusSelect"] = $("#typeStatusSelect").val();
			}
			job["foodTypeDetails"] = job["foodTypeDetails"] +"_@."+$("#foodTypeDescription").val();
			for (var k = 1; k <= Number(i); k++) {
				if (($("#foodTypeName" + k).val() !== undefined) && ($("#foodTypeDescription" + k).val() !== undefined) && ($("#foodTypeName" + k).val() !== "")) {
						if(job["foodTypeDetails"] !== undefined)
						{
						  job["foodTypeDetails"] = job["foodTypeDetails"] + "-,@_"+$("#foodTypeName" + k).val()+"_@."+$("#foodTypeDescription" + k).val();
						}else{
							job["foodTypeDetails"] = $("#foodTypeName" + k).val()+"_@."+$("#foodTypeDescription" + k).val();
						}
				}
				
				if($("#foodTypeName" + k).val() === ""){
					check = Number(1);
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Food Type Name!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
					});
				}

			}
			alert(JSON.stringify(job));
			if(i === Number(0) || check === Number(0)){
				$("#submit").prop("disabled", true);
				$.ajax({
				type : "POST",
				url : "admin-addEditFoodType",
				data : JSON.stringify(job),
				processData : false,
				contentType :"application/json",
				success : function(data) {
						swal({
							  title: 'Success!',
							  text: 'Food Type Successfully Inserted!!!',
							  type: 'success',
							  showConfirmButton :false,
							  allowEscapeKey:true,
							  timer:2000,
							  animation:true
							});
					
					$("#submit").prop("disabled", false);
				},
				error : function(e) {
					//alert("Error");
					swal({
						  title: 'Error!',
						  text: 'Food Type Not Inserted Successfully!!!',
						  type: 'error',
						  confirmButtonText :"OK",
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
					$("#submit").prop("disabled", false);

				}, complete : function(){
					//Removing all the values after successful submission of the form
					$("#foodTypeName").val("");
					$("#foodTypeDescription").val("");
					$("#editFoodTypeId").val("0");
					for(var k =1; k<= Number(i); k++){
						removeTypeDiv(Number(k));
					}
					$("#plusbtn").attr("disabled", false);
					$("#typeStatus").val("");
					$("#typeStatusDiv").attr("style","");
					fetchAllFoodTypes();
				}
			}); 
			}
			
			
		}
	});  
	
    function fetchAllFoodTypes(){
		$.ajax({
			type : "GET",
			url : "admin-fetchAllFoodTypes",
			data : "",
			processData : false,
			contentType :"application/json",
			success : function(data) {
					if(data.status){
						$("#foodTypeTable > tbody").html("");
						var abc ="";
						for(var i = 0; i< data.listFoodType.length; i++){
							var foodDescription;
							if(data.listFoodType[i].description !== null){
								foodDescription = data.listFoodType[i].description;
							}else{
								foodDescription = "---";
							}
							var isActive;
							if(data.listFoodType[i].status){
								isActive = "Active";
							}else{
								isActive = "Inactive";
							}
							abc = abc +"<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
							+"<td class=\"text-center\">"+data.listFoodType[i].id+"</td>"
							+"<td class=\"text-center\">"+data.listFoodType[i].name+"</td>"
							+"<td class=\"text-center\">"+foodDescription+"</td>"
							+"<td class=\"text-center\">"+isActive+"</td>"
							+"<td class=\"text-center\"><a href=\"#\" onclick=\"editFoodTypeById('"+data.listFoodType[i].id+"')\"title=\"Edit\"><i class=\"fa fa-pencil-square-o  editIcon\" aria-hidden=\"true\"></i></a><a href=\"#\" title=\"Delete\"><i class=\"material-icons deleteIcon\" style=\"margin-top:-12%;\">delete_sweep</i> <span class=\"icon-name\"></span></a></td></tr>"
						}
						$("#foodTypeTable > tbody").html(abc);
					}
			},
			error : function(e) {
				//alert("Error");
				swal({
					  title: 'Error!',
					  text: 'Food Type Not Fetched Successfully!!!',
					  type: 'error',
					  confirmButtonText :"OK",
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}
		 }); 
		
	}
     function editFoodTypeById(foodTypeId){
		$.ajax({
			type : "GET",
			url : "admin-fetchFoodTypeById?id="+foodTypeId,
			data : "",
			processData : false,
			contentType :"application/json",
			success : function(data) {
				$("#foodTypeName").val(data.foodType.name);
				if(data.foodType.description !== null){
					$("#foodTypeDescription").val(data.foodType.description);
				}else{
					$("#foodTypeDescription").val("");
				}
				$("#plusbtn").attr("disabled", true);
				$("#typeStatusDiv").attr("style","display:block");
				var isActive;
				if(data.foodType.status){
					isActive = "Active";
				}else{
					isActive = "Inactive";
				}
				foodTypeStatus(isActive);
				$("#editFoodTypeId").val(data.foodType.id);
			},
			error : function(e) {
				//alert("Error");
				swal({
					  title: 'Error!',
					  text: 'Food Type Not Fetched Successfully!!!',
					  type: 'error',
					  confirmButtonText :"OK",
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});

			}
	}); 
	}
    
    function foodTypeStatus(isActive){
		$("#typeStatusSelect").val(isActive);
		var clicked;
		if(isActive === "Active"){
			clicked ="<li data-original-index=\"1\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"foodTypeStatus('Active')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"2\" ><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"foodTypeStatus('Inactive')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"</ul></div>"
		}else{
			clicked ="<li data-original-index=\"1\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"foodTypeStatus('Active')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"2\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"foodTypeStatus('Inactive')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"</ul></div>"
		}
		
		var mno ="<div class=\"form-group drop-custum\">"
			+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+isActive+"  --\"><span class=\"filter-option pull-left\">--"+isActive+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
			+"<ul class=\"dropdown-menu inner\" role=\"menu\">"
			+"<li data-original-index=\"0\" class=\"\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Food Type Status --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			+clicked
			+"</div>"
		$("#typeStatusDiv").html(mno);	
	} 
	</script>
	
	<div class="color-bg"></div>
	<%@ include file="admin-includeFooter.jsp"%>