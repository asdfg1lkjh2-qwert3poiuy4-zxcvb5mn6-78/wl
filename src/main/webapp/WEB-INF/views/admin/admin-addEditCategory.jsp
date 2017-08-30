<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Category</title>

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
				<h2>Add Category</h2>
				<small class="text-muted">Welcome to Wedlock application</small>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>Category Details</h2>
						</div>
						<div class="body">
							<div class="row clearfix">
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="categoryName"
												id="categoryName" placeholder="Category Name">
										</div>
									</div>
								</div>
								<div class="col-sm-2 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox labelPadding"> <input type="checkbox"
													name="halfYearly" id="halfYearly">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Half Yearly Plan
												</label> 
											</div>
										</div>
									</div>
								<!-- <div class="col-sm-3 col-xs-12 padding-left" id="packageDiv">
									<div class="form-group drop-custum">
										<select class="form-control show-tick" name="packageFor"
											id="packageFor">
											<option value="1">-- Package For --</option>
											<option value="HalfYearly">Half Yearly</option>
											<option value="Yearly">Yearly</option>
										</select>
									</div>
								</div> -->
								<div class="col-sm-2 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
												name="halfYearlyCharge" id="halfYearlyCharge"
												placeholder="Registration Charge">
										</div>
									</div>
								</div>
								<div class="col-sm-2 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox labelPadding"> <input type="checkbox"
													name="annual" id="annual">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Annual Plan
												</label> 
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
												name="annualCharge" id="annualCharge"
												placeholder="Registration Charge">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<label for="comment">Category Description</label>
										<textarea class="form-control textarea-add" rows="5"
											name="categoryDescription" id="categoryDescription"></textarea>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control"
												name="categoryUrl" id="categoryUrl"
												placeholder="Category Url">
										</div>
										<br>
										<div class="form-line">
											<input type="text" class="form-control"
												name="categoryTableName" id="categoryTableName"
												placeholder="Original Table Name">
										</div>
									</div>
								</div>
								<div class="col-sm-5 col-xs-12">
									<div class="form-group catgroup">
										<label class="catgroup-label">Category Icon</label>
									</div>
									<div
										class="col-lg-12 col-md-12 col-sm-6 col-xs-6 _categoryIcon">
										<form action="#" id="singleUpload" class="dropzone"
											method="post" enctype="multipart/form-data">
											<div class="dz-message catdzmsg">
												<div class="drag-icon-cph">
													<i class="material-icons catdzicn">touch_app</i>
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
								<div class="col-xs-12">
								<input type="hidden" value="${sessionScope.firstLogin}" id="firstLogin">
								<input type="hidden" name="editCategoryId" id="editCategoryId" value="0">
								<input type="hidden" name="packageClick" id="packageClick" value="">
								<input type="hidden" name="defaultIconFile" id="defaultIconFile" value="">
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
							<h2>All Listed Categories</h2>
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
								class="table table-bordered table-striped table-hover js-basic-example dataTable" id="categoryTable">
								<thead>
									<tr>
										<th class="text-center">Sl.No</th>
										<th class="text-center">Category Id</th>
										<th class="text-center">Category Name</th>
										<th class="text-center">Category Icon</th>
										<th class="text-center">Registration Charge (HalfYearly/Annually)</th>
										<th class="text-center">Category Url</th>
										<th class="text-center">Database Table Name</th>
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

	<div class="color-bg"></div>

	<!-- Dropzone Plugin Js  -->

	<!--jquery-2.1.3.min Library Js -->

	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script src="resources/js/dropzone.js"></script>
	<script src="resources/js/sweetalert.min.js"></script>
	
	<%@ include file="admin-includeDynamicSideNavBar.jsp" %>
	<%@ include file="admin-includeDynamicSideNavBarFromSession.jsp" %>
	<script type="text/javascript">
		       
		var file1="";	 //For storing the unwanted files being uploaded in the server and not in the database
		var dateTime = new Date().getTime();    //For getting the current time in milli seconds
		var checkSubmit= 0;     //Marker to check whether the page is refreshed or not
		var isEdit = 0
		
		//Upload and renaming the files being uploaded in dropzone.js
			Dropzone.options.singleUpload = {
					url : "singleUpload",
					init : function() {
						this.on("success", function(file, response) {
							var a = this.element.classList+"";
							a = a.split("_");
							a = $("form." + "_" + a[1]).parent().attr("class");
							a = a.split("_");
							if(file1 === "" ){
								if(isEdit === Number(1)){
									file1 = "Category"+"_"+a[1]+"_"+$("#defaultIconFile").val(); 
								}else{
									file1 = "Category"+"_"+a[1]+"_"+dateTime+file.name;
								}
								 
							}else{
								file1 = file1+","+"Category"+"_"+a[1]+"_"+dateTime+file.name;
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
							return "Category" + "_"+ dateTime+classpath[0];
						}
					}
					
				};
		
	
		
		//For submit
		$("#submit").click(function() {
			 if (file1 !== "") {
				if($("#categoryName").val() === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Category Name!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if((!$("#halfYearly").is(":checked") && $("#halfYearlyCharge").val() !=="") || (!$("#halfYearly").is(":checked"))){
					swal({
						  title: 'Warning!',
						  text: 'Please Select Half Yearly Plan!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if(($("#halfYearlyCharge").val() === "" && $("#halfYearly").is(":checked")) || ($("#halfYearlyCharge").val() === "")){
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Registration Charge For Half Yearly Plan!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if(($("#annual").val() === "") && ($("#annualCharge").val() !== "")){
					swal({
						  title: 'Warning!',
						  text: 'Please Select Annual Plan!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if(($("#annualCharge").val() === "") && ($("#annual").is(":checked"))){
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Registration Charge For Annaul Plan!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else if($("#categoryDescription").val() === ""){
					swal({
						  title: 'Warning!',
						  text: 'Please Enter Category Description!!!',
						  type: 'warning',
						  confirmButtonText: 'OK',
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});
				}else{
				var job = {};
				job["categoryName"] = $("#categoryName").val();
				job["editCategoryId"] = $("#editCategoryId").val();
				if($("#categoryDescription").val() !==""){
					job["categoryDescription"] = $("#categoryDescription").val();
				}
				job["halfYearly"] = $("#halfYearly").prop("checked") ? true : false;
				alert($("#halfYearlyCharge").val());
				job["halfYearlyCharge"] = $("#halfYearlyCharge").val();
				if($("#annual").is(":checked")){
					job["annual"] = true;
					job["annualCharge"] = $("#annualCharge").val();
				}else{
					job["annual"] = false;
					job["annualCharge"] = 0.00;
				}
				if($("#categoryTableName").val() !== ""){
					job["tableName"] = $("#categoryTableName").val();	
				}
				job["allFiles"] = file1; 
				alert(JSON.stringify(job));
				  $.ajax({
					type : "POST",
					url : "admin-addEditCategoryAvailable",
					data : JSON.stringify(job),
					contentType : "application/json",
					processData : false,
					success : function(data) {
						swal({
							  title: 'Success!',
							  text: 'Category Successfully Inserted!!!',
							  type: 'success',
							  showConfirmButton :false,
							  allowEscapeKey:true,
							  timer:3000,
							  animation:true
							});
					},
					error : function(e) {
						alert("Error");
						swal({
							  title: 'Error!',
							  text: 'Category Not Inserted Successfully!!!',
							  type: 'error',
							  confirmButtonText :"OK",
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
					},complete : function (){
						//For removing all data from textboxes after successful insertion
						fetchSideNavBar();
						$("#categoryName").val("");
						$("#halfYearly").prop("checked",false);
						$("#halfYearlyCharge").val("");
						if($("#annual").is(":checked")){
							$("#annual").prop("checked",false);
						}
						$("#annualCharge").val("");
						$("#categoryTableName").val("");
						$("#categoryDescription").val("");
						$("#categoryUrl").val("");
						$("#editCategoryId").val("0");
						file1 = "";
						$("#defaultIconFile").val("");
						fetchAllCategories();
						dateTime ="";
						dateTime = new Date().getTime();    //Creating a new date time for another file to upload
						
						//Remove the thumbnails after each insertion being completed from dropzone.js
						$('.dropzone')[0].dropzone.files.forEach(function(file) { 
							  file.previewElement.remove(); 
							 
							});
						
						 $('.dropzone').removeClass(' dz-started ');
						checkSubmit = 1;
							
					}
				});  
			  }
			 }   else {
				swal({
					  title: 'Warning!',
					  text: 'Please Upload Category Icon!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			} 
		});
		
		$(document).ready(function (){
			fetchAllCategories();
		});
		
		function fetchAllCategories(){
			$.ajax({
				type : "GET",
				url : "admin-fetchAllCategoryAvailbleForDatatable",
				data : "",
				processData : false,
				contentType :"application/json",
				success : function(data) {
					if(data.status){
						$("#categoryTable > tbody").html("");
						var abc ="";
						for(var i = 0; i< data.categoryAvailables.length; i++){
							var url = "<img src=\"getImage?id="+ data.categoryAvailables[i].iconFile+ "\" class=\"img-responsive\" height=\"60\" width=\"60\">"
							var active;
							if(data.categoryAvailables[i].active){
								active = "Yes";
							}else{
								active = "No";
							}
							var categoryUrl;
							if(data.categoryAvailables[i].categoryUrl !=null){
								categoryUrl = data.categoryAvailables[i].categoryUrl;
							}else{
								categoryUrl = "---";
							}
							
							var price;
							if(data.categoryAvailables[i].annualCharge !== Number(0.00)){
								price = data.categoryAvailables[i].annualCharge;
							}
							var tableName = "";
							if(data.categoryAvailables[i].tableName !== null){
								tableName = data.categoryAvailables[i].tableName;
							}else{
								tableName = "---";
							}
							abc = abc +"<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
							+"<td class=\"text-center\">"+data.categoryAvailables[i].id+"</td>"
							+"<td class=\"text-center\">"+data.categoryAvailables[i].categoryName+"</td>"
							+"<td class=\"text-center\">"+url+"</td>"
							+"<td class=\"text-center\">"+data.categoryAvailables[i].halfYearlyCharge +"/"+price+"</td>"
							+"<td class=\"text-center\">"+categoryUrl+"</td>"
							+"<td class=\"text-center\">"+tableName+"</td>"
							+"<td class=\"text-center\">"+active+"</td>"
							+"<td class=\"text-center\"><a href=\"#\" onclick=\"editCategoryById('"+data.categoryAvailables[i].id+"')\" title=\"Edit\"><i class=\"fa fa-pencil-square-o fa-2x\" aria-hidden=\"true\"></i></a><a href=\"\" title=\"Delete\"><i class=\"fa fa-trash fa-2x\" aria-hidden=\"true\"></i></a></td></tr>"
						}
						$("#categoryTable > tbody").html(abc);
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
		
		 function editCategoryById(categoryId){
			$.ajax({
				type : "GET",
				url : "admin-fetchCategoryAvailableById?id="+categoryId,
				data : "",
				processData : false,
				contentType :"application/json", 
				success : function(data) {
					isEdit = 1;
					//defaultStateList(false,Number(data.zipCode.stateId),data.zipCode.stateName,Number(data.zipCode.cityId),data.zipCode.cityName);
					$("#categoryName").val(data.categoryAvailable.categoryName);
					$("#halfYearly").prop("checked",true);
					$("#halfYearlyCharge").val(data.categoryAvailable.halfYearlyCharge);
					if($("#annualCharge").val(data.categoryAvailable.annualCharge) !== Number(0.00)){
						$("#annual").prop("checked",true);
						$("#annualCharge").val(data.categoryAvailable.annualCharge);
					}
					
					
					$("#categoryDescription").val(data.categoryAvailable.categoryDescription); 
					if(data.categoryAvailable.tableName !== null){
						$("#categoryTableName").val(data.categoryAvailable.tableName);
					}
					$("#categoryUrl").val(data.categoryAvailable.categoryUrl);
					$("#editCategoryId").val(data.categoryAvailable.id);
					
					var editImage = data.categoryAvailable.iconFile;
					editImage = editImage.split("/");
					$("#defaultIconFile").val(editImage[2]);
					Dropzone.forElement("#singleUpload").destroy();
					 var file = {
						    name: editImage[2],
						    size: 60096,
						    status: Dropzone.ADDED,
						    accepted: true
						    
						};
						var myDropzone = new Dropzone("#singleUpload",{clickable:false})
						myDropzone.emit("addedfile", file);  
						myDropzone.emit("thumbnail", file, "getImage?id="+data.categoryAvailable.iconFile);
						myDropzone.emit("processing",file);
						myDropzone.emit("success",file);
						myDropzone.emit("complete", file);
						myDropzone.files.push(file);
						
					
				},
				error : function(e) {
					swal({
						  title: 'Error!',
						  text: 'Category Not Fetched Successfully!!!',
						  type: 'error',
						  confirmButtonText :"OK",
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});

				},complete:function (){
					isEdit = 0;
				}
		}); 
		}
		
	</script>
	<%@ include file="admin-includeFooter.jsp"%>
	
</body>
</html>