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
	<!-- <div class="modal fade" id ="testModal" tabindex="-1" role="dialog">
	  <div class="modal-dialog" role="document">    
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">Modal title</h4>
	      </div>
	      <div class="modal-body">
	        <p>One fine body&hellip;</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div>
	  </div>
	</div> -->
	<!-- /.modal -->
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
                                <div class="row clearfix">
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Flower Name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Seller ID">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Flower ID">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="row clearfix">
                                    <div class="col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Seller ID">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Flower ID">
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                                <div class="row clearfix">
                                    <div class="col-sm-8 col-xs-12">
                                        <div class="form-group">
                                            <label for="comment">Flower Description</label>
                                            <textarea class="form-control textarea-add" rows="6"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                    	<br>
                                       	<div class="form-group div-center hundred-width" id="occasionDiv">
											<select class="form-control show-tick">
												<option value="">-- Occasion --</option>
											</select>
										</div>
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
                                    <div class="col-sm-4 col-xs-12">
                                    	<div class="col-sm-9 col-xs-9">
	                                        <div class="form-group drop-custum">
	                                       		<select class="form-control show-tick" id ="colorSelect" >
	                                               <option value="">-- Color --</option>
	                                               <option value="Multicolor">Multicolor</option>
	                                               <option value="ChooseColor">Choose Color</option>
	                                            </select>
	                                        </div>
                                        </div>
                                        <div class="col-sm-3 col-xs-3">
									         <div class = "form-group thumbnail" style='background-color: #71ca01; padding: 22px;'></div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="No. of Pieces">
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Freebie">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix form-group">
                                    <!-- <div class="header margin-left-right-zero marginb15">
                                    	<h2>Flower Image Files </h2>
                                	</div> -->
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
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
									
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
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
                                    <!-- <div class="col-sm-4 col-xs-12 flowerday-hr">
                                        <label for="comment" class="pull-left dropdown-sub-title">Delivery Time</label>
                                        <div class="col-sm-6 col-xs-12 padding-left">
                                            <div class="form-group drop-custum">
                                                <select class="form-control show-tick">
                                                    <option value="">-- Day --</option>
                                                    <option value="10">XXX</option>
                                                    <option value="20">XXXX</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-xs-12 padding-left">
                                            <div class="form-group drop-custum">
                                                <select class="form-control show-tick">
                                                    <option value="">-- Hours --</option>
                                                    <option value="10">XXX</option>
                                                    <option value="20">XXXX</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-xs-12 padding-left">
                                            <div class="form-group drop-custum">
                                                <select class="form-control show-tick">
                                                    <option value="">-- Availabiliy  --</option>
                                                    <option value="10">XXX</option>
                                                    <option value="20">XXXX</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div> -->
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group drop-custum">
                                            <select class="form-control show-tick">
                                                <option value="">-- Free Product --</option>
                                                <option value="10">XXX</option>
                                                <option value="20">XXXX</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="No. of Pieces">
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Advance Payment percentage">
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
											</div>
										</div>
									</div>
									<div class="row clearfix hideDiv" id="pricing1">
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
									<div class="row clearfix hideDiv" id="pricing2">
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
                                    <div class="header marginb15">
                                        <h2>Cancellation Policy </h2>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-md-12 margin-top15">
                                        <label for="comment" class="pull-left dropdown-sub-title">No. of Days/Hours before the order...</label>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group drop-custum">
                                            <select class="form-control show-tick">
                                                <option value="">-- Days --</option>
                                                <option value="10">XXX</option>
                                                <option value="20">XXXX</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group drop-custum">
                                            <select class="form-control show-tick">
                                                <option value="">-- Hours --</option>
                                                <option value="10">XXX</option>
                                                <option value="20">XXXX</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Cancellation Percentage">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <button class="g-bg-blush2 pull-right add-new">
                                            <i class="fa fa-plus"></i> Add
                                        </button>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-xs-12">
                                    	<input type = "hidden" name = "typeName" id = "typeName" value = "">
                                    	<input type = "hidden" name = "occasionName" id = "occasionName" value="">
                                        <button type="submit" class="btn btn-raised gradient-right">Submit</button>
                                        <button type="submit" class="btn btn-raised gradient-left">Cancel</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
    </section>
	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script src="resources/js/sweetalert.min.js"></script>
	<script src="resources/js/bootstrap-colorpicker.min.js"></script>
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
    
    <!-- Jquery Js --> 
    
    <script type="text/javascript">
    
     $(document).ready(function(){
		fetchAllFlowerType();
		fetchAllOccasion();
		
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
						//alert("in success");
						var arValue = "";
						while(typeArr.length > 0){
							typeArr.pop();
						}
						var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Flower Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Flower Type--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
								+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
								+"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"+0+"','Flower Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">--Flower Type--</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						var cde = "";		
								for(var i = 0; i<data.listAllProductTypes.length && data.listAllProductTypes[i].status; i++){	
									cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' id='li"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"+Number(Number(i)+Number(1))+"','"+data.listAllProductTypes[i].typeName+"','"+data.listAllProductTypes[i].id+"')\"><span class=\"text\" title=\""+data.listAllProductTypes[i].typeDescription+"\">"+data.listAllProductTypes[i].typeName+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
									arValue = data.listAllProductTypes[i].id+"_"+data.listAllProductTypes[i].typeName;
									typeArr.push(arValue);
								}
							cde = cde +"</ul></div>"
							$("#flowerTypeDiv").html(abc + cde);
					}

				},
				error : function(e) {
					//alert("Error");
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
		//alert("in ClickLi");
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

							$("#flowerTypeDiv").html(abc + cde);
			}
	}
 
	$("#colorSelect").change(function(){
		alert(this.value);
		if(this.value === "ChooseColor"){
			$('#colorSelect').colorpicker({});
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
								+ data.listAllOccasion[i].name;
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
		$("#occasionName").val(id); //Hidden field to store the Occasion Id
		if(title === 'Occasion')
		{
			title = "--"+title+"--";
		}
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
							+ "')\"><span class=\"text\">"
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
							+ "')\"><span class=\"text\">"
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
						+ "')\"><span class=\"text\">"
						+ splittedArray[1]
						+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"

			}
			cde = cde + "</ul></div>"

			$("#occasionDiv").html(abc + cde);
		}
	}
	
	</script>
    <div class="color-bg"></div>
    <%@ include file="admin-includeFooter.jsp" %>
</body>
</html>
