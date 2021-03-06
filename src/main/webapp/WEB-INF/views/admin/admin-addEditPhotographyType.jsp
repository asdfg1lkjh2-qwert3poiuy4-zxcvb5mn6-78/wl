<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Photography Type</title>

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
				<h2>Add Photographer Type</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>Photography Type</h2>
						</div>
						<div class="body">
								<div class = "photographyTypeDiv">
								<div class="row clearfix">
									<div class="col-sm-5 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="typeName"
													id="typeName" placeholder="Photography Type Name">
											</div>
										</div>
									</div>
									<div class="col-sm-4 col-xs-12">
										<div class="form-group">
											<label for="comment">Photography Type Description</label>
											<textarea class="form-control textarea-add" rows="5"
												name="typeDescription" id="typeDescription"></textarea>
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
								<div class="hideDiv" id="photographyTypeStatusDiv">
								<div class="row clearfix">
									<div class="col-sm-4 col-xs-12">
										<div class="form-group drop-custum" id="photographyTypeStatus">
											<select class="form-control show-tick">

											</select>
										</div>
									</div>
								</div>
								</div>
							<div class="row clearfix">
								<div class="col-sm-5 col-xs-12">
								<input type = "hidden" name = "editPhotographyTypeId" id = "editPhotographyTypeId" value = "0">
								<input type = "hidden" name = "photographyStatusSelect" id = "photographyStatusSelect" value = "">
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
							<h2>All Listed Photography Types</h2>
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
								class="table table-bordered table-striped table-hover js-basic-example dataTable" id="photographyTypeTable">
								<thead>
									<tr>
										<th class="text-center">Sl.No</th>
										<th class="text-center">Photography Type Id</th>
										<th class="text-center">Photography Type Name</th>
										<th class="text-center">Photography Type Description</th>
										<th class="text-center">isActive</th>
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
		fetchAllPhotographyTypes();
	});
	var i = Number(0); 			//Variable to  know number of times the new div has been added
	//On click of Add button
	$("#plusbtn").click(function() {
		addDiv();

	});
	
	//For Adding new div
	function addDiv() {
		if ($("#typeName" + i).val() === ""
				|| $("#typeName").val() === "") {
			swal({
				title : 'Warning!',
				text : 'Please Enter Photography Type Name!!!',
				type : 'warning',
				confirmButtonText : 'OK',
				allowEscapeKey : true,
				confirmButtonClass : "btn btn-raised gradient-right",
				animation : true
			});
		
		} else {
			if(Number(i) < Number(9)){
				i = Number(Number(i) + Number(1));
				$(".photographyTypeDiv")
						.append(
								"<div class=\"row clearfix addDivs\" id='photographyTypeDiv"+i+"'>"
										+ "<div class=\"col-sm-5 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<div class=\"form-line\">"
										+ "<input type=\"text\" class=\"form-control\"name=\"typeName\" id='typeName"+i+"' placeholder=\"Photography Type Name\">"
										+ "</div>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-5 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<label for=\"comment\">Photography Type Description</label>"
										+ "<textarea class=\"form-control textarea-add\" rows=\"5\" name=\"typeDescription\" id='typeDescription"+i+"'></textarea>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-2 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<button type=\"button\" class=\"btn btn-raised gradient-left\" id=\"plusbtn\" onclick=\"addDiv()\">Add</button>"
										+ "<button type=\"button\" class=\"btn btn-raised gradient-left\" id=\"minusbtn\" onclick=\"removePhotographyTypeDiv('"
										+ i + "')\">Remove</button>" + "</div>"
										+ "</div>" + "</div>")
			}else{
				swal({
					title : 'Warning!',
					text : 'You can only add 10 photography type at a time!!!',
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
	function removePhotographyTypeDiv(removeId) {
		$("#photographyTypeDiv" + removeId).remove();
	}
	
	// On submit of the form
    $("#submit").click(function (event){
		
		event.preventDefault();
		if($("#typeName").val() === ""){
			swal({
				  title: 'Warning!',
				  text: 'Please Enter Photography Type Name!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else{
			var job = {};
			var check = Number(0);
			job["editPhotographyTypeId"] = $("#editPhotographyTypeId").val();
			job["typeName"] = $("#typeName").val();
			job["photographyStatusSelect"] = $("#photographyStatusSelect").val();
			if($("#typeDescription").val() !== ""){
				job["typeDescription"] = $("#typeDescription").val();
			}
			for (var k = 1; k <= Number(i); k++) {
				if (($("#typeName" + k).val() !== undefined) && ($("#typeDescription" + k).val() !== undefined) && ($("#typeName" + k).val() !== "")) {
					if (k === Number(1)) {
						if($("#typeDescription"+ k).val() !=""){
							job["otherTypeDetails"] = $("#typeName" + k).val()+ ","+ $("#typeDescription"+ k).val();
						}else{
							job["otherTypeDetails"] = $("#typeName" + k).val();
						}
						
					} else {
						if(job["otherTypeDetails"] !== undefined){
							if($("#typeDescription"+k).val() !=""){
								job["otherTypeDetails"] = job["otherTypeDetails"]+ "_"+ $("#typeName" + k).val()+ ","+ $("#typeDescription"+ k).val();
							}else{
								job["otherTypeDetails"] = job["otherTypeDetails"]+ "_"+ $("#typeName" + k).val();
							}
						}else{
							if($("#typeDescription"+k).val() !=""){
								job["otherTypeDetails"] = $("#typeName" + k).val()+ ","+ $("#typeDescription"+ k).val();
							}else{
								job["otherTypeDetails"] = $("#typeName" + k).val();
							}
						}
					}
				}
				
				if($("#typeName" + k).val() === ""){
					check = Number(1);
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Photography Type Name!!!',
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
				url : "admin-addEditPhotographyType",
				data : JSON.stringify(job),
				processData : false,
				contentType :"application/json",
				success : function(data) {
						swal({
							  title: 'Success!',
							  text: 'Photography Type Successfully Inserted!!!',
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
						  text: 'Photography Type Not Inserted Successfully!!!',
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
					$("#typeDescription").val("");
					$("#editPhotographyTypeId").val("0");
					for(var k =1; k<= Number(i); k++){
						removePhotographyTypeDiv(Number(k));
					}
					$("#plusbtn").attr("disabled", false);
					$("#photographyTypeStatus").val("");
					$("#photographyTypeStatusDiv").attr("style","");
					i = Number(0);
					fetchAllPhotographyTypes();
				}
			}); 
		 }
			
			
		}
	});  
	
    function fetchAllPhotographyTypes(){
		$.ajax({
			type : "GET",
			url : "admin-fetchAllPhotographyTypes",
			data : "",
			processData : false,
			contentType :"application/json",
			success : function(data) {
					if(data.status){
						$("#photographyTypeTable > tbody").html("");
						var abc ="";
						for(var i = 0; i< data.listAllPhotographyTypes.length; i++){
							var typeDescription;
							if(data.listAllPhotographyTypes[i].typeDescription !== null){
								typeDescription = data.listAllPhotographyTypes[i].typeDescription;
							}else{
								typeDescription = "---";
							}
							var isActive;
							if(data.listAllPhotographyTypes[i].status){
								isActive = "Yes";
							}else{
								isActive = "No";
							}
							abc = abc +"<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
							+"<td class=\"text-center\">"+data.listAllPhotographyTypes[i].id+"</td>"
							+"<td class=\"text-center\">"+data.listAllPhotographyTypes[i].typeName+"</td>"
							+"<td class=\"text-center\">"+typeDescription+"</td>"
							+"<td class=\"text-center\">"+isActive+"</td>"
							+"<td class=\"text-center\"><a href=\"#\" onclick=\"editPhotographyTypeById('"+data.listAllPhotographyTypes[i].id+"')\"title=\"Edit\"><i class=\"fa fa-pencil-square-o  editIcon\" aria-hidden=\"true\"></i></a><a href=\"#\" title=\"Delete\"><i class=\"material-icons deleteIcon\" style=\"margin-top:-16%;\">delete_sweep</i> <span class=\"icon-name\"></span></a></td></tr>"
						}
						$("#photographyTypeTable > tbody").html(abc);
					}
			},
			error : function(e) {
				alert("Error");
				swal({
					  title: 'Error!',
					  text: 'PhotographyType Not Fetched Successfully!!!',
					  type: 'error',
					  confirmButtonText :"OK",
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}
		 }); 
		
	}
    function editPhotographyTypeById(photographyTypeId){
		$.ajax({
			type : "GET",
			url : "admin-fetchPhotographyTypeById?id="+photographyTypeId,
			data : "",
			processData : false,
			contentType :"application/json",
			success : function(data) {
				$("#typeName").val(data.photographyType.typeName);
				if(data.photographyType.typeDescription !== null){
					$("#typeDescription").val(data.photographyType.typeDescription);
				}
				$("#plusbtn").attr("disabled", true);
				$("#photographyTypeStatusDiv").attr("style","display:block");
				var isActive;
				if(data.photographyType.status){
					isActive = "Active";
				}else{
					isActive = "Inactive";
				}
				photographyTypeStatus(isActive);
				$("#editPhotographyTypeId").val(data.photographyType.id);
			},
			error : function(e) {
				swal({
					  title: 'Error!',
					  text: 'Photography Type Not Fetched Successfully!!!',
					  type: 'error',
					  confirmButtonText :"OK",
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});

			}
	}); 
	}
    
    function photographyTypeStatus(isActive){
		$("#photographyStatusSelect").val(isActive);
		var clicked;
		if(isActive === "Active"){
			clicked ="<li data-original-index=\"1\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"photographyTypeStatus('Active')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"2\" ><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"photographyTypeStatus('Inactive')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"</ul></div>"
		}else{
			clicked ="<li data-original-index=\"1\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"photographyTypeStatus('Active')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"2\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"photographyTypeStatus('Inactive')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"</ul></div>"
		}
		
		var mno ="<div class=\"form-group drop-custum\">"
			+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+isActive+"  --\"><span class=\"filter-option pull-left\">--"+isActive+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
			+"<ul class=\"dropdown-menu inner\" role=\"menu\">"
			+"<li data-original-index=\"0\" class=\"\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Photography Type Status --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			+clicked
			+"</div>"
		$("#photographyTypeStatusDiv").html(mno);	
	}
	</script>
	
	<div class="color-bg"></div>
	<%@ include file="admin-includeFooter.jsp"%>