<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Profile</title>
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css">
 <%@ include file="admin-includeHeader.jsp"%>
 </head>
<body class="theme-blush">
<!-- Test Modal -->
	<div id="addressProofModals">
	</div>
	<div id="idProofModals">
	</div>
	<div id="sellerImageModals">
	</div>
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
                <button type="button" class="btn btn-raised gradient-right bg-pink waves-effect" id="upgradeService">UPGRADE</button>
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
	<section class="content profile-page">
	<div class="container-fluid">
        <div class="row clearfix">
            <div class="col-md-12 p-l-0 p-r-0">
                <section class="boxs-simple">
                    <div class="profile-header">
                        <div class="profile_info">
                            <div class="profile-image"> <img src="<c:out value="getImage?id=${sessionScope.sellerDetailsSession.sellerImg}"/>" class="img-responsive" alt="User Image"> </div>
                            <h4 class="mb-0"><strong>${sessionScope.sellerDetailsSession.sellerFirstName} </strong> ${sessionScope.sellerDetailsSession.sellerLastName}</h4>
                            <span class="text-muted col-white">${sessionScope.sellerDetailsSession.typeOfSeller}  Account</span>
                        </div>
                    </div>
                    <div class="profile-sub-header">
                        <div class="box-list">
                            <ul class="text-center">
                                <li class="active"> <a href="#myProfile" class="" data-toggle="tab"><i class="material-icons">account_circle</i> <span class="icon-name"></span>
                                    <p>Profile</p>
                                    </a> </li>
                                <li> <a href="#gallery" class="" data-toggle="tab"><i class="zmdi zmdi-camera"></i>
                                    <p>Gallery</p>
                                    </a> </li>
                                <li> <a href="#services" data-toggle="tab"><i class="zmdi zmdi-attachment"></i>
                                    <p>Services</p>
                                    </a> </li>
                                <li> <a href="#bankAccounts" data-toggle="tab"><i class="material-icons">account_balance_wallet</i> <span class="icon-name"></span>
                                    <p>Bank Accounts</p>
                                    </a> </li>
                            </ul>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="tab-content">
							<div class="tab-pane active" id="myProfile">
								<div class="card">
									<div class="header">
										<h2>About Me</h2>
									</div>
								<div class="body">	
								<div class="row clearfix">
								<div class="col-sm-3 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerFirstName" id="sellerFirstName"
												placeholder="Seller First Name" value="${sessionScope.sellerDetailsSession.sellerFirstName}" disabled="disabled">
										</div>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerLastName" id="sellerLastName"
												placeholder="Seller Last Name" value="${sessionScope.sellerDetailsSession.sellerLastName}" disabled="disabled">
										</div>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerId" id="sellerId"
												placeholder="Seller Last Name" value="${sessionScope.sellerDetailsSession.id}" disabled="disabled">
										</div>
									</div>
								</div>
								<div class="col-sm-3 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerContactNumber" id="sellerContactNumber"
												placeholder="Seller Contact Number" value="${sessionScope.sellerDetailsSession.sellerContactNumber}">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerAlternateNumber" id="sellerAlternateNumber"
												placeholder="Seller Alternate Number" value="${sessionScope.sellerDetailsSession.sellerAlternateNumber}">
										</div>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerEmailId" id="sellerEmailId"
												placeholder="Seller Email Id" value="${sessionScope.sellerDetailsSession.sellerEmailId}" disabled="disabled">
										</div>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerPassword" id="sellerPassword"
												placeholder="Seller Password" value="${sessionScope.sellerDetailsSession.sellerPassword}">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-12">
									<div class="form-group">
									<label for="comment">Seller Present Address</label>
											<textarea rows="4" class="form-control textarea-add no-resize" name ="sellerPresentAddress" id="sellerPresentAddress">${sessionScope.sellerDetailsSession.sellerPresentAddress}</textarea>
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
											<textarea rows="4" class="form-control textarea-add no-resize" name="sellerPermanentAddress" id="sellerPermanentAddress" disabled="disabled">${sessionScope.sellerDetailsSession.sellerPermanentAddress}</textarea>
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
									<div class="form-group drop-custum" id="cityDiv" >
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
												placeholder="Zip Code" value="${sessionScope.sellerDetailsSession.zipCode.zipCode}" disabled="disabled">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="datepicker form-control" name="sellerDateOfBirth" id="sellerDateOfBirth"
												placeholder="Date of Birth" disabled="disabled">
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
												placeholder="Seller Company Name" value="${sessionScope.sellerDetailsSession.sellerCompanyName}" disabled="disabled">
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
							<div class="row clearfix" style="margin-top:3%;">
								<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 _addressProof" id="displayDiv1">
								<label for="addressProof" style="margin-left: 5%;">Address Proof Image</label>
								<div id="addressProofDisplayDiv"></div>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 _idProof" id="displayDiv2">
								<label for="idProof" style="margin-left: 5%;">Id Proof image</label>
								<div id="idProofDisplayDiv"></div>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 _sellerImage" id="displayDiv3">
								<label for="sellerImage" style="margin-left: 5%;">Display Image</label>
								<div id="sellerImageDisplayDiv"></div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-xs-12" style="margin-bottom: -3%;">
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
										id="profileSubmit">Submit</button>
									<button type="submit" class="btn btn-raised gradient-left">Cancel</button>
								</div>
							</div>
						</div>
					</div>
                 </div>
						<div class="tab-pane" id="bankAccounts">
							<div class="card">
								<div class="header">
									<h2>Bank Account Details</h2>
								</div>
								<div class="body">
									<c:if test="${empty sessionScope.sellerDetailsSession.sellerBankDetails}">
										<div class="row clearfix">
										<div class="col-sm-12 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="alert bg-teal alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            			No Bank Details added till now. Please Add Bank Detail Below For Further Transaction. Note that the bank details will be verified before it is been added to your profile details. 
											</div>
										</div>
									</div>
											
										</div>
									</c:if>
									<div class="row clearfix">
									  <div class="col-sm-6 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="form-control" name="accountHolderName" id="accountHolderName"
													placeholder="Account Holder Name" value="${sessionScope.sellerDetailsSession.sellerBankDetails.accountHolderName}">
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="form-control" name="accountNumber" id="accountNumber"
													placeholder="Account Number" value="${sessionScope.sellerDetailsSession.sellerBankDetails.accountNumber}">
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-sm-6 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="ifscCode" id="ifscCode"
													placeholder="IFSC Code" value="${sessionScope.sellerDetailsSession.sellerBankDetails.ifscCode}">
											</div>
										</div>
									</div>
									<div class="col-sm-6 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="branchCode" id="branchCode"
													placeholder="Branch Code" value="${sessionScope.sellerDetailsSession.sellerBankDetails.branchCode}">
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
									<div class="col-sm-6 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="branchName" id="branchName"
													placeholder="Branch Name" value="${sessionScope.sellerDetailsSession.sellerBankDetails.branchName}">
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
								<div class="col-xs-12" style="margin-bottom: -3%;">
								<button type="submit" class="btn btn-raised gradient-right"
										id="submitBankDetails">Submit</button>
									<button type="submit" class="btn btn-raised gradient-left">Cancel</button>
								</div>
								</div>
								</div>
							</div>
						</div>
						<div class="tab-pane " id="services">
							<div class="card">
								<div class="header">
									<h2>Services</h2>
								</div>
								<div class="body">
								<div class="row clearfix">
									<label for="serviceTaken" style="margin-left: 5%;">Service Taken</label>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 main-service-section" id="serviceTakenDiv"></div></div>
									<script src="resources/js/jquery-2.1.3.min.js"></script>
									<script type="text/javascript">
									var i = Number(0);
									$("#serviceTakenDiv").html("");
									var paidService = "";
									</script>
									<c:forEach items="${sessionScope.sellerDetailsSession.serviceTaken}" var="serviceTaken">
									<c:forEach items="${sessionScope.categorySession}" var="categoryList">
                                    <script type="text/javascript">
                                    var categoryId = "${categoryList.id}";
                                    var categoryTakenCategoryId = "${serviceTaken.categoryAvailable.id}";
                                    if(categoryId === categoryTakenCategoryId){
                                    	paidService = "${categoryList.paidServiceTaken}";
                                    } 
                                    </script>
									</c:forEach>
									<script type="text/javascript">
									 var abc = "";
									 var planTaken;
									
									 if("${serviceTaken.annually}" === "true"){
										 planTaken = "Annual";
									 }else{
										 planTaken = "HalfYearly";
									 }
									 var divViewModal = "";
									 if(paidService === "Yes"){
										 divViewModal ="<div class=\"view view-eighth\" id='serviceTaken"+Number(Number(i) + Number(1))+"' >";
				                      }else{
				                    	  divViewModal ="<div class=\"view view-eighth\" id='serviceTaken"+Number(Number(i) + Number(1))+"' onclick=\"serviceClicked('"+Number(Number(i) + Number(1))+"','${serviceTaken.categoryAvailable.id}')\"  onmouseover=\"serviceTakenClickedMouseOver('"+Number(Number(i) + Number(1))+"')\" onmouseleave=\"serviceTakenClickedMouseLeave('"+Number(Number(i) + Number(1))+"')\">"
				                      }
									  abc = abc + divViewModal
				                      +"<div class=\"service-modal-image\">"
				                      +"<img src=\"resources/images/16.jpg\" class=\"img-responsive\" alt=\"\">"
				                      +"<div class=\"flower-position\">"
				                      +"<span><img src=\"images/flower-ico.png\" alt=\"\"></span>"
				                      +"<label>"+"${serviceTaken.categoryAvailable.categoryName}"+"</label>"
				                      +"</div>"                                                              
				                      +"</div>"
				                      +"<div id='serviceTakenPriceDetails"+Number(Number(i) + Number(1))+"' class=\"servicePriceDetails mask\">"
				                      +"<div class=\"pricemodal-details\">"
				                      +"<div class=\"serviceHalfYearly\">"
				                      +"<span>Half-yearly</span>"
				                      +"<p><i class=\"fa fa-inr\"></i>${serviceTaken.categoryAvailable.halfYearlyCharge}</p>"
				                      +"</div>"
				                      +"<div class=\"serviceAnually\">"
				                      +"<span>Annually</span>"
				                      +"<p><i class=\"fa fa-inr\"></i>${serviceTaken.categoryAvailable.annualCharge}</p>"
				                      +"</div>"
				                      +"</div>"
				                      +"<div class=\"serviceTakenChecked hideDiv\" id='serviceTakenCheckedId"+Number(Number(i) + Number(1))+"'>"
				                      +"<p>Package Taken : "+planTaken+" <a href=\"#\" title=\"View Package Details\" data-toggle=\"modal\" data-target=\"#smallModal\" onclick=\"packageDetailsModal('${serviceTaken.categoryAvailable.id}','${serviceTaken.categoryAvailable.categoryName}','${serviceTaken.startDate}','${serviceTaken.endDate}','${serviceTaken.annually}','${serviceTaken.id}','"+paidService+"','"+Number(Number(i) + Number(1))+"')\"><i class=\"material-icons\">view_list</i> <span class=\"icon-name\"></span></a></p>"
				                      +""
				                      +"</div>"
				                      +"</div>"
				                      +"</div>";
				                      
				                      $("#serviceTakenDiv").append(abc);
				                      if(paidService === "Yes"){
				                    	  serviceTakenClicked(Number(Number(i)+ Number(1)),"${serviceTaken.categoryAvailable.id}");
				                      }
				                      function serviceTakenClicked(id,categoryId){
				                  			if($("#serviceTakenPriceDetails"+id).hasClass("mask")){
				                  				$("#serviceTakenPriceDetails"+id).removeClass("mask");
				                  			}
				                  			$("#serviceTakenPriceDetails"+id).addClass('mask1');
				                  			$("#serviceTakenPriceDetails"+id).addClass("clicked");
				                  			$("#serviceTakenCheckedId"+id).removeClass("hideDiv");
				                  		}
				                      function serviceClicked(id,categoryId){
				                  		if($("#serviceTakenPriceDetails"+id).hasClass("clicked")){
				                  			$("#serviceTakenPriceDetails"+id).removeClass('mask1');
				                  			$("#serviceTakenPriceDetails"+id).removeClass("clicked");
				                  			$("#serviceTakenPriceDetails"+id).addClass("mask");
				                  			$("#serviceTakenCheckedId"+id).addClass("hideDiv");
				                  		}else{
				                  			if($("#serviceTakenPriceDetails"+id).hasClass("mask")){
				                  				$("#serviceTakenPriceDetails"+id).removeClass("mask");
				                  			}
				                  			$("#serviceTakenPriceDetails"+id).addClass('mask1');
				                  			$("#serviceTakenPriceDetails"+id).addClass("clicked");
				                  			$("#serviceTakenCheckedId"+id).removeClass("hideDiv");
				                  			$("#smallModal").modal('show');
					                  		packageDetailsModal('${serviceTaken.categoryAvailable.id}','${serviceTaken.categoryAvailable.categoryName}','${serviceTaken.startDate}','${serviceTaken.endDate}','${serviceTaken.annually}', '${serviceTaken.id}', paidService, id);
				                  		}
				                  	}
				                  	
				                  	function serviceTakenClickedMouseOver(id){
				                  		if(!$("#serviceTakenPriceDetails"+id).hasClass("clicked")){
				                  			$("#serviceTakenPriceDetails"+id).removeClass("mask");
				                  			$("#serviceTakenPriceDetails"+id).addClass('mask1');
				                  		}
				                  	}
				                  	
				                  	function serviceTakenClickedMouseLeave(id){
				                  		if($("#serviceTakenPriceDetails"+id).hasClass("mask1")){
				                  			if(!$("#serviceTakenPriceDetails"+id).hasClass("clicked")){
				                  				$("#serviceTakenPriceDetails"+id).removeClass("mask1");
				                  				$("#serviceTakenCheckedId"+id).addClass("hideDiv");
				                  				$("#serviceTakenPriceDetails"+id).addClass('mask');
				                  			}else{
				                  				$("#serviceTakenPriceDetails"+id).addClass('mask');
				                  			}
				                  		}
				                  	}
				                      i = Number(Number(i) + Number(1));
									</script>
									</c:forEach>
									<div class="row clearfix" style="margin-top: 5%;">
										<label for="serviceAvailableDiv" style="margin-left: 5%;">Service Available</label>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 main-service-section" id="serviceAvailableDiv"></div>
									</div>
									<div class="row clearfix">
										<div class="col-xs-12" style="margin-bottom: -3%; margin-left:3%;">
											<button type="button" class="btn btn-raised gradient-right"
												id="servicesSubmit">Submit</button>
											<button type="button" class="btn btn-raised gradient-left">Cancel</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
            </div>
        </div>
    </div>
	</section>
	<!-- main content -->
	<div class="color-bg"></div>
	<script src="resources/js/dropzone.js"></script>
	<!-- Dropzone Plugin Js  -->
	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script src="resources/js/sweetalert.min.js"></script>
	<script src="resources/js/basic-form-elements.js"></script> 
	<script src="resources/js/date.format.js"></script>
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>

	<script type="text/javascript">
	var addressProof = "";					//For retaining all the address Proof image files
	var idProof = "";                       //For retaining all the id Proof image files
	var sellerImage = "";	
	  $(document).ready(function(){
		 fetchAllCategories();
		 editDetails();
		 if(sessionStorage.getItem("checkSubmit") === "1"){
		 	$("#myProfile").removeClass("active");
		 	$('a[href="#myProfile"]').parent('li').removeClass('active');
		 	$("#services").addClass("active");
		 	$('a[href="#services"]').parent('li').addClass('active');
		 	sessionStorage.clear();
		  }
		});
	  
	function editDetails(){
		fetchAllState();
		
		var dob = "${sessionScope.sellerDetailsSession.sellerDateOfBirth}";
		dob = moment(dob,"dddd DD MMMM YYYY");
		dob = moment(dob).format("dddd DD MMMM YYYY");
		$("#sellerDateOfBirth").val(dob);
		 sellerGenderClick("${sessionScope.sellerDetailsSession.sellerGender}");
		 $("#sellerGenderClick").val("${sessionScope.sellerDetailsSession.sellerGender}");
		 var defaultAddressProof = "${sessionScope.sellerDetailsSession.sellerAddressProof}";
		 sellerAddressProofClick(defaultAddressProof);
		 $("#sellerAddressProofClick").val(defaultAddressProof);
		 sellerIdProofClick("${sessionScope.sellerDetailsSession.sellerIdProof}");
		 $("#sellerIdProofClick").val("${sessionScope.sellerDetailsSession.sellerIdProof}");
		 showAddressProofImageEdit("${sessionScope.sellerDetailsSession.sellerAddressProofImg}","${sessionScope.sellerDetailsSession.id}");
		 var editAddressProofImage ="${sessionScope.sellerDetailsSession.sellerAddressProofImg}";
		 editAddressProofImage = editAddressProofImage.split("/");
		 $("#defaultSellerAddressProofImg").val(editAddressProofImage[0]+"/"+editAddressProofImage[1]+"/"+editAddressProofImage[2]);
		 showIdProofImageEdit("${sessionScope.sellerDetailsSession.sellerIdProofImg}","${sessionScope.sellerDetailsSession.id}");
		 var editIdProofImage ="${sessionScope.sellerDetailsSession.sellerIdProofImg}";
		 editIdProofImage = editIdProofImage.split("/");
		 $("#defaultSellerIdProofImg").val(editIdProofImage[0]+"/"+editIdProofImage[1]+"/"+editIdProofImage[2]);
		 showSellerImageEdit("${sessionScope.sellerDetailsSession.sellerImg}","${sessionScope.sellerDetailsSession.id}");
		 var editSellerImage ="${sessionScope.sellerDetailsSession.sellerImg}";
		 editSellerImage = editSellerImage.split("/");
		 $("#defaultSellerImg").val(editSellerImage[0]+"/"+editSellerImage[1]+"/"+editSellerImage[2]);
		 if("${sessionScope.sellerDetailsSession.sellerPresentAddress}" === "${sessionScope.sellerDetailsSession.sellerPermanentAddress}"){
			 $("#checkBoxId").prop("checked",true);
			 $("#checkBoxId").addClass("isCheck");
		 }
		 $("#editSellerId").val("${sessionScope.sellerDetailsSession.id}");
		 if("${sessionScope.sellerDetailsSession.sellerBankDetails.accountHolderName}" !== ""){
			$("#editSellerBankDetailsId").val("${sessionScope.sellerDetailsSession.sellerBankDetails.id}"); 
		 }
	}  
	var sameLength = Number(0);
    function fetchAllCategories(){
		$.ajax({
			type : "GET",
			url : "admin-fetchAllCategoryAvailbleForDatatable",
			data : "",
			processData : false,
			contentType :"application/json",
			success : function(data) {
				if(data.status){
					var lengthServiceTaken = "${fn:length(sessionScope.sellerDetailsSession.serviceTaken)}";
					if(data.categoryAvailables.length !== Number(lengthServiceTaken)){
						$("#serviceAvailableDiv").html("");
						var abc = "";
						var check = Number(0);
						for(var i = 0; i< data.categoryAvailables.length; i++){
							<c:forEach items="${sessionScope.sellerDetailsSession.serviceTaken}" var="serviceTaken">
							var a = "${serviceTaken.categoryAvailable.id}";
							if(data.categoryAvailables[i].id === Number(a)){
								check = Number(1);
							}
							</c:forEach>
							if(check === Number(0)){
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
							}else{
								check = Number(0);
							}
						}
						$("#serviceAvailableDiv").html(abc);
					}else{
						$("#serviceAvailableDiv").removeClass("main-service-section");
						$("#serviceAvailableDiv").html("<div class=\"alert alert-success\" style=\" padding: 11px; margin-top: 1%;\">"
                            +"<strong>Congruations!!!</strong> You have availed all the services. There are no more services to show.</div>");
						sameLength = Number(1);
					}
					
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
					},complete : function(){
						defaultStateList(false,"${sessionScope.sellerDetailsSession.state.id}","${sessionScope.sellerDetailsSession.state.stateName}","${sessionScope.sellerDetailsSession.city.id}","${sessionScope.sellerDetailsSession.city.cityName}","${sessionScope.sellerDetailsSession.zipCode.id}","${sessionScope.sellerDetailsSession.zipCode.id}","${sessionScope.sellerDetailsSession.zipCode.localityName}");
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
							abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--City Name--\" aria-expanded=\"false\"  disabled = \"disabled\"><span class=\"filter-option pull-left\">--City Name--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
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
											if(Number(data.listAllCities[i].id) === Number(cityId)){
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
		var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--"+title1+ "--\" aria-expanded=\"false\" disabled=\"disabled\"><span class=\"filter-option pull-left\">--"
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
												if(Number(data.listAllZipCodes[i].id) === Number(zipCodeId)){
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
			+ "<li data-original-index=\"0\" id=\"li0\" onclick=\"onclick('"+ 0+ "','State Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- State Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
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
	function sellerGenderClick(str){
		$("#sellerGenderClick").val(str);
		var clicked;
		$("#sellerGenderDiv").html("");
		/* if(str === "Male"){
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
		} */
		var mno ="<div class=\"form-group drop-custum\">"
			+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+str+"  --\" disabled=\"disabled\"><span class=\"filter-option pull-left\">--"+str+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
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

	var efg = "";
	function showAddressProofImageEdit(imageUrl, imageId){
		efg = efg + "<div class=\"col-md-12 col-sm-12 col-xs-12 editImages\">"
		+"<div class=\"thumbnail editThumbnail\">"
		+"<img src=\"getImage?id="+imageUrl+"\" class=\"img-responsive\" data-toggle=\"modal\" onclick=\"showAddressProofImageModal('"+imageUrl+"','"+imageId+"')\"/>"
		+"<span class=\"label label-danger prdctName\">25 December 2015</span>"
	    +"</div>"
        +"</div>";
      $("#addressProofDisplayDiv").html(efg);
	}
	function showAddressProofImageModal(imageName, imageId){
		dpImageId = imageId;
		if(!($("#addressProofModals").children("#addressProofModals"+imageId).length > 0)){
			var abc ="<div class=\"modal fade\" id=\'addressProofModals"+imageId+"\' tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">"
			+"<div class=\"modal-dialog\" role=\"document\">"
			+"<div class=\"modal-content row singleImageEdit\">"
			+"<div class=\"col-md-4 col-xs-6 col-sm-12 thumbnail\" id=\"editImageDiv\">"
			+"<img src=\"getImage?id="+imageName+"\" class=\"img-responsive\"/>"
			+"</div>"
			+"<div class=\"col-md-8 col-xs-6 col-sm-12 _addressProof\">"
			+"<form action=\"#\" id=\'addressProofModals_singleUpload"+imageId+"\' class=\"dropzone\" method=\"post\" enctype=\"multipart/form-data\">"
			+"<div class=\"dz-message\">"
			+"<div class=\"drag-icon-cph\">"
			+"<i class=\"material-icons\">touch_app</i>"
			+"</div>"
			+"<h3>Drop files here or click to upload.</h3>"
			+"<em>(This is just a demo dropzone. Selected files are <strong>not</strong> actually uploaded.</em>"
			+"</div>"
			+"<div class=\"fallback\">"
			+"<input name=\"file\" type=\"file\" multiple />"
			+"</div>"
			+"</form>"
			+"</div>"
			+"<div class =\"row\">"
			+"<div class=\"modal-footer col-md-12 col-sm-12 col-xs-12 footerModal\">"
			+"<button type=\"button\" class=\"btn btn-secondary btn-raised\" data-dismiss=\"modal\">Close</button>"
			+"<button type=\"button\" class=\"btn btn-raised gradient-right\">Save changes</button>"
			+"</div>"
			+"</div>"
			+"</div>"
			+"</div>"
			+"</div>"
			$("#addressProofModals").append(abc);
			createDpDropzone(imageId,"addressProofModals");
		}
		$("#addressProofModals"+imageId).modal({
			backdrop: 'static',
		    keyboard: false,
		    show:true
		});
		
	}
	
	var ghi = "";
	function showIdProofImageEdit(imageUrl, imageId){
		ghi = ghi + "<div class=\"col-md-12 col-sm-12 col-xs-12 editImages\">"
		+"<div class=\"thumbnail editThumbnail\">"
		+"<img src=\"getImage?id="+imageUrl+"\" class=\"img-responsive\" data-toggle=\"modal\" onclick=\"showIdProofImageModal('"+imageUrl+"','"+imageId+"')\"/>"
		+"<span class=\"label label-danger prdctName\">25 December 2015</span>"
	    +"</div>"
        +"</div>";
      $("#idProofDisplayDiv").html(ghi);
	}
	function showIdProofImageModal(imageName, imageId){
		dpImageId = imageId;
		if(!($("#idProofModals").children("#idProofModals"+imageId).length > 0)){
			var abc ="<div class=\"modal fade\" id=\'idProofModals"+imageId+"\' tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">"
			+"<div class=\"modal-dialog\" role=\"document\">"
			+"<div class=\"modal-content row singleImageEdit\">"
			+"<div class=\"col-md-4 col-xs-6 col-sm-12 thumbnail\" id=\"editImageDiv\">"
			+"<img src=\"getImage?id="+imageName+"\" class=\"img-responsive\"/>"
			+"</div>"
			+"<div class=\"col-md-8 col-xs-6 col-sm-12 _idProof\">"
			+"<form action=\"#\" id=\'idProofModals_singleUpload"+imageId+"\' class=\"dropzone\" method=\"post\" enctype=\"multipart/form-data\">"
			+"<div class=\"dz-message\">"
			+"<div class=\"drag-icon-cph\">"
			+"<i class=\"material-icons\">touch_app</i>"
			+"</div>"
			+"<h3>Drop files here or click to upload.</h3>"
			+"<em>(This is just a demo dropzone. Selected files are <strong>not</strong> actually uploaded.</em>"
			+"</div>"
			+"<div class=\"fallback\">"
			+"<input name=\"file\" type=\"file\" multiple />"
			+"</div>"
			+"</form>"
			+"</div>"
			+"<div class =\"row\">"
			+"<div class=\"modal-footer col-md-12 col-sm-12 col-xs-12 footerModal\">"
			+"<button type=\"button\" class=\"btn btn-secondary btn-raised\" data-dismiss=\"modal\">Close</button>"
			+"<button type=\"button\" class=\"btn btn-raised gradient-right\">Save changes</button>"
			+"</div>"
			+"</div>"
			+"</div>"
			+"</div>"
			+"</div>"
			$("#idProofModals").append(abc);
			createDpDropzone(imageId,"idProofModals");
		}
		$("#idProofModals"+imageId).modal({
			backdrop: 'static',
		    keyboard: false,
		    show:true
		});
		
	}
	var ijk = "";
	function showSellerImageEdit(imageUrl, imageId){
		ijk = ijk + "<div class=\"col-md-12 col-sm-12 col-xs-12 editImages\">"
		+"<div class=\"thumbnail editThumbnail\">"
		+"<img src=\"getImage?id="+imageUrl+"\" class=\"img-responsive\" data-toggle=\"modal\" onclick=\"showSellerImageModal('"+imageUrl+"','"+imageId+"')\"/>"
		+"<span class=\"label label-danger prdctName\">25 December 2015</span>"
	    +"</div>"
        +"</div>";
      $("#sellerImageDisplayDiv").html(ijk);
	}
	function showSellerImageModal(imageName, imageId){
		dpImageId = imageId;
		if(!($("#sellerImageModals").children("#sellerImageModals"+imageId).length > 0)){
			var abc ="<div class=\"modal fade\" id=\'sellerImageModals"+imageId+"\' tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">"
			+"<div class=\"modal-dialog\" role=\"document\">"
			+"<div class=\"modal-content row singleImageEdit\">"
			+"<div class=\"col-md-4 col-xs-6 col-sm-12 thumbnail\" id=\"editImageDiv\">"
			+"<img src=\"getImage?id="+imageName+"\" class=\"img-responsive\"/>"
			+"</div>"
			+"<div class=\"col-md-8 col-xs-6 col-sm-12 _sellerImage\">"
			+"<form action=\"#\" id=\'sellerImageModals_singleUpload"+imageId+"\' class=\"dropzone\" method=\"post\" enctype=\"multipart/form-data\">"
			+"<div class=\"dz-message\">"
			+"<div class=\"drag-icon-cph\">"
			+"<i class=\"material-icons\">touch_app</i>"
			+"</div>"
			+"<h3>Drop files here or click to upload.</h3>"
			+"<em>(This is just a demo dropzone. Selected files are <strong>not</strong> actually uploaded.</em>"
			+"</div>"
			+"<div class=\"fallback\">"
			+"<input name=\"file\" type=\"file\" multiple />"
			+"</div>"
			+"</form>"
			+"</div>"
			+"<div class =\"row\">"
			+"<div class=\"modal-footer col-md-12 col-sm-12 col-xs-12 footerModal\">"
			+"<button type=\"button\" class=\"btn btn-secondary btn-raised\" data-dismiss=\"modal\">Close</button>"
			+"<button type=\"button\" class=\"btn btn-raised gradient-right\">Save changes</button>"
			+"</div>"
			+"</div>"
			+"</div>"
			+"</div>"
			+"</div>"
			$("#sellerImageModals").append(abc);
			createDpDropzone(imageId,"sellerImageModals");
		}
		$("#sellerImageModals"+imageId).modal({
			backdrop: 'static',
		    keyboard: false,
		    show:true
		});
		
	}
	function createDpDropzone(imageId,modalId){
		var dateTime;
		 var myDropzone = new Dropzone("#"+modalId+" #"+modalId+"_singleUpload"+imageId, {
				url : "singleUpload",
				init : function() {
					this.on("success", function(file, response) {
						if(modalId === "addressProofModals"){
							if( addressProof === Number(1)){
								$("#defaultSellerAddressProofImg").val("");
								addressProof = "";
							}
						}else if(modalId === "idProofModals"){
							if( idProof === Number(1)){
								$("#defaultSellerIdProofImg").val("");
								idProof = "";
							}
						}else if(modalId === "sellerImageModals"){
							if(sellerImage === Number(1)){
								$("#defaultSellerImg").val("");
								sellerImage = "";
							}
						}
						
						var a = this.element.classList+"";
						a = a.split("_");
						classPath = $("form." + "_" + a[1]).parent().attr("class");
						classPath = classPath.split("_");
						if(modalId === "addressProofModals"){
							
							if(addressProof === ""){
								addressProof = "Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
							}else{
								addressProof = addressProof + ","+"Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
							}
						}else if(modalId === "idProofModals"){
							
							if(idProof === ""){
								idProof = "Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
							}else{
								idProof = idProof + ","+"Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
							}
						}else if(modalId === "sellerImageModals"){
							
							if(sellerImage === ""){
								sellerImage = "Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
							}else{
								sellerImage = sellerImage + ","+"Seller"+"_"+classPath[1]+"_"+dateTime+file.name;
							}
						}
						
		 			});
				},
				renameFilename : function(fileName) {
					dateTime = new Date().getTime();
					var classpath = fileName;
					classpath = classpath.split("_");
					return "Seller" + "_" + dateTime+classpath[0];
					}
					
				});
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
				 for(var i = 0; i<storePresentAddress.length; i++){
					   $("#sellerPermanentAddress").val(storePresentAddress[i]);
					  }
			    }else{
			    	if($("#checkBoxId").hasClass("isCheck")){
						$("#checkBoxId").removeClass("isCheck");
					}
			    }
		}
		
	 $("#profileSubmit").click(function(){
		 event.preventDefault();
		 /* if($("#sellerFirstName").val() === ""){
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
			}else  */
			if($("#sellerContactNumber").val() ===""){
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
			}/* else if($("#sellerPermanentAddress").val() ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Permanent Address!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			} */
			else if($("#stateName").val() ===""){
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
			}/* else if ($("#sellerDateOfBirth").val() ===""){
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
			} */else if($("#sellerAddressProof").val() ===""){
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
			}else{
				var job = {};
				
				job["editSellerId"] = $("#editSellerId").val();
				job["sellerFirstName"] = $("#sellerFirstName").val();
				job["sellerLastName"] = $("#sellerLastName").val(); 
				job["sellerContactNumber"] =$("#sellerContactNumber").val();
				job["sellerAlternateNumber"] =$("#sellerAlternateNumber").val();
				job["sellerPresentAddress"] =$("#sellerPresentAddress").val();
				job["sellerPermanentAddress"] =$("#sellerPermanentAddress").val();
				job["stateId"] =$("#stateName").val();
				job["cityId"] =$("#cityName").val();
				job["zipCodeId"] =$("#localityName").val();
				/* var dob = moment($("#sellerDateOfBirth").val(),"dddd DD MMMM YYYY");
				dob = moment(dob).format("YYYY-MM-DD"); */
				/* var sellerDateOfBirth = ($("#sellerDateOfBirth").val()).trim().split(/\s+/);  //Trimming the seller Date of Birth For white spaces 
				var sellerMonth = getMonth(sellerDateOfBirth[2]);   //Method to convert month name to month number
				if(sellerMonth < 10){
					sellerMonth = "0"+sellerMonth;
				} 
				job["sellerDateOfBirth"] = sellerDateOfBirth[3]+"-"+sellerMonth+"-"+sellerDateOfBirth[1];  */
				/* job["sellerDateOfBirth"] = dob; */
				job["sellerGender"] = $("#sellerGenderClick").val();
				job["sellerCompanyName"] =$("#sellerCompanyName").val();
				job["sellerAddressProof"] = $("#sellerAddressProofClick").val();
				job["sellerIdProof"] = $("#sellerIdProofClick").val();
				job["sellerEmailId"] =$("#sellerEmailId").val();
				job["sellerPassword"] =$("#sellerPassword").val();
				if(addressProof !== ""){
					job["addressProofFiles"] = addressProof;
				}else{
					alert("in else");
					job["addressProofFiles"] = $("#defaultSellerAddressProofImg").val()+"&_";
				}
				if(idProof !== ""){
					job["idProofFiles"] = idProof;
				}else{
					job["idProofFiles"] = $("#defaultSellerIdProofImg").val()+"&_";
				}
				if(sellerImage !== ""){
					job["sellerImageFiles"] = sellerImage;
				}else{
					job["sellerImageFiles"] = $("#defaultSellerImg").val()+"&_";
				}
				job["hasValue"] = 0;
				if($("#sellerAlternateNumber").val() !== ""){
					job["sellerAlternateNumber"] = $("#sellerAlternateNumber").val();
				}
				job["isMobileVerified"] = "${sessionScope.sellerDetailsSession.mobileVerified}";
				job["isEmailVerified"] = "${sessionScope.sellerDetailsSession.emailVerified}";
				job["tableName"] = "SellerDetails";
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
								  text: 'Seller Details Updated Inserted!!!',
								  type: 'success',
								  showConfirmButton :false,
								  allowEscapeKey:true,
								  timer:3000,
								  animation:true
								});
						}
						$("#submit").prop("disabled", false);
					},
					error : function(e) {
						alert("Error");
						swal({
							  title: 'Error!',
							  text: 'Seller Details Not Updated Successfully!!!',
							  type: 'error',
							  confirmButtonText :"OK",
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});
						$("#submit").prop("disabled", false);

					},complete:function(){
						location.reload();
					}
					});  
			}
	 }); 
	//Converting month name to month number
		function getMonth(monthStr){
		    return new Date(monthStr+'-1-01').getMonth()+1
		}
		
	$("#submitBankDetails").click(function(){
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
			var job={};
			job["hasValue"] = 1;
			
			job["editSellerBankDetailsId"] = $("#editSellerBankDetailsId").val();
			job["accountHolderName"] =$("#accountHolderName").val();
			job["accountNumber"] =$("#accountNumber").val();
			job["ifscCode"] = $("#ifscCode").val();
			job["branchCode"] =$("#branchCode").val();
			job["branchName"] =$("#branchName").val();
			job["editSellerId"] = $("#editSellerId").val();
			job["tableName"] = "BankDetails";
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
							  text: 'Seller Bank Details Successfully Updated!!!',
							  type: 'success',
							  showConfirmButton :false,
							  allowEscapeKey:true,
							  timer:3000,
							  animation:true
							});
					}

				},
				error : function(e) {
					alert("Error");
					swal({
						  title: 'Error!',
						  text: 'Bank Details Not Updated Successfully!!!',
						  type: 'error',
						  confirmButtonText :"OK",
						  allowEscapeKey:true,
						  confirmButtonClass:"btn btn-raised gradient-right",
						  animation:true
						});

				   }
				}); 
		}
	});
	$("#halfYearly, #annual").click(function(){
		var check = Number(0);
		if($("#"+this.id).is(':checked')){
			check = Number(1);
		}
		$("#halfYearly,#annual").prop("checked",false);
		
		if(check === Number(1)){
			$("#"+this.id).prop("checked",true);
		}

	});
	
	var clickedCategoryId = "";
	var serviceClickedId = "";
	var paid = "";
	var modalServiceId = "";
	function packageDetailsModal(categoryId,serviceName,startDate,endDate,isAnnual,serviceId,paidService,id){
		alert(isAnnual);
		clickedCategoryId = categoryId;
		serviceClickedId = serviceId;
		modalServiceId = id;
		paid = paidService;
		$("#serviceName").val(serviceName);
		alert(startDate);
		 var a = new Date("Wed Mar 25 2015 05:30:00 GMT+0530").format("isoDate");
		alert(a); 
		var startDates = moment(startDate).format("dddd DD MMMM YYYY");
		$("#startDate").val(startDates);
		var endDates = moment(endDate).format("dddd DD MMMM YYYY");
		$("#endDate").val(endDates);
		
		if(isAnnual === "true"){
			$("#annual").prop("checked",true);
			$("#halfYearly").prop("checked",false);
		}else{
			$("#halfYearly").prop("checked",true);
			$("#annual").prop("checked",false);
		}
	}

	 $("#closeModal").click(function(){
		if(paid === "No"){
			if($("#serviceTakenPriceDetails"+modalServiceId).hasClass("mask1")){
  				$("#serviceTakenPriceDetails"+modalServiceId).removeClass("mask1");
  				$("#serviceTakenPriceDetails"+modalServiceId).addClass('mask');
  				$("#serviceTakenPriceDetails"+modalServiceId).removeClass("clicked");
  			}
		}
		
	});
	$("#upgradeService").click(function(){
		var endDateRegister = moment($("#endDate").val(),"dddd DD MMMM YYYY");
		endDateRegister = moment(endDateRegister).format("YYYY-MM-DD");
		var todayDate = moment().format("YYYY-MM-DD");
		var check = 0;
		if((moment(endDateRegister).diff(moment(todayDate),'days') > 15) && (paid === "Yes")){
			swal({
				  title: "Are you sure?",
				  text: "You Have More Than 15 Days Left For Your Previous Package To End. Do You Want To Continue With The Renewal Process!",
				  type: "warning",
				  showCancelButton: true,
				  confirmButtonColor: "#DD6B55",
				  confirmButtonText: "Upgrade Me!",
				  cancelButtonText: "Cancel plz!",
				  closeOnConfirm: false,
				  closeOnCancel: true
				},
				function(isConfirm){
					if (isConfirm) {
				  check = Number(1);
				  }else{
					  $("#smallModal").modal("hide");
				  } 
				});
		}
		if(paid === "No" || check === Number(1)){
			    var job = {};
			    var isAnnual = "";
			    if($("#annual").is(":checked")){
			    	isAnnual = "Yes";
			    }else{
			    	isAnnual = "No";
			    }
			    job["serviceTakenId"] = clickedCategoryId +"_" +todayDate+"_" +isAnnual+ "_" + "Yes";
			    job["tableName"] = ("CategoryTaken");
			    job["categoryTakenId"] = serviceClickedId;

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
								  text: 'Seller Service Details Successfully Updated!!!',
								  type: 'success',
								  showConfirmButton :false,
								  allowEscapeKey:true,
								  timer:3000,
								  animation:true
								});
						}

					},
					error : function(e) {
						alert("Error");
						swal({
							  title: 'Error!',
							  text: 'Seller Service Details Not Updated Successfully!!!',
							  type: 'error',
							  confirmButtonText :"OK",
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});

					   }, complete : function(){
						   location.reload();
					   }
					}); 
			  
		}
		
	});
	
	$("#servicesSubmit").click(function(){
		if(sameLength === Number(1)){
			swal({
				  title: 'Warning!',
				  text: 'There are no more services to avail!!!',
				  type: 'warning',
				  confirmButtonText: 'OK',
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}else{
			if(serviceTakenId === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Avail At Least One New Service To Proceed!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else{
				var job = {};
				job["serviceTakenId"] = serviceTakenId;
				job["tableName"] = "CategoryTaken";
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
								  text: 'Seller Service Inserted Successfully!!!',
								  type: 'success',
								  showConfirmButton :false,
								  allowEscapeKey:true,
								  timer:3000,
								  animation:true
								});
						}

					},
					error : function(e) {
						alert("Error");
						swal({
							  title: 'Error!',
							  text: 'Seller Service Not Inserted Successfully!!!',
							  type: 'error',
							  confirmButtonText :"OK",
							  allowEscapeKey:true,
							  confirmButtonClass:"btn btn-raised gradient-right",
							  animation:true
							});

					   }, complete : function(){
						   sessionStorage.setItem("checkSubmit",1);
						   location.reload();
				        }
						   
					}); 
			}
		}
	});
 </script>
	<%@ include file="admin-includeFooter.jsp"%>
	</body>
	</html>