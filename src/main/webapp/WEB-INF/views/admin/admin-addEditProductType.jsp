<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Product Type</title>

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
				<h2>Add Product Type</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>Product Type</h2>
						</div>
						<div class="body">
							<div class="row clearfix">
								<div class="col-sm-12 col-xs-12">
									<div class="form-group drop-custum" id="categoryDiv"></div>
								</div>
							</div>
							<div class = "productTypeDiv">
								<div class="row clearfix">
									<div class="col-sm-5 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="typeName"
													id="typeName" placeholder="Product Type Name">
											</div>
										</div>
										<div class="hideDiv" id="productTypeStatusDiv">
											<div class="form-group drop-custum" id="productTypeStatus">
												<select class="form-control show-tick">

												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-5 col-xs-12">
										<div class="form-group">
											<label for="comment">Product Type Description</label>
											<textarea class="form-control textarea-add" rows="5"
												name="typeDescription" id="typeDescription"></textarea>
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
								<div class="col-sm-5 col-xs-12">
								<input type ="hidden" name ="categoryName" id="categoryName" value="">
								<input type = "hidden" name = "editTypeId" id = "editTypeId" value = "0">
								<input type = "hidden" name = "statusSelect" id = "statusSelect" value = "">
									<button type="submit" class="btn btn-raised gradient-right" id="submit">Submit</button>
									<button type="button" class="btn btn-raised gradient-left" onclick="clearForm()">Clear</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Data Table Start -->

					<div class="card">
						<div class="header">
							<h2>All Listed Product Types</h2>
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
								class="table table-bordered table-striped table-hover js-basic-example dataTable" id="productTypeTable">
								<thead>
									<tr>
										<th class="text-center">Sl.No</th>
										<th class="text-center">Type Id</th>
										<th class="text-center">Category Name</th>
										<th class="text-center">Type Name</th>
										<th class="text-center">Type Description</th>
										<th class="text-center">Activated</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>
								<tbody>
									<!-- <tr>
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
									</tr> -->
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
		fetchAllCategory();
		fetchAllProductTypes();
	});
	
	function clearForm() {
		$("#categoryName").val("");
		$("#typeName").val("");
		$("#typeDescription").val("");
		$("#editTypeId").val("0");
		for (var k = 1; k <= Number(i); k++) {
			removeProductTypeDiv(Number(k));
		}
		$("#plusbtn").attr("disabled",
				false);
		$("#productTypeStatus").val("");
		$("#productTypeStatusDiv").attr("style", "");
		defaultCategoryList(true, "Category Id", "Category Name");
	}
	
	var ary = new Array ();  		// Array for storing the category names and Id.
	function fetchAllCategory() {
		$.ajax({
			type : "GET",
			url : "admin-fetchAllCategoryAvailble",
			data : "",
			contentType : "application/json",
			processData : false,
			success : function(data) {
				$("#categoryDiv").html("");
				if (data.status) {
					var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Category Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Category Name--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
							+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
							+"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"+0+"','Category Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Category Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					var cde = "";		
							for(var i = 0; i<data.categoryAvailables.length; i++){	
								cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' id='li"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"+Number(Number(i)+Number(1))+"','"+data.categoryAvailables[i].categoryName+"','"+data.categoryAvailables[i].id+"')\"><span class=\"text\">"+data.categoryAvailables[i].categoryName+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
								var arValue = data.categoryAvailables[i].id+"_"+data.categoryAvailables[i].categoryName;
								ary.push(arValue);
							}
						cde = cde +"</ul></div>"
						$("#categoryDiv").html(abc + cde);
				}
			},
			error : function(e) {
				//alert("Error");
				swal({
					title : 'Error!',
					text : 'Unable to Fetch All Category Deatils!!!',
					type : 'error',
					confirmButtonText : "OK",
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}
		});
	}
	
	var previousLi; // For previous li id to remove the class selected

	//On click of each li in Category list 
	function clickLi(liId, title1, categoryId) {
		$("#categoryName").val(categoryId);
		if(title1 === 'Category Name')
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
					+ "','Category Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Category Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			var cde = "";
			for (var i = 0; i < ary.length; i++) {
				var splittedArray = ary[i].split("_");
				if (Number(i) === Number(Number(liId) - Number(1))) {
					cde = cde
							+ "<li data-original-index='"
							+ Number(Number(i) + Number(1))
							+ "' class =\"selected\" id='li"
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
			} else {
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
			}
			cde = cde + "</ul></div>"
	
			$("#categoryDiv").html(abc + cde);
		} else {
		$("#li" + previousLi).removeClass("selected");
		$("#li0").addClass("selected");

		abc = abc
				+ "<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"
				+ 0
				+ "','Category Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Category Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
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

			$("#categoryDiv").html(abc + cde);
		}
	}

	var i = Number(0); //Variable to  know number of times the new div has been added
	//On click of Add button
	$("#plusbtn").click(function() {
		addDiv();

	});

	//For Adding new div
	function addDiv() {
		if ($("#typeName" + i).val() === "" || $("#typeName").val() === "") {
			swal({
				title : 'Warning!',
				text : 'Please Enter Product Type Name!!!',
				type : 'warning',
				confirmButtonText : 'OK',
				allowEscapeKey : true,
				confirmButtonClass : "btn btn-raised gradient-right",
				animation : true
			});

		} else {
			if (Number(i) < Number(9)) {
				i = Number(Number(i) + Number(1));
				$(".productTypeDiv")
						.append(
								"<div class=\"row clearfix addDivs\" id='productTypeDiv"+i+"'>"
										+ "<div class=\"col-sm-5 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<div class=\"form-line\">"
										+ "<input type=\"text\" class=\"form-control\"name=\"typeName\" id='typeName"+i+"' placeholder=\"Product Type Name\">"
										+ "</div>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-5 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<label for=\"comment\">Product Type Description</label>"
										+ "<textarea class=\"form-control textarea-add\" rows=\"5\" name=\"typeDescription\" id='typeDescription"+i+"'></textarea>"
										+ "</div>"
										+ "</div>"
										+ "<div class=\"col-sm-2 col-xs-12\">"
										+ "<div class=\"form-group\">"
										+ "<button type=\"button\" class=\"btn btn-raised gradient-left\" id=\"plusbtn\" onclick=\"addDiv()\">Add</button>"
										+ "<button type=\"button\" class=\"btn btn-raised gradient-left\" id=\"minusbtn\" onclick=\"removeProductTypeDiv('"
										+ i + "')\">Remove</button>"
										+ "</div>" + "</div>" + "</div>")
			} else {
				swal({
					title : 'Warning!',
					text : 'You can only add 10 Product type at a time!!!',
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
	function removeProductTypeDiv(removeId) {
		$("#productTypeDiv" + removeId).remove();
	}

	// On submit of the form
	$("#submit").click(function(event) {
		event.preventDefault();
		if ($("#categoryName").val() === "") {
			swal({
				title : 'Warning!',
				text : 'Please Select a Proper Category!!!',
				type : 'warning',
				confirmButtonText : 'OK',
				allowEscapeKey : true,
				confirmButtonClass : "btn btn-raised gradient-right",
				animation : true
			});
		} else if ($("#typeName").val() === "") {
			swal({
				title : 'Warning!',
				text : 'Please Enter Product Type Name!!!',
				type : 'warning',
				confirmButtonText : 'OK',
				allowEscapeKey : true,
				confirmButtonClass : "btn btn-raised gradient-right",
				animation : true
			});
		} else {
			var job = {};
			job["categoryId"] = $("#categoryName").val();
			job["editTypeId"] = $("#editTypeId").val();
			job["typeName"] = $("#typeName").val().substr( 0, 1 ).toUpperCase()+$("#typeName").val().substr( 1 ).toLowerCase().replace( / (.)/g, function($1) { return $1.toUpperCase(); });
			job["statusSelect"] = $("#statusSelect").val();
			if ($("#typeDescription").val() !== "") {
				job["typeDescription"] = $(
						"#typeDescription").val();
			}
			for (var k = 1; k <= Number(i); k++) {
				if (!(($("#typeName" + k).val() === undefined) && ($(
						"#typeDescription" + k).val() === undefined))) {
					if (k === Number(1)) {
						if ($("#typeDescription" + k).val() != "") {
							job["otherTypeDetails"] = $(
									"#typeName" + k).val()
									+ ","
									+ $(
											"#typeDescription"
													+ k)
											.val();
						} else {
							job["otherTypeDetails"] = $(
									"#typeName" + k).val()
						}

					} else {
						if ($("#typeDescription" + k).val() != "") {
							job["otherTypeDetails"] = job["otherTypeDetails"]
									+ "_"
									+ $("#typeName" + k)
											.val()
									+ ","
									+ $(
											"#typeDescription"
													+ k)
											.val();
						} else {
							job["otherTypeDetails"] = job["otherTypeDetails"]
									+ "_"
									+ $("#typeName" + k)
											.val()
						}

					}
				}

			}
			//alert(JSON.stringify(job));
			$("#submit").prop("disabled", true);
			$.ajax({
				type : "POST",
				url : "admin-addEditProductType",
				data : JSON.stringify(job),
				processData : false,
				contentType : "application/json",
				success : function(data) {
					swal({
						title : 'Success!',
						text : 'Product Type Successfully Inserted!!!',
						type : 'success',
						confirmButtonText : 'DONE',
						confirmButtonClass : "btn btn-raised gradient-left",
						allowEscapeKey : true,
						timer : 2000,
						animation : true
					});

					$("#submit").prop("disabled", false);
				},
				error : function(e) {
					//alert("Error");
					swal({
						title : 'Error!',
						text : 'Unable to Insert Product Type!!!',
						type : 'error',
						confirmButtonText : "OK",
						allowEscapeKey : true,
						confirmButtonClass : "btn btn-raised gradient-right",
						animation : true
					});
					$("#submit").prop("disabled",false);

				},
				complete : function() {
					//Removing all the values after successful submission of the form
					$("#categoryName").val("");
					$("#typeName").val("");
					$("#typeDescription").val("");
					$("#editTypeId").val("0");
					for (var k = 1; k <= Number(i); k++) {
						removeProductTypeDiv(Number(k));
					}
					$("#plusbtn").attr("disabled",
							false);
					$("#productTypeStatus").val("");
					$("#productTypeStatusDiv").attr("style", "");
					defaultCategoryList(true, "Category Id", "Category Name");
					fetchAllProductTypes();
				}
			});

		}
	});

	function defaultCategoryList(isInComplete, categoryId, categoryName){
		// Removing the values from the category list
		var abc ="";
		if(isInComplete){
				abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Category Name--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Category Name"
					+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">";
				abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"
					+ 0
					+ "','Category Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Category Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>";
		}else{
						
				abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\""+categoryName+"\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">"+categoryName
					+ "</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
		}
		var cde = "";
		for (var i = 0; i < ary.length; i++) {
			var splittedArray = ary[i].split("_");
			var classSelected = ""
			if(!isInComplete){
				if(Number(splittedArray[0]) === categoryId){
					classSelected = "class = selected";
					$("#categoryName").val(categoryId);
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
					cde = cde + "<li data-original-index=\"0\" id=\"li0\" onclick=\"clickLi('"+ 0+ "','Category Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Category Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>";
				}
		}
		cde = cde + "</ul></div>"
		
		$("#categoryDiv").html(abc + cde);
	}
		
	function fetchAllProductTypes() {
		$.ajax({
			type : "GET",
			url : "admin-fetchAllProductTypes",
			data : "",
			processData : false,
			contentType : "application/json",
			success : function(data) {
				if (data.status) {
					$("#productTypeTable > tbody").html("");
					var abc = "";
					for (var i = 0; i < data.listAllProductTypes.length; i++) {
						var typeDescription;
						if (data.listAllProductTypes[i].typeDescription !== null) {
							typeDescription = data.listAllProductTypes[i].typeDescription;
						} else {
							typeDescription = "---";
						}
						var isActive;
						if (data.listAllProductTypes[i].status) {
							isActive = "Yes";
						} else {
							isActive = "No";
						}
						abc = abc
								+ "<tr><td class=\"text-center\">"
								+ Number(Number(i) + Number(1))
								+ "</td>"
								+ "<td class=\"text-center\">"
								+ data.listAllProductTypes[i].id
								+ "</td>"
								+"<td class=\"text-center\">"
								+data.listAllProductTypes[i].categoryAvailable.categoryName
								+"</td>"
								+ "<td class=\"text-center\">"
								+ data.listAllProductTypes[i].typeName
								+ "</td>"
								+ "<td class=\"text-center\">"
								+ typeDescription
								+ "</td>"
								+ "<td class=\"text-center\">"
								+ isActive
								+ "</td>"
								+ "<td class=\"text-center\"><a href=\"#\" onclick=\"editProductTypeById('"
								+ data.listAllProductTypes[i].id
								+ "')\"title=\"Edit\"><i class=\"fa fa-pencil-square-o  editIcon\" aria-hidden=\"true\"></i></a><a href=\"#\" title=\"Delete\"><i class=\"material-icons deleteIcon\" style=\"margin-top:-18%;\">delete_sweep</i> <span class=\"icon-name\"></span></a></td></tr>"
					}
					$("#productTypeTable > tbody").html(abc);
				}
			},
			error : function(e) {
				//alert("Error");
				swal({
					title : 'Error!',
					text : 'Unable to Fetch All Product Type!!!',
					type : 'error',
					confirmButtonText : "OK",
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}
		});

	}
	function editProductTypeById(productTypeId) {
		$.ajax({
			type : "GET",
			url : "admin-fetchProductTypeById?id=" + productTypeId,
			data : "",
			processData : false,
			contentType : "application/json",
			success : function(data) {
				//alert(Number(data.productType.categoryAvailable.id));
				clearForm();
				defaultCategoryList(false,Number(data.productType.categoryAvailable.id),data.productType.categoryAvailable.categoryName);
				$("#typeName").val(data.productType.typeName);
				if (data.productType.typeDescription !== null) {
					$("#typeDescription").val(
							data.productType.typeDescription);
				}
				$("#plusbtn").attr("disabled", true);
				$("#productTypeStatusDiv").attr("style", "display:block");
				var isActive;
				if (data.productType.status) {
					isActive = "Active";
				} else {
					isActive = "Inactive";
				}
				productTypeStatus(isActive);
				$("#editTypeId").val(data.productType.id);
			},
			error : function(e) {
				swal({
					title : 'Error!',
					text : 'Unable to Fetch Product Type!!!',
					type : 'error',
					confirmButtonText : "OK",
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});

			}
		});
	}

	function productTypeStatus(isActive) {
		$("#statusSelect").val(isActive);
		var clicked;
		if (isActive === "Active") {
			clicked = "<li data-original-index=\"1\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"ProductTypeStatus('Active')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+ "<li data-original-index=\"2\" ><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"productTypeStatus('Inactive')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+ "</ul></div>"
		} else {
			clicked = "<li data-original-index=\"1\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"productTypeStatus('Active')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+ "<li data-original-index=\"2\" class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"productTypeStatus('Inactive')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+ "</ul></div>"
		}

		var mno = "<div class=\"form-group drop-custum\">"
				+ "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"productStatus\" title=\""+isActive+"\"><span class=\"filter-option pull-left\">"
				+ isActive
				+ "</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
				+ "<ul class=\"dropdown-menu inner\" role=\"menu\">"
				//+ "<li data-original-index=\"0\" class=\"\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Product Type Status --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+ clicked + "</div>"
		$("#productTypeStatusDiv").html(mno);
	}
	</script>
	
	<div class="color-bg"></div>
	<%@ include file="admin-includeFooter.jsp"%>
	
</body>
</html>
