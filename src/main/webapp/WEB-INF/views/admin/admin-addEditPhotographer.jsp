<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Photographer</title>
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css">
<link rel="stylesheet" type="text/css" href="resources/css/roundster.css">
<%@ include file="admin-includeHeader.jsp"%>
</head>
<body class="theme-blush">
<!-- Test Modal -->
	<div id="allModals">
	</div>
	<!-- Test 3 Modal -->
	<div class="modal fade" id="showPriceModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content row priceShow">
				<div class="col-md-12 col-xs-12 col-sm-12 card">
					<div class="header">
						<h2>All Listed Prices</h2>
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
							class="table table-bordered table-striped table-hover js-basic-example dataTable"
							id="priceTable">
							<thead>
								<tr>
									<th class="text-center">Sl.No</th>
									<th class="text-center">Start Date</th>
									<th class="text-center">End Date</th>
									<th class="text-center">Price</th>
									<th class="text-center">Status</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
		
				<div class ="row">
				<div class="modal-footer col-md-12 col-sm-12 col-xs-12 priceFooter">
					<button type="button" class="btn btn-secondary btn-raised"
						data-dismiss="modal">Close</button>
				</div>
				</div>
				
			</div>
		</div>
	</div> 
	<!-- Test11 Modal -->
	<div class="modal fade" id="showDiscountModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content row priceShow">
				<div class="col-md-12 col-xs-12 col-sm-12 card">
					<div class="header">
						<h2>All Listed Discounts</h2>
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
							class="table table-bordered table-striped table-hover js-basic-example dataTable"
							id="discountTable">
							<thead>
								<tr>
									<th class="text-center">Sl.No</th>
									<th class="text-center">Start Date</th>
									<th class="text-center">End Date</th>
									<th class="text-center">Discount</th>
									<th class="text-center">Status</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
		
				<div class ="row">
				<div class="modal-footer col-md-12 col-sm-12 col-xs-12 priceFooter">
					<button type="button" class="btn btn-secondary btn-raised"
						data-dismiss="modal">Close</button>
				</div>
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

        <!-- Morphing Search  -->
        <div id="morphsearch" class="morphsearch">
            <form class="morphsearch-form">
                <div class="form-group m-0">
                    <input value="" type="search" placeholder="Search..." class="form-control morphsearch-input" />
                    <button class="morphsearch-submit" type="submit">Search</button>
                </div>
            </form>
            <div class="morphsearch-content">
                <div class="dummy-column">
                    <h2>People</h2>
                    <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar1.jpg" alt=""/>
                        <h3>Sara Soueidan</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar4.jpg" alt=""/>
                        <h3>Rachel Smith</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar3.jpg" alt=""/>
                        <h3>Peter Finlan</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar6.jpg" alt=""/>
                        <h3>Patrick Cox</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar5.jpg" alt=""/>
                        <h3>Tim Holman</h3>
                    </a></div>
                <div class="dummy-column">
                    <h2>Popular</h2>
                    <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar1.jpg" alt=""/>
                        <h3>Sara Soueidan</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar4.jpg" alt=""/>
                        <h3>Rachel Smith</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar3.jpg" alt=""/>
                        <h3>Peter Finlan</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar6.jpg" alt=""/>
                        <h3>Patrick Cox</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar5.jpg" alt=""/>
                        <h3>Tim Holman</h3>
                    </a> </div>
                <div class="dummy-column">
                    <h2>Recent</h2>
                    <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar1.jpg" alt=""/>
                        <h3>Sara Soueidan</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar4.jpg" alt=""/>
                        <h3>Rachel Smith</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar3.jpg" alt=""/>
                        <h3>Peter Finlan</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar6.jpg" alt=""/>
                        <h3>Patrick Cox</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="assets/images/random-avatar5.jpg" alt=""/>
                        <h3>Tim Holman</h3>
                    </a></div>
            </div>
            <!-- /morphsearch-content --> 
            <span class="morphsearch-close"></span> </div>

        <!-- Top Bar -->
        <nav class="navbar clearHeader">
            <div class="container-fluid">
                <div class="navbar-header"> <a href="javascript:void(0);" class="bars"></a> <a class="navbar-brand" href="index.html">Swift University</a> </div>
                <ul class="nav navbar-nav navbar-right">
                    <!-- Notifications -->
                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"><i class="zmdi zmdi-notifications"></i> <span class="label-count">7</span> </a>
                        <ul class="dropdown-menu">
                            <li class="header">NOTIFICATIONS</li>
                            <li class="body">
                                <ul class="menu">
                                    <li> <a href="javascript:void(0);">
                                            <div class="icon-circle bg-light-green"><i class="zmdi zmdi-account-add"></i></div>
                                            <div class="menu-info">
                                                <h4>12 new members joined</h4>
                                                <p> <i class="material-icons">access_time</i> 14 mins ago </p>
                                            </div>
                                        </a> </li>
                                    <li> <a href="javascript:void(0);">
                                            <div class="icon-circle bg-cyan"><i class="zmdi zmdi-shopping-cart-plus"></i></div>
                                            <div class="menu-info">
                                                <h4>4 sales made</h4>
                                                <p> <i class="material-icons">access_time</i> 22 mins ago </p>
                                            </div>
                                        </a> </li>
                                    <li> <a href="javascript:void(0);">
                                            <div class="icon-circle bg-red"><i class="zmdi zmdi-delete"></i></div>
                                            <div class="menu-info">
                                                <h4><b>Nancy Doe</b> deleted account</h4>
                                                <p> <i class="material-icons">access_time</i> 3 hours ago </p>
                                            </div>
                                        </a> </li>
                                    <li> <a href="javascript:void(0);">
                                            <div class="icon-circle bg-orange"><i class="zmdi zmdi-edit"></i></div>
                                            <div class="menu-info">
                                                <h4><b>Nancy</b> changed name</h4>
                                                <p> <i class="material-icons">access_time</i> 2 hours ago </p>
                                            </div>
                                        </a> </li>
                                    <li> <a href="javascript:void(0);">
                                            <div class="icon-circle bg-blue-grey"><i class="zmdi zmdi-comment-alt-text"></i></div>
                                            <div class="menu-info">
                                                <h4><b>John</b> commented your post</h4>
                                                <p> <i class="material-icons">access_time</i> 4 hours ago </p>
                                            </div>
                                        </a> </li>
                                    <li> <a href="javascript:void(0);">
                                            <div class="icon-circle bg-light-green"><i class="zmdi zmdi-refresh-alt"></i></div>
                                            <div class="menu-info">
                                                <h4><b>John</b> updated status</h4>
                                                <p> <i class="material-icons">access_time</i> 3 hours ago </p>
                                            </div>
                                        </a> </li>
                                    <li> <a href="javascript:void(0);">
                                            <div class="icon-circle bg-purple"><i class="zmdi zmdi-settings"></i></div>
                                            <div class="menu-info">
                                                <h4>Settings updated</h4>
                                                <p> <i class="material-icons">access_time</i> Yesterday </p>
                                            </div>
                                        </a> </li>
                                </ul>
                            </li>
                            <li class="footer"> <a href="javascript:void(0);">View All Notifications</a> </li>
                        </ul>
                    </li>
                    <!-- #END# Notifications --> 
                    <!-- Tasks -->
                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"><i class="zmdi zmdi-flag"></i><span class="label-count">9</span> </a>
                        <ul class="dropdown-menu">
                            <li class="header">TASKS</li>
                            <li class="body">
                                <ul class="menu tasks">
                                    <li> <a href="javascript:void(0);">
                                            <h4> Task 1 <small>32%</small> </h4>
                                            <div class="progress">
                                                <div class="progress-bar bg-pink" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 32%"> </div>
                                            </div>
                                        </a> </li>
                                    <li> <a href="javascript:void(0);">
                                            <h4>Task 2 <small>45%</small> </h4>
                                            <div class="progress">
                                                <div class="progress-bar bg-cyan" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 45%"> </div>
                                            </div>
                                        </a> </li>
                                    <li> <a href="javascript:void(0);">
                                            <h4>Task 3 <small>54%</small> </h4>
                                            <div class="progress">
                                                <div class="progress-bar bg-teal" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 54%"> </div>
                                            </div>
                                        </a> </li>
                                    <li> <a href="javascript:void(0);">
                                            <h4> Task 4 <small>65%</small> </h4>
                                            <div class="progress">
                                                <div class="progress-bar bg-orange" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 65%"> </div>
                                            </div>
                                        </a> </li>                          
                                </ul>
                            </li>
                            <li class="footer"> <a href="javascript:void(0);">View All Tasks</a> </li>
                        </ul>
                    </li>
                    <!-- #END# Tasks -->
                    <li><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="zmdi zmdi-settings"></i></a></li>
                </ul>
            </div>
        </nav>
        <!-- #Top Bar -->

        <!--Side menu and right menu -->
        <section> 
            <!-- Left Sidebar -->
            <%@ include file="admin-sideNavBar.jsp" %>
            <!-- #END# Left Sidebar --> 
            <!-- Right Sidebar -->
            <aside id="rightsidebar" class="right-sidebar">
                <ul class="nav nav-tabs tab-nav-right" role="tablist">
                    <li role="presentation" class="active"><a href="#skins" data-toggle="tab">Skins</a></li>
                    <li role="presentation"><a href="#chat" data-toggle="tab">Chat</a></li>
                    <li role="presentation"><a href="#settings" data-toggle="tab">Setting</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active in active" id="skins">
                        <ul class="demo-choose-skin">
                            <li data-theme="red">
                                <div class="red"></div>
                                <span>Red</span> </li>
                            <li data-theme="purple">
                                <div class="purple"></div>
                                <span>Purple</span> </li>
                            <li data-theme="blue">
                                <div class="blue"></div>
                                <span>Blue</span> </li>
                            <li data-theme="cyan">
                                <div class="cyan"></div>
                                <span>Cyan</span> </li>
                            <li data-theme="green">
                                <div class="green"></div>
                                <span>Green</span> </li>
                            <li data-theme="deep-orange">
                                <div class="deep-orange"></div>
                                <span>Deep Orange</span> </li>
                            <li data-theme="blue-grey">
                                <div class="blue-grey"></div>
                                <span>Blue Grey</span> </li>
                            <li data-theme="black">
                                <div class="black"></div>
                                <span>Black</span> </li>
                            <li data-theme="blush" class="active">
                                <div class="blush"></div>
                                <span>Blush</span> </li>
                        </ul>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="chat">
                        <div class="demo-settings">
                            <div class="search">
                                <div class="input-group">
                                    <div class="form-line">
                                        <input type="text" class="form-control" placeholder="Search..." required autofocus>
                                    </div>
                                </div>
                            </div>
                            <h6>Recent</h6>
                            <ul>
                                <li class="online">
                                    <div class="media"> <a class="pull-left" role="button" tabindex="0"> <img class="media-object " src="assets/images/random-avatar4.jpg" alt=""> </a>
                                        <div class="media-body"> <span class="name">Claire Sassu</span> <span class="message">Can you share the...</span> <span class="badge badge-outline status"></span> </div>
                                    </div>
                                </li>
                                <li class="online">
                                    <div class="media"> <a class="pull-left" role="button" tabindex="0"> <img class="media-object " src="assets/images/random-avatar5.jpg" alt=""> </a>
                                        <div class="media-body">
                                            <div class="media-body"> <span class="name">Maggie jackson</span> <span class="message">Can you share the...</span> <span class="badge badge-outline status"></span> </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="online">
                                    <div class="media"> <a class="pull-left" role="button" tabindex="0"> <img class="media-object " src="assets/images/random-avatar3.jpg" alt=""> </a>
                                        <div class="media-body">
                                            <div class="media-body"> <span class="name">Joel King</span> <span class="message">Ready for the meeti...</span> <span class="badge badge-outline status"></span> </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <h6>Contacts</h6>
                            <ul>
                                <li class="offline">
                                    <div class="media"> <a class="pull-left" role="button" tabindex="0"> <img class="media-object " src="assets/images/random-avatar4.jpg" alt=""> </a>
                                        <div class="media-body">
                                            <div class="media-body"> <span class="name">Joel King</span> <span class="badge badge-outline status"></span> </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="online">
                                    <div class="media"> <a class="pull-left" role="button" tabindex="0"> <img class="media-object " src="assets/images/random-avatar5.jpg" alt=""> </a>
                                        <div class="media-body">
                                            <div class="media-body"> <span class="name">Joel King</span> <span class="badge badge-outline status"></span> </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="offline">
                                    <div class="media"> <a class="pull-left " role="button" tabindex="0"> <img class="media-object " src="assets/images/random-avatar6.jpg" alt=""> </a>
                                        <div class="media-body">
                                            <div class="media-body"> <span class="name">Joel King</span> <span class="badge badge-outline status"></span> </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="settings">
                        <div class="demo-settings">
                            <p>GENERAL SETTINGS</p>
                            <ul class="setting-list">
                                <li> <span>Report Panel Usage</span>
                                    <div class="switch">
                                        <label>
                                            <input type="checkbox" checked>
                                            <span class="lever"></span></label>
                                    </div>
                                </li>
                                <li> <span>Email Redirect</span>
                                    <div class="switch">
                                        <label>
                                            <input type="checkbox">
                                            <span class="lever"></span></label>
                                    </div>
                                </li>
                            </ul>
                            <p>SYSTEM SETTINGS</p>
                            <ul class="setting-list">
                                <li> <span>Notifications</span>
                                    <div class="switch">
                                        <label>
                                            <input type="checkbox" checked>
                                            <span class="lever"></span></label>
                                    </div>
                                </li>
                                <li> <span>Auto Updates</span>
                                    <div class="switch">
                                        <label>
                                            <input type="checkbox" checked>
                                            <span class="lever"></span></label>
                                    </div>
                                </li>
                            </ul>
                            <p>ACCOUNT SETTINGS</p>
                            <ul class="setting-list">
                                <li> <span>Offline</span>
                                    <div class="switch">
                                        <label>
                                            <input type="checkbox">
                                            <span class="lever"></span></label>
                                    </div>
                                </li>
                                <li> <span>Location Permission</span>
                                    <div class="switch">
                                        <label>
                                            <input type="checkbox" checked>
                                            <span class="lever"></span></label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </aside>
            <!-- #END# Right Sidebar --> 
        </section>
        <!--Side menu and right menu -->

        <!-- main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="block-header">
                    <h2>Add Photographer</h2>
                    <small class="text-muted">Welcome to Wedlock application</small>
                </div>
                <div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>Photographer Basic Information</h2>
						</div>
						<div class="body">
							<div class="row clearfix" id="productNameDiv">
								<div class="col-sm-12 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="productName" id ="productName"
												placeholder="Product Name">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="sellerId" id="sellerId" value = "${sessionScope.sellerDetailsSession.id}" 
											placeholder="Seller ID">
										</div>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group drop-custum" id="photographyTypeDiv">
										<select class="form-control show-tick">
											<option value="">-- Photo Type --</option>
											<option value="10">XXX</option>
											<option value="20">XXXX</option>
										</select>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group div-center hundred-width"
										id="photographyOccasionDiv">
										<select class="form-control show-tick">
											<option value="">-- Occasion --</option>
											<option value="10">XXX</option>
											<option value="20">XXXX</option>
										</select>
									</div>
									<!--  <div class="form-group">
                                            <div class="div-center hundred-width new-brdr added">
                                                <select name="langOpt2[]" class="selectHeader add-padding-hide" multiple id="langOpt2">
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
                                        </div> -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="header marginb15 margin-bottom10">
									<h2>Photographer Image Files</h2>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 _photographerImages" id="photographerImagesDiv">
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
							</div>
							<div class="row clearfix"></div>
							<div class="header margin-left-right-zero marginb15">
								<h2>Image Particulars</h2>
							</div>
							<div class="row clearfix">
								<div class="col-sm-8 col-xs-12">
									<div class="form-group">
										<textarea class="form-control textarea-add" rows="5" name="photoDescription" id="photoDescription"
											placeholder="Photo Description"></textarea>
									</div>
								</div>

								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="noOfPhotosProvided" id="noOfPhotosProvided"
												placeholder="No. of Photo Provided">
										</div>
									</div>
								</div>
							</div>

							<div class="row clearfix">
								<div class="header marginb15 margin-bottom10">
									<h2>Photographer Video Files</h2>
								</div>
								<div
									class="col-lg-12 col-md-12 col-sm-12 col-xs-12 _photographerVideos" id="photographerVideosDiv">
									<form action="#" id="videoUpload" class="dropzone" method="post"
										enctype="multipart/form-data">
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
									<h2>Video particulars</h2>
								</div>
								<div class="col-sm-8 col-xs-12">
									<div class="form-group">
										<textarea class="form-control textarea-add" rows="5" name="videoDescription" id="videoDescription"
											placeholder="Video Description"></textarea>
									</div>
								</div>

								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="videoLength" id="videoLength"
												placeholder="Video Length">
											</div>
										</div>
									<!-- <div class="row clearfix">
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<div class="form-line">
													<input type="text" class="form-control" name="videoLength"
														id="videoLengthHH" placeholder="hh">
												</div>
											</div>
										</div>
										<div class="col-sm-1 col-xs-12">
											<label class="customLabel"><span> : </span></label>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<div class="form-line">
													<input type="text" class="form-control" name="videoLength"
														id="videoLengthmm" readonly="readonly" placeholder="mm">
												</div>
											</div>
										</div>
										<div class="col-sm-1 col-xs-12">
											<label class="customLabel"><span> : </span></label>
										</div>
										<div class="col-sm-3 col-xs-12">
											<div class="form-group">
												<div class="form-line">
													<input type="text" class="form-control" name="videoLength"
														id="videoLengthss" readonly="readonly" placeholder="ss">
												</div>
											</div>
										</div>
										<div class="col-sm-1 col-xs-12">
										
										</div>
									</div> -->
								</div>
							</div>
							<div class="row clearfix">
								<div class="header marginb15">
									<h2>Photographer Pricing</h2>
								</div>
							</div>
							<div class="photographerPricingDiv ">
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
													name="toDate" id="toDate" placeholder="To Date" disabled="disabled">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="price"
													id="price" placeholder="Price" readonly="readonly">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<!-- <button type="button" class="btn btn-raised gradient-right"
												id="plusbtn">Add</button>
											<button type="button" class="btn btn-raised gradient-right hideDiv"
												id="showPreviousPrices" data-toggle="modal" data-target="#showPriceModal">Show Prices</button>	 -->
										<button type="button" id="plusbtn" class="plusIcon" title="Add Price"><img src="resources/images/icons8-Add-80.png" class="img-responsive"></button>
										<button type="button" id="clearPlusBtn" class="clearIcon" title="Clear Price Details"><img src="resources/images/icons8-Clear Symbol-80.png" class="img-responsive"></button>
										<button type="button" id="showPreviousPrices" class="showIcon hideDiv" title="Show Previous Prices" data-toggle="modal" data-target="#showPriceModal"><img src="resources/images/icons8-Show Property-100.png" class="img-responsive"></button>		
										</div>
									</div>
								</div>
								<div class="row clearfix hideDiv" id="photographerPricing1">
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
													name="toDate" id="toDate1" placeholder="To Date" disabled="disabled">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="price"
													id="price1" placeholder="Price" readonly="readonly">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<!-- <button type="button" class="btn btn-raised gradient-right"
												id="plusbtn1">Add</button>
											<button type="button" class="btn btn-raised gradient-right"
												id="removePlusBtn1">Add</button> -->
									<button type="button" id="plusbtn1" class="plusIcon" title="Add Price"><img src="resources/images/icons8-Add-80.png" class="img-responsive"></button>
									<button type="button" id="removePlusBtn1" class="minusIcon" title="Remove Price"><img src="resources/images/minus.png" class="img-responsive"></button>
									<button type="button" id="clearPlusBtn1" class="clearIcon1" title="Clear Price Details"><img src="resources/images/icons8-Clear Symbol-80.png" class="img-responsive"></button>				
										</div>
									</div>
								</div>
								<div class="row clearfix hideDiv" id="photographerPricing2">
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
													name="toDate" id="toDate2" placeholder="To Date" disabled="disabled">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="price"
													id="price2" placeholder="Price" readonly="readonly">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<!-- <button type="button" class="btn btn-raised gradient-right"
												id="plusbtn2">Add</button>
											<button type="button" class="btn btn-raised gradient-right"
												id="removePlusBtn2">Add</button> -->
									<button type="button" id="plusbtn1" class="plusIcon" title="Add Price"><img src="resources/images/icons8-Add-80.png" class="img-responsive"></button>
									<button type="button" id="removePlusBtn2" class="minusIcon" title="RemovePrice"><img src="resources/images/minus.png" class="img-responsive"></button>
									<button type="button" id="clearPlusBtn2" class="clearIcon1" title="Clear Price Details"><img src="resources/images/icons8-Clear Symbol-80.png" class="img-responsive"></button>				
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="header marginb15">
									<h2>Advance Payment / Discount / Availability Details</h2>
								</div>
							</div>
							<div class="row clearfix">
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="number" class="form-control" name="advancePaymentPercentage" id="advancePaymentPercentage"
												placeholder="Advance Payment percentage">
										</div>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12" id="availabilityDiv">
									<div class="form-group drop-custum">
										<select class="form-control show-tick" name="availability" id="availability">
											<option value="">-- Availability --</option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</div>
								<div class="col-sm-4 col-xs-12">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" name="freebie" id="freebie" placeholder="Freebie">
										</div>
									</div>
								</div>
							</div>
							<div class="row clearfix">
								<div class="header marginb15">
									<h2>Delivery Details</h2>
								</div>
							</div>
							<div class="row clearfix"></div>
							<div class="row clearfix">
								<div class="header marginb15 margin-bottom10">
									<div class="checkbox header-add">
										<label> <input type="checkbox" value="" id="discountCheck" > <span
											class="cr" id="bank-check"> <i
												class="cr-icon glyphicon glyphicon-ok"></i>
										</span> Discount Details(if any)
										</label>
									</div>
								</div>
							</div>
							<div id="discountDiv">
								<div class="row clearfix">
									<div class="col-sm-3 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="datepicker form-control"
													name="fromDateDiscount" id="fromDateDiscount"
													placeholder="From Date">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="datepicker form-control"
													name="toDateDiscount" id="toDateDiscount"
													placeholder="To Date">
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="form-line">
												<input type="text" class="form-control" name="discount" id="discount"
												placeholder="Amount / Percentage">
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="checkBoxDiscountAmount" id="checkBoxDiscountAmount">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Discount Amount
												</label> 
											</div>
										</div>
									</div>
									<div class="col-sm-2 col-xs-12">
										<div class="form-group mrgn-less-15">
											<div class="checkbox">
												<label class="labelCheckbox"> <input type="checkbox"
													name="checkBoxDiscountPercent" id="checkBoxDiscountPercent">
													<span class="cr"><i
														class="cr-icon glyphicon glyphicon-ok"></i></span> Discount Percent
												</label> 
											</div>
										</div>
									</div>
								</div>
								<div class="row clearfix">
							<div class="col-md-12 col-xs-12 hideDiv" id="showDiscountDiv">
							<div class="form-group">
											<button type="button" class="btn btn-raised gradient-right"
												id="showPreviousDiscounts" data-toggle="modal" data-target="#showDiscountModal">Show Discount</button>
										</div>
							</div>
							</div>
							</div>
							<div class="row clearfix"></div>
							<div class="row clearfix hideDiv" id="productStatusHeader">
								<div class="header marginb15">
									<h2>Product Status</h2>
								</div>
							</div>
							<div class="row clearfix">
							<div class="col-md-6 col-xs-6 hideDiv" id="productStatusDiv">
									<div class="form-group drop-custum">
										<select class="form-control show-tick">
											<option value="">-- Availability --</option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
								</div>
								</div>
							<div class="row clearfix">
								<div class="col-xs-12">
									<input type="hidden" name="photographyTypeName" id="photographyTypeName" value="">
									<input type="hidden" name="photographyOccasionName" id="photographyOccasionName" value="">
<!-- 									<input type="hidden" name="photoAvailabiltyClick" id="photoAvailabiltyClick" value="">
 -->								<input type="hidden" name="editProductId" id="editProductId" value="">
 									<input type="hidden" name="allProductId" id="allProductId" value="">	
 									<input type="hidden" name="productStatus" id="productStatus" value="">
									<input type="hidden" name="productAvailability" id="productAvailability" value="">
									<button type="submit" class="btn btn-raised gradient-right" id="submit">Submit</button>
									<button type="submit" class="btn btn-raised gradient-left" data-toggle="modal" data-target="#myModal" data-dismiss="modal">Cancel</button>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
            </div>
            
           
    </section>
    
    
    <script src="resources/js/dropzone.js"></script>
    <script src="resources/js/rsvp.js"></script>
    <script src="resources/js/frame-grab.js"></script>
	<!-- Dropzone Plugin Js  -->
	<script src="resources/js/jquery-2.1.3.min.js"></script>
		<script src="resources/js/jwplayer.js"></script> 
<script>jwplayer.key="5ZvM0G/PeHL2Q+mOm6ysDiHoWSpMMo3CSiYc7Q==";</script> 
	<!-- <script src="resources/js/bootstrap.js"></script> -->
	<script src="resources/js/sweetalert.min.js"></script>

	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
	<script type="text/javascript">
	var idForFetch;
	$(document).ready(function (){
		fetchAllPhotographerType();
		fetchAllPhotographerOccasion();
		
		if(location.href.match(/id/)){
			idForFetch = location.search.split("?");
			idForFetch = idForFetch[1].split("=");
			idForFetch = idForFetch[1];
			fetchPhotographerById(idForFetch);
		}
		$("#advancePaymentPercentage,#price,#price1,#price2,#discount").val(parseFloat("0").toFixed(2));
		
	});
	/* <img src = \"resources/images/videoIcon.png\" height = \"60\" width = \"60\" /> */
	var dateTime = new Date().getTime(); 
	var doNotRemoveFields = 0;
	var videoFiles = "";
	var videoClassPath = "";
	var hasValue = Number(0);
	var defaultImageId = "";
	var defaultVideoId = "";
	var modelId = "";
	var modelVideoId = "";
	//Upload and renaming the files being uploaded in dropzone.js
	Dropzone.options.videoUpload = {
		url : "singleUpload",
		acceptedFiles: ".mp4,.mkv,.avi,.wmv",
		addRemoveLinks: true,
		 previewTemplate : "<div class=\"dz-preview dz-file-preview\">"
		+"<div class=\"dz-image\"><img data-dz-thumbnail /></div>"
		+"<div class=\"dz-details\">"        
		+"<div class=\"dz-size\"><span data-dz-size></span></div>"  
		+"<div class=\"dz-filename\"><span data-dz-name></span></div>"
		+"</div><div class=\"dz-progress\"><span class=\"dz-upload\" data-dz-uploadprogress></span></div>"
		+"<div class=\"dz-error-message\"><span data-dz-errormessage></span></div>"
		+"<div class=\"dz-success-mark\"><svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Check</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <path d=\"M23.5,31.8431458 L17.5852419,25.9283877 C16.0248253,24.3679711 13.4910294,24.366835 11.9289322,25.9289322 C10.3700136,27.4878508 10.3665912,30.0234455 11.9283877,31.5852419 L20.4147581,40.0716123 C20.5133999,40.1702541 20.6159315,40.2626649 20.7218615,40.3488435 C22.2835669,41.8725651 24.794234,41.8626202 26.3461564,40.3106978 L43.3106978,23.3461564 C44.8771021,21.7797521 44.8758057,19.2483887 43.3137085,17.6862915 C41.7547899,16.1273729 39.2176035,16.1255422 37.6538436,17.6893022 L23.5,31.8431458 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" stroke-opacity=\"0.198794158\" stroke=\"#747474\" fill-opacity=\"0.816519475\" fill=\"#FFFFFF\" sketch:type=\"MSShapeGroup\"></path>\n      </g>\n    </svg>\</div>"
		+"<div class=\"dz-error-mark\"><svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Error</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <g id=\"Check-+-Oval-2\" sketch:type=\"MSLayerGroup\" stroke=\"#747474\" stroke-opacity=\"0.198794158\" fill=\"#FFFFFF\" fill-opacity=\"0.816519475\">\n          <path d=\"M32.6568542,29 L38.3106978,23.3461564 C39.8771021,21.7797521 39.8758057,19.2483887 38.3137085,17.6862915 C36.7547899,16.1273729 34.2176035,16.1255422 32.6538436,17.6893022 L27,23.3431458 L21.3461564,17.6893022 C19.7823965,16.1255422 17.2452101,16.1273729 15.6862915,17.6862915 C14.1241943,19.2483887 14.1228979,21.7797521 15.6893022,23.3461564 L21.3431458,29 L15.6893022,34.6538436 C14.1228979,36.2202479 14.1241943,38.7516113 15.6862915,40.3137085 C17.2452101,41.8726271 19.7823965,41.8744578 21.3461564,40.3106978 L27,34.6568542 L32.6538436,40.3106978 C34.2176035,41.8744578 36.7547899,41.8726271 38.3137085,40.3137085 C39.8758057,38.7516113 39.8771021,36.2202479 38.3106978,34.6538436 L32.6568542,29 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" sketch:type=\"MSShapeGroup\"></path></g></g></svg></div></div></div>",
		init : function() {
				self = this;
				
				// for video files, use frame-grab to generate a preview.
				this.on("addedfile",function(file) {

									// check file extension, see:
									// http://stackoverflow.com/questions/190852/how-can-i-get-file-extensions-with-javascript
									 var comps = file.name.split(".");
									if (comps.length === 1
											|| (comps[0] === "" && comps.length === 2)) {
										return;
									}
									var ext = comps.pop().toLowerCase();
									if (ext == 'mov' || ext == 'mpeg'
											|| ext == 'mp4' || ext == 'wmv') {

										// create a hidden <video> element with video file.
										FrameGrab
												.blob_to_video(file)
												.then(
														function videoRendered(
																videoEl) {

															// extract video frame at 1 sec into a 160px image and
															// set to the <img> element.
															var frameGrab = new FrameGrab(
																	{
																		video : videoEl
																	});
															frameGrab
																	.grab(
																			'img',
																			1,
																			160)
																	.then(
																			function frameGrabbed(
																					itemEntry) {
																				self
																						.emit(
																								'thumbnail',
																								file,
																								itemEntry.container.src);
																			},
																			function frameFailedToGrab(
																					reason) {
																				console
																						.log("Can't grab the video frame from file: "
																								+ file.name
																								+ ". Reason: "
																								+ reason);
																			});
														},
														function videoFailedToRender(
																reason) {
															console
																	.log("Can't convert the file to a video element: "
																			+ file.name
																			+ ". Reason: "
																			+ reason);
														});
									} 
									
									 
									 if (self.files.length) {
							        var i, len;
							         for (i = 0, len = self.files.length; i < len - 1; i++) // -1 to exclude current file
							        {
							            if(self.files[i].name === file.name && self.files[i].size === file.size && self.files[i].lastModifiedDate.toString() === file.lastModifiedDate.toString())
							            {
							                self.removeFile(file);
							            }
							        } 
								 } 
							});
				this.on("removedfile" , function(file){
					if(videoFiles === ""){
					   if(this.element.classList.contains("dz-started")){
							this.element.classList.remove("dz-started");
						} 
				   }
				});
				this.on("success", function(file, response) {
					var a = this.element.classList+"";
					a = a.split("_");
					videoClassPath = $("form." + "_" + a[1]).parent().attr("class");
					videoClassPath = videoClassPath.split("_");
					if(videoFiles === ""){
						videoFiles = "Photographer"+"_"+videoClassPath[1]+"_"+dateTime+file.name;
					}else{
						videoFiles = videoFiles + ","+ "Photographer"+"_"+videoClassPath[1]+"_"+dateTime+file.name;
					}
					$("#videoUpload .dz-remove").click(function(e){
						e.preventDefault();
					    e.stopPropagation();
					    var imageId = $(this).parent().find(".dz-filename > span").text();
					    var sample = imageId.split("_");
					    sample = sample[0]+"_"+videoClassPath[1]+"_"+sample[1];
					    var abc = videoFiles.split(",");
					    
					    if(sample === abc[0] && multipleFiles.indexOf(",") < 0){
					    	videoFiles ="";
					    	
					    }
					    
					    if (videoFiles.indexOf(",") >= 0) {
					    	videoFiles = "";
					    	for(var i =0; i< abc.length; i++){
					    		if(abc[i] === sample){
					    			abc[i] = "";
					    		}else{
					    			if(videoFiles === ""){
					    				videoFiles = abc[i];
					    			}else{
					    				videoFiles = videoFiles +","+abc[i];
					    			}
					    		}
					    	}
					    	
					    }
						var job = {};
					     job["imageId"] = imageId;
					    $
						.ajax({
							type : "POST",
							url : "admin-removeUnusedImagesVideos",
							data : JSON.stringify(job),
							contentType : "application/json",
							processData : false,
							success : function(data) {
							},
							error : function(e) {
								alert("Error");
								swal({
									title : 'Error!',
									text : 'Unused Images Cannot Be Removed!!!',
									type : 'error',
									confirmButtonText : "OK",
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							}
						}); 
					    
					});
				});
				
				this.on("error", function(file){if (!file.accepted) this.removeFile(file);});
			},
			
		renameFilename : function(fileName) {
			var classpath = fileName;
			classpath = classpath.split("_");
			return "Photographer" + "_" + dateTime+classpath[0];
		}
		};
	
	var multipleFiles = "";
	var classPath = "";
	Dropzone.options.multipleUpload = {
			url : "singleUpload",
			addRemoveLinks: true,
			init : function() {
				this.on("success", function(file, response) {
					var a = this.element.classList+"";
					a = a.split("_");
					classPath = $("form." + "_" + a[1]).parent().attr("class");
					classPath = classPath.split("_");
					if(multipleFiles === ""){
						multipleFiles = "Photographer"+"_"+classPath[1]+"_"+dateTime+file.name;
					}else{
						multipleFiles = multipleFiles + ","+ "Photographer"+"_"+classPath[1]+"_"+dateTime+file.name;
					}
					
					$("#multipleUpload .dz-remove").click(function(e){
						e.preventDefault();
					    e.stopPropagation();
					    var imageId = $(this).parent().find(".dz-filename > span").text();
					    var sample = imageId.split("_");
					    sample = sample[0]+"_"+classPath[1]+"_"+sample[1];
					    var abc = multipleFiles.split(",");
					    
					    if(sample === abc[0] && multipleFiles.indexOf(",") < 0){
					    	multipleFiles ="";
					    	
					    }
					     if (multipleFiles.indexOf(",") >= 0) {
					    	multipleFiles = "";
					    	for(var i = 0; i< abc.length; i++){
					    		if(abc[i] === sample){
					    			abc[i] = "";
					    		}else{
					    			if(multipleFiles === ""){
					    				multipleFiles = abc[i];
					    			}else{
					    				multipleFiles = multipleFiles +","+abc[i];
					    				
					    			}
					    		}  
					    	}
					    	
					    }
						var job = {};
					    job["imageId"] = imageId;
					    $
						.ajax({
							type : "POST",
							url : "admin-removeUnusedImagesVideos",
							data : JSON.stringify(job),
							contentType : "application/json",
							processData : false,
							success : function(data) {
							},
							error : function(e) {
								alert("Error");
								swal({
									title : 'Error!',
									text : 'Unused Images Cannot Be Removed!!!',
									type : 'error',
									confirmButtonText : "OK",
									allowEscapeKey : true,
									confirmButtonClass : "btn btn-raised gradient-right",
									animation : true
								});
							}
						});
					    
					});
					
				});
				
				this.on("addedfile" , function(file){
					if (this.files.length) {
				        var i, len;
				        for (i = 0, len = this.files.length; i < len - 1; i++) // -1 to exclude current file
				        {
				            if(this.files[i].name === file.name && this.files[i].size === file.size && this.files[i].lastModifiedDate.toString() === file.lastModifiedDate.toString())
				            {
				                this.removeFile(file);
				            }
				        }
					 }
					
				});
				
				this.on("removedfile" , function(file){
					if(multipleFiles === ""){
					   if(this.element.classList.contains("dz-started")){
							this.element.classList.remove("dz-started");
						} 
				   }
				});
				
				this.on("error", function(file){if (!file.accepted) this.removeFile(file);});
			},
			renameFilename : function(fileName) {
				var classpath = fileName;
				classpath = classpath.split("_");
				return "Photographer" + "_" + dateTime+classpath[0];
			}
			
		};
 var modalVideoId;
 Dropzone.options.singleVideoUpload = {
			url : "singleUpload",
			acceptedFiles: ".mp4,.mkv,.avi,.wmv",
			init : function() {
				this.on("success", function(file, response) {
					if(defaultVideoId === Number(1)){
						defaultVideoId = "";
					}
					var a = this.element.classList+"";
					a = a.split("_");
					classPath = $("form." + "_" + a[1]).parent().attr("class");
					classPath = classPath.split("_");
					if(defaultVideoId === ""){
						defaultVideoId = "Photographer"+"_"+classPath[1]+"_"+dateTime+file.name+"_"+modalVideoId;
					}else{
						defaultVideoId = defaultImageId + ","+"Photographer"+"_"+classPath[1]+"_"+dateTime+file.name+"_"+modalVideoId;
					}
	 			});
			},
			renameFilename : function(fileName) {
				var classpath = fileName;
				classpath = classpath.split("_");
				return "Photographer" + "_" + dateTime+classpath[0];
				
			}
		}; 
		var ary = new Array();
		var arry3 = new Array();
		function fetchAllPhotographerType() {
			$
					.ajax({
						type : "GET",
						url : "admin-fetchAllPhotographyTypes",
						data : "",
						contentType : "application/json",
						processData : false,
						success : function(data) {
							$("#photographyTypeDiv").html("");
							if (data.status) {
								var arValue = "";
								while (ary.length > 0) {
									ary.pop();
								}
								var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Photo Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Photo Type--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
										+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulPhotoType0\">"
										+ "<li data-original-index=\"0\" class=\"selected\" id=\"photoTypeLi0\" onclick=\"clickPhotoTypeLi('"
										+ 0
										+ "','Photo Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Photo Type --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
								var cde = "";
								for (var i = 0; i < data.listAllPhotographyTypes.length; i++) {
									cde = cde
											+ "<li data-original-index='"
											+ Number(Number(i) + Number(1))
											+ "' id='photoTypeLi"
											+ Number(Number(i) + Number(1))
											+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoTypeLi('"
											+ Number(Number(i) + Number(1))
											+ "','"
											+ data.listAllPhotographyTypes[i].typeName
											+ "','"
											+ data.listAllPhotographyTypes[i].id
											+ "')\"><span class=\"text\">"
											+ data.listAllPhotographyTypes[i].typeName
											+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
									arValue = data.listAllPhotographyTypes[i].id
											+ "_"
											+ data.listAllPhotographyTypes[i].typeName;
									ary.push(arValue);
								}
								cde = cde + "</ul></div>"
								$("#photographyTypeDiv").html(abc + cde);
							}

						},
						error : function(e) {
							alert("Error");
							swal({
								title : 'Error!',
								text : 'Photography Type Not Fetched Successfully!!!',
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
		//On click of each li in Photography Type list 
		function clickPhotoTypeLi(liId, title1, photographyTypeId) {
			$("#photographyTypeName").val(photographyTypeId); //Hidden field to store the Photography Type Id
			var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--"+title1+ "--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"
					+ title1
					+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulPhotoType0\">"

			if (Number(liId) > Number(0)) {
				var selectedId = $(".selected").attr("id");
				previouLi = liId;

				abc = abc
						+ "<li data-original-index=\"0\" class=\"\" id=\"photoTypeLi0\" onclick=\"clickPhotoTypeLi('"
						+ 0
						+ "','Photo Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Photo Type --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < ary.length; i++) {
					var splittedArray = ary[i].split("_");

					if (Number(i) === Number(Number(liId) - Number(1))) {
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' class=\"selected\" id='photoTypeLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoTypeLi('"
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
								+ "' class=\"\" id='photoTypeLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick =\"clickPhotoTypeLi('"
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

				$("#photographyTypeDiv").html(abc + cde);

			} else {
				$("#photoTypeLi" + previousLi).removeClass("selected");
				$("#photoTypeLi0").addClass("selected");

				abc = abc
						+ "<li data-original-index=\"0\" class=\"selected\" id=\"photoTypeLi0\" onclick=\"clickLi('"
						+ 0
						+ "','Photo Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Photo Type --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < ary.length; i++) {
					var splittedArray = ary[i].split("_");
					cde = cde
							+ "<li data-original-index='"
							+ Number(Number(i) + Number(1))
							+ "' id='photoTypeLi"
							+ Number(Number(i) + Number(1))
							+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoTypeLi('"
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

				$("#photographyTypeDiv").html(abc + cde);
			}
		}

		function fetchAllPhotographerOccasion() {
			$
					.ajax({
						type : "GET",
						url : "admin-fetchAllPhotographyOccasions",
						data : "",
						contentType : "application/json",
						processData : false,
						success : function(data) {
							$("#photographyOccasionDiv").html("");
							if (data.status) {
								var arValue = "";
								while (arry3.length > 0) {
									arry3.pop();
								}
								var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- Occasion --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- Occasion --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
										+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulPhotoOccasion0\">"
										+ "<li data-original-index=\"0\" class=\"selected\" id=\"photoOccasionLi0\" onclick=\"clickPhotoOccasionLi('"
										+ 0
										+ "','Occasion')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
								var cde = "";
								for (var i = 0; i < data.listAllPhotographyOccasions.length; i++) {
									cde = cde
											+ "<li data-original-index='"
											+ Number(Number(i) + Number(1))
											+ "' id='photoOccasionLi"
											+ Number(Number(i) + Number(1))
											+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoOccasionLi('"
											+ Number(Number(i) + Number(1))
											+ "','"
											+ data.listAllPhotographyOccasions[i].occasionName
											+ "','"
											+ data.listAllPhotographyOccasions[i].id
											+ "')\"><span class=\"text\">"
											+ data.listAllPhotographyOccasions[i].occasionName
											+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
									arValue = data.listAllPhotographyOccasions[i].id
											+ "_"
											+ data.listAllPhotographyOccasions[i].occasionName;
									arry3.push(arValue);
								}
								cde = cde + "</ul></div>"
								$("#photographyOccasionDiv").html(abc + cde);
							}

						},
						error : function(e) {
							alert("Error");
							swal({
								title : 'Error!',
								text : 'Photography Occasion Not Fetched Successfully!!!',
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
		var lengthOccasions="";
		var titleLength = "";
		//On click of each li in Photography Occasion list 
		function clickPhotoOccasionLi(liId, title1, photographyOccasionId,classSelected) {
			if (classSelected === undefined || classSelected === "") {
				if (title === "") {
					title = title1;
					id = photographyOccasionId;
				}else {
					if(title1 === "Occasion" || title.indexOf("Occasion") >=0){
					title = "";
					}
					if(title === ""){
						title = title1;
						id = photographyOccasionId;
					}else{
						title = title + "," + title1;
						id = id + "," + photographyOccasionId;
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
			 
			if(lengthOccasions !=""){
				if(lengthOccasions > title.split(",").length){
					titleLength = "minus";
				}else if(lengthOccasions < title.split(",").length){
					titleLength = "plus";
				}
			}
				
			$("#photographyOccasionName").val(id); //Hidden field to store the Photography Occasion Id
			var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--"+title+ "--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"
					+ title
					+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulPhotoOccasion0\">"

			if (Number(liId) > Number(0)) {
				var selectedId = $(".selected").attr("id");
				previouLi = liId;

				abc = abc
						+ "<li data-original-index=\"0\" class=\"\" id=\"photoOccasionLi0\" onclick=\"clickPhotoOccasionLi('"
						+ 0
						+ "','Occasion')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < arry3.length; i++) {
					var splittedArray = arry3[i].split("_");

					if (Number(i) === Number(Number(liId) - Number(1))) {
						var classSelected = "";
						if (!($("#photoOccasionLi" + Number(liId))
								.hasClass("selected"))) {
							classSelected = "class = selected";
						}
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' "
								+ classSelected
								+ " id='photoOccasionLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoOccasionLi('"
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
								"#photoOccasionLi"
										+ Number(Number(i) + Number(1)))
								.hasClass("selected")) {
							classSelected = "class = selected";
						}
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' "
								+ classSelected
								+ " id='photoOccasionLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoOccasionLi('"
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

				$("#photographyOccasionDiv").html(abc + cde);

			} else {
				$("#photoOccasionLi" + previousLi).removeClass("selected");
				$("#photoOccasionLi0").addClass("selected");
				var classSelected = "";
				abc = abc
						+ "<li data-original-index=\"0\" class=\"selected\" id=\"photoOccasionLi0\" onclick=\"clickPhotoOccasionLi('"
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
							+ "' id='photoOccasionLi"
							+ Number(Number(i) + Number(1))
							+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoOccasionLi('"
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

				$("#photographyOccasionDiv").html(abc + cde);
			}
		}

		var pricingsDivNumber = Number(0); //Variable to  know number of times the new div has been added

		//On click of Add button
		$("#plusbtn,#plusbtn1,#plusbtn2").click(function() {
			 addDiv();
		});
		//For Adding new div
		function addDiv() {
			if ($("#fromDate" + pricingsDivNumber).val() === "" || $("#fromDate").val() === "") {
				swal({
					title : 'Warning!',
					text : 'Please Enter Starting Date of Price!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});

			} else if ($("#toDate" + pricingsDivNumber).val() === ""
					|| $("#toDate").val() === "") {
				swal({
					title : 'Warning!',
					text : 'Please Enter Ending Date of Price!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			} else if ($("#price" + pricingsDivNumber).val() === "" || $("#price").val() === "") {
				swal({
					title : 'Warning!',
					text : 'Please Enter Price of Product!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			} else {
			if(pricingsDivNumber === Number(0)){
				alert("In if");
				$("#fromDate").attr("disabled",true);
				$("#toDate").attr("disabled",true);
				$("#price").attr("disabled",true);	
			}else{
				$("#fromDate" +pricingsDivNumber).attr("disabled",true);
				$("#toDate" +pricingsDivNumber).attr("disabled",true);
				$("#price" +pricingsDivNumber).attr("disabled",true);	
			}	
			
			addOtherDivs();
		  }
	}
		function addOtherDivs(){
			if (Number(pricingsDivNumber) < Number(2)) {
				pricingsDivNumber = Number(Number(pricingsDivNumber) + Number(1));
				if (pricingsDivNumber === 1) {
					
					  var fromDate1 = moment($("#toDate").val(),"dddd DD MMMM YYYY");
					    fromDate1 = fromDate1.add(1,'days')
					    fromDate1 = moment(fromDate1).format("dddd DD MMMM YYYY");
					    fromPriceDate = fromDate1;
					    
					    momentCalender($,moment);
					    $("#fromDate1").bootstrapMaterialDatePicker({
							 format: 'dddd DD MMMM YYYY',
						     clearButton: true,
						     weekStart: 1,
						     time: false,
							 minDate:new Date()
						});
					    
					    if($("#fromDate1").val() === ""){
					    	$("#fromDate1").val(fromDate1);
					    }
					    var toDate1 = moment(fromDate1,"dddd DD MMMM YYYY");
					    toDate1 = toDate1.add(1,'days')
					    toDate1 = moment(toDate1).format("dddd DD MMMM YYYY"); 
					    
					    $("#toDate1").bootstrapMaterialDatePicker({
							 format: 'dddd DD MMMM YYYY',
						     clearButton: true,
						     weekStart: 1,
						     time: false,
							 minDate:new Date()
						}); 
					addDiv1();
				} else if (pricingsDivNumber === 2) {
					
					var fromDate2 = moment($("#toDate1").val(),"dddd DD MMMM YYYY");
				    fromDate2 = fromDate2.add(1,'days')
				    fromDate2 = moment(fromDate2).format("dddd DD MMMM YYYY");
				    fromPriceDate = fromDate2;
				    
					momentCalender($,moment);
				    $("#fromDate2").bootstrapMaterialDatePicker({
						 format: 'dddd DD MMMM YYYY',
					     clearButton: true,
					     weekStart: 1,
					     time: false,
						 minDate:new Date()
					});
				    if($("#fromDate2").val() === ""){
				    	$("#fromDate2").val(fromDate2);
				    }
				    var toDate2 = moment(fromDate2,"dddd DD MMMM YYYY");
				    toDate2 = toDate2.add(1,'days')
				    toDate2 = moment(toDate2).format("dddd DD MMMM YYYY");
				    
				    $("#toDate2").bootstrapMaterialDatePicker({
						 format: 'dddd DD MMMM YYYY',
					     clearButton: true,
					     weekStart: 1,
					     time: false,
						 minDate:new Date()
					}); 
					addDiv2();
				} else{
					addDiv3();
				}

			} else {
				swal({
					title : 'Warning!',
					text : 'You can only add 3 pricings at a time!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}
		}
		function addDiv1() {
			$("#photographerPricing1").attr("style", "display:block");
		}
		function addDiv2() {
			$("#photographerPricing2").attr("style", "display:block");
		}

		$("#removePlusBtn1").click(function() {
			removePhotographyPricingDiv(1);
		});
		$("#removePlusBtn2").click(function() {
			removePhotographyPricingDiv(2);
		});
		// For removing present div
		function removePhotographyPricingDiv(removeId) {
			$("#fromDate"+removeId).val("");
			$("#toDate"+removeId).val("");
			$("#price"+removeId).val("");
			$("#photographerPricing" + removeId).attr("style", "display:none");
			pricingsDivNumber = 0;
		}
		
		$("#submit").click(function(){
			if($("#productName").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Product Name!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#photographyTypeName").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Photo Type!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#photographyOccasionName").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Occasion Name!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#photoDescription").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Photo Description!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#noOfPhotosProvided").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter No. of Photos That Will Be Provided!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#videoDescription").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Video Description!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#videoLength").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Approximate Video Length That Will Be Provided!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#fromDate").val() === "" && idForFetch ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Starting Date For The Respective Price!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#toDate").val() === "" && idForFetch === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Ending Date For The Respective Price!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#price").val() === "" && idForFetch === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter At Least One Price For The Product!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#advancePaymentPercentage").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Advance Payment Percentage!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if($("#availability").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Availability Of The Product!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else if(multipleFiles === "" && defaultImageId ===""){
				swal({
					  title: 'Warning!',
					  text: 'Please Upload AtLeast One Product Image!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else{
				
				var job = {};
				job["editProductId"] = $("#editProductId").val();
				job["allProductId"] = $("#allProductId").val();
				job["name"] = $("#productName").val();
				job["sellerId"] = $("#sellerId").val();
				job["photographyTypeName"] = $("#photographyTypeName").val();
				job["photographyOccasionName"] = $("#photographyOccasionName").val();
				if(multipleFiles === ""){
					job["multipleFiles"] = defaultImageId;
				}else{
					job["multipleFiles"] = multipleFiles;
				}
				job["description"] = $("#photoDescription").val();
				job["noOfPhotosProvided"] = $("#noOfPhotosProvided").val();
				if(videoFiles === ""){
					job["videoFiles"] = Number(0);
				}else{
					job["videoFiles"] = videoFiles;
				}
				job["videoDescription"] = $("#videoDescription").val();
				job["videoLength"] = $("#videoLength").val();
				if(titleLength !=""){
					job["titleLength"] = titleLength;
				}else{
					job["titleLength"] = "";
				}
				if(modelId !== ""){
					job["modelId"] = modelId;
				}
				if(modelVideoId !== ""){
					job["modelVideoId"] = modelVideoId;
				}
				if($("#fromDate").val() !==""){
					var fromDate = ($("#fromDate").val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
					var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
					if(fromMonth < 10){
						fromMonth = "0"+fromMonth;
					} 
					job["fromDate"] = fromDate[3]+"-"+fromMonth+"-"+fromDate[1]; 
				}
				
				if($("#toDate").val() !=""){
					var toDate = ($("#toDate").val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
					var toMonth = getMonth(toDate[2]);   //Method to convert month name to month number
					if(toMonth < 10){
						toMonth = "0"+toMonth;
					} 
					job["toDate"] = toDate[3]+"-"+toMonth+"-"+toDate[1]; 
				}
				
				
				job["price"] = $("#price").val();
				if(pricingsDivNumber > Number(0)){
					for(var k = 1; k<= Number(pricingsDivNumber) ; k++){
						if(!(($("#fromDate"+k).val() === undefined) && ($("#toDate"+k).val() === undefined) && ($("#price"+k).val() === undefined))){
							 var fromDate = ($("#fromDate"+k).val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
							var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
							if(fromMonth < 10){
								fromMonth = "0"+fromMonth;
							} 
							
							var toDate = ($("#toDate"+k).val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
							var toMonth = getMonth(toDate[2]);   //Method to convert month name to month number
							if(toMonth < 10){
								toMonth = "0"+toMonth;
							} 
							if(k === Number(1)){
								job["otherPriceDetails"] = fromDate[3]+"-"+fromMonth+"-"+fromDate[1]+","+toDate[3]+"-"+toMonth+"-"+toDate[1]+","+$("#price"+k).val();
							}else{
								job["otherPriceDetails"] = job["otherPriceDetails"]+"_"+fromDate[3]+"-"+fromMonth+"-"+fromDate[1]+","+toDate[3]+"-"+toMonth+"-"+toDate[1]+","+$("#price"+k).val();
							}
						}
					}
				}
				var categoryName = window.location+"";
				categoryName = categoryName.split("/");
				job["categoryName"] = categoryName[4];
				if($("#productStatus").val() !== ""){
					job["productStatus"] = $("#productStatus").val();
				}
				job["advancePaymentPercentage"] = $("#advancePaymentPercentage").val();
				if($("#productAvailability").val() !== ""){
					job["availability"] = $("#productAvailability").val();
				}else{
					job["availability"] = $("#availability").val();
				}
				job["freebie"] = $("#freebie").val();
				
					if((($("#fromDateDiscount").val() || $("#toDateDiscount").val())!="") || ($("#discount").val() !="" && $("#discount").val() !="0.00") || $("#checkBoxDiscountAmount,#checkBoxDiscountPercent").is(':checked'))
					{
						hasValue = Number(1);
						if($("#fromDateDiscount").val() === ""){
							swal({
								  title: 'Warning!',
								  text: 'Please Enter Starting Date For The Respective Discount!!!',
								  type: 'warning',
								  confirmButtonText: 'OK',
								  allowEscapeKey:true,
								  confirmButtonClass:"btn btn-raised gradient-right",
								  animation:true
								});
						}else if($("#toDateDiscount").val() === ""){
							swal({
								  title: 'Warning!',
								  text: 'Please Enter Ending Date For The Respective Discount!!!',
								  type: 'warning',
								  confirmButtonText: 'OK',
								  allowEscapeKey:true,
								  confirmButtonClass:"btn btn-raised gradient-right",
								  animation:true
								});
						}else if($("#discount").val() === ""){
							swal({
								  title: 'Warning!',
								  text: 'Please Enter Discount Amount / Percentage!!!',
								  type: 'warning',
								  confirmButtonText: 'OK',
								  allowEscapeKey:true,
								  confirmButtonClass:"btn btn-raised gradient-right",
								  animation:true
								});
						}else if(!($("#checkBoxDiscountAmount,#checkBoxDiscountPercent").is(':checked'))){
							swal({
								  title: 'Warning!',
								  text: 'Please Check Either The Discount Entered Is Flat Discount Or Percentage Discount!!!',
								  type: 'warning',
								  confirmButtonText: 'OK',
								  allowEscapeKey:true,
								  confirmButtonClass:"btn btn-raised gradient-right",
								  animation:true
								});
						}else{
							job["hasValue"] = hasValue;
							if($("#fromDateDiscount").val() !== ""){
								
							}
							var fromDate = ($("#fromDateDiscount").val()).trim().split(/\s+/);  //Trimming the from Date For white spaces 
							var fromMonth = getMonth(fromDate[2]);   //Method to convert month name to month number
							if(fromMonth < 10){
								fromMonth = "0"+fromMonth;
							} 
							job["fromDateDiscount"] = fromDate[3]+"-"+fromMonth+"-"+fromDate[1];
							
							var toDate = ($("#toDateDiscount").val()).trim().split(/\s+/);  //Trimming the to Date For white spaces 
							var toMonth = getMonth(toDate[2]);   //Method to convert month name to month number
							if(toMonth < 10){
								toMonth = "0"+toMonth;
							} 
							job["toDateDiscount"] =toDate[3]+"-"+toMonth+"-"+toDate[1];
							job["discount"] = $("#discount").val();
							if($("#checkBoxDiscountAmount").is(':checked')){
								job["isFlat"] = Number(1);
							}else{
								job["isFlat"] = Number(0);
							}
							
							$("#submit").prop("disabled", true);
							$.ajax({
							type : "POST",
							url : "admin-addEditPhotographer",
							data : JSON.stringify(job),
							processData : false,
							contentType :"application/json",
							success : function(data) {
								if(data){
									if($("#editProductId").val() !=""){
										window.location = "admin-viewPhotographyProducts";
									}else{
										swal({
											  title: 'Success!',
											  text: 'Product Details Successfully Inserted!!!',
											  type: 'success',
											  showConfirmButton :false,
											  allowEscapeKey:true,
											  timer:3000,
											  animation:true
											});
									}
									
								}else{
									doNotRemoveFields = 1;
								}
								$("#submit").prop("disabled", false);
	
							},
							error : function(e) {
								swal({
									  title: 'Error!',
									  text: 'Product Details Not Inserted Successfully!!!',
									  type: 'error',
									  confirmButtonText :"OK",
									  allowEscapeKey:true,
									  confirmButtonClass:"btn btn-raised gradient-right",
									  animation:true
									});
								$("#submit").prop("disabled", false);
	
							},complete : function (){
										if(doNotRemoveFields === 0){
											removeAllFields();
										}else{
											doNotRemoveFields = 0;
										}
								} 
							
							}); 
						}
				 }else{
						job["hasValue"] = hasValue;
						
						$("#submit").prop("disabled", true);
						$.ajax({
						type : "POST",
						url : "admin-addEditPhotographer",
						data : JSON.stringify(job),
						processData : false,
						contentType :"application/json",
						success : function(data) {
							if(data){
								if($("#editProductId").val() !=""){
									window.location = "admin-viewPhotographyProducts";
								}else{
									swal({
										  title: 'Success!',
										  text: 'Product Details Successfully Inserted!!!',
										  type: 'success',
										  showConfirmButton :false,
										  allowEscapeKey:true,
										  timer:3000,
										  animation:true
										});
								}
							}
							$("#submit").prop("disabled", false);
	
						},
						error : function(e) {
							alert("Error");
							swal({
								  title: 'Error!',
								  text: 'Product Details Not Inserted Successfully!!!',
								  type: 'error',
								  confirmButtonText :"OK",
								  allowEscapeKey:true,
								  confirmButtonClass:"btn btn-raised gradient-right",
								  animation:true
								});
							$("#submit").prop("disabled", false);
	
						},complete : function (){
							
								if(doNotRemoveFields === 0){
									removeAllFields();
								}else{
									doNotRemoveFields = 0;
								}
							} 
						
						});  
					}
				}
		});
		//Converting month name to month number
		function getMonth(monthStr){
		    return new Date(monthStr+'-1-01').getMonth()+1
		}
		$("#discountCheck").click(function(){
			if($(this).is(':checked')) {
		       $("#discountDiv").attr("style","display:block");
		    }else{
		    	$("#discountDiv").attr("style","display:none");
		    }
		});
		
		function removeAllFields(){
			$("#productName").val("");
			$("#photographyTypeName").val("");
			$("#photographyOccasionName").val("");
			multipleFiles = "";
			$("#photoDescription").val("");
			$("#noOfPhotosProvided").val("");
			videoFiles = "";
			$("#videoDescription").val("");
			$("#videoLength").val("");
			$("#fromDate").val("");
			$("#toDate").val("");
			$("#price").val("");
			categoryName = "";
			$("#advancePaymentPercentage").val("");
			$("#availability").val("");
			$("#freebie").val("");
			videoClassPath = "";
			classPath = "";
			title = "";
			id = "";
			titleLength = "";
			lengthOccasions = "";
			defaultImageId = "";
			defaultVideoId = "";
			modelId = "";
			modelVideoId = "";
			if(hasValue === Number(1)){
				$("#fromDateDiscount").val("");
				$("#toDateDiscount").val("");
				$("#discount").val("");
				$("#checkBoxDiscountAmount,#checkBoxDiscountPercent").prop("checked",false);
			}
			if($("#discountCheck").is(':checked')){
				$("#discountCheck").prop("checked",false);
				$("#discountDiv").attr("style","display:none");
			}
			hasValue = Number(0);
			
			var j = pricingsDivNumber
			for(var k =1; k<= j ;k++){
				removePhotographyPricingDiv(k);
			}
			
			/* $("#availabilityDiv").html("");
			 var mno ="<div class=\"form-group drop-custum\">"
					+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\"-- Availability --\"><span class=\"filter-option pull-left\">-- Availability --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
					+"<ul class=\"dropdown-menu inner\" role=\"menu\">"
					+"<li data-original-index=\"0\" class=\"selected\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Availability --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"<li data-original-index=\"1\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"photoAvailabilityClick('Yes')\"><span class=\"text\">Yes</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					+"<li data-original-index=\"2\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"photoAvailabilityClick('No')\"><span class=\"text\">No</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
					+"</div>"
				$("#availabilityDiv").html(mno);
				$("#photoAvailabiltyClick").val(""); */
				
				/* //Removing the values from photography type list
				var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Photo Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Photo Type"
					+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" id=\"ulPhotoType0\">"
					 abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"photoTypeLi0\"  onclick=\"clickPhotoTypeLi('"
						+ 0
						+ "','Photo Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Photo Type --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var cde = "";
				for (var i = 0; i < ary.length; i++) {
					var splittedArray = ary[i].split("_");
						cde = cde
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' id='photoTypeLi"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoTypeLi('"
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
			
				$("#photographyTypeDiv").html(abc + cde); */
				
				defaultPhotoType(true,0,"Photo Type");
				//Removing the values from photography type list
				var efg = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Occasion--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Occasion"
					+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" id=\"ulPhotoOccasion0\">"
					 abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"photoOccasionLi0\"  onclick=\"clickPhotoOccasionLi('"
						+ 0
						+ "','Photo Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Photo Type --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				var ghi = "";
				for (var i = 0; i < arry3.length; i++) {
					var splittedArray = arry3[i].split("_");
						ghi = ghi
								+ "<li data-original-index='"
								+ Number(Number(i) + Number(1))
								+ "' id='photoOccasionLi0"
								+ Number(Number(i) + Number(1))
								+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoOccasionLi('"
								+ Number(Number(i) + Number(1))
								+ "','"
								+ splittedArray[1]
								+ "','"
								+ splittedArray[0]
								+ "')\"><span class=\"text\">"
								+ splittedArray[1]
								+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					
			}
				ghi = ghi + "</ul></div>"
			
				$("#photographyOccasionDiv").html(efg + ghi);
				if(idForFetch === undefined){
					alert("In if");
					//Remove the thumbnails after each insertion being completed from dropzone.js
					$('.dropzone')[0].dropzone.files.forEach(function(file) { 
							file.previewElement.remove(); 
						});

					 $('.dropzone')[1].dropzone.files.forEach(function(file) { 
							 file.previewElement.remove(); 
						});
					
					 $('.dropzone').removeClass(' dz-started ');
					 Dropzone.forElement("._photographerImages #multipleUpload").removeAllFiles();
					 Dropzone.forElement("._photographerVideos #videoUpload").removeAllFiles();
				}
		}
	$("#checkBoxDiscountAmount, #checkBoxDiscountPercent").click(function(){
		var check = Number(0);
		if($("#"+this.id).is(':checked')){
			check = Number(1);
		}
		$("#checkBoxDiscountAmount,#checkBoxDiscountPercent").prop("checked",false);
		
		if(check === Number(1)){
			$("#"+this.id).prop("checked",true);
		}
	});
	abc = "";
	cde = "";
	/* function photoAvailabilityClick(str,str3){
		$("#photoAvailabiltyClick").val(str);
		var clicked;
		$("#availabilityDiv").html("");
			var mno ="<div class=\"form-group drop-custum\">"
				+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+str+"  --\"><span class=\"filter-option pull-left\">--"+str+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
				+"<ul class=\"dropdown-menu inner\" role=\"menu\" id=\"photoAvailabiltyUl\">"
				+"<li data-original-index=\"0\" id=\"photoAvailabiltyLi0\"class=\"selected\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"photoAvailabilityClick('Availability','"+0+"')\"><span class=\"text\">-- Id Proof --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"1\" id=\"photoAvailabiltyLi1\"><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick=\"photoAvailabilityClick('Yes','"+1+"')\"><span class=\"text\">Yes</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"<li data-original-index=\"2\" id=\"photoAvailabiltyLi2\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"photoAvailabilityClick('No','"+2+"')\"><span class=\"text\">No</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				+"</div>"
		$("#availabilityDiv").html(mno);	
			var lengthOfUl = $("#photoAvailabiltyUl li").size();
			for(var i = 0;i<lengthOfUl; i++){
				
				if(str3 === undefined){
					var getdata = $("ul#photoAvailabiltyUl li#photoAvailabiltyLi"+Number(i)).find('span').text();
					if(getdata === str){
						$("#photoAvailabiltyLi0").removeClass("selected");
						$("#photoAvailabiltyLi"+Number(i)).addClass("selected");
					}
				}else{
					if(Number(i) === Number(str3)){
						$("#photoAvailabiltyLi"+Number(i)).addClass("selected");
					}else{
						$("#photoAvailabiltyLi"+Number(i)).removeClass("selected");
					}
				}
			}
	} */
	$("#fromDate,#toDate").mouseenter(function(){
		momentCalender($,moment);
		 var fromDate = moment();
		    fromDate = fromDate.add(1,'days')
		    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");

		    $("#fromDate").bootstrapMaterialDatePicker({
				 format: 'dddd DD MMMM YYYY',
			     clearButton: true,
			     weekStart: 1,
			     time: false,
				 minDate:new Date()
			});
		    var from = moment().format("dddd DD MMMM YYYY")
		    if( $("#fromDate").val() === ""){
		    	$("#fromDate").val(from);
		    }
		    $("#toDate").bootstrapMaterialDatePicker({
				 format: 'dddd DD MMMM YYYY',
			     clearButton: true,
			     weekStart: 1,
			     time: false,
				 minDate:fromDate
			});
		
	});
	
	$("#fromDateDiscount,#toDateDiscount").mouseenter(function(){
		momentCalender($,moment);
		 var fromDate = moment();
		    fromDate = fromDate.add(1,'days')
		    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");

		    $("#fromDateDiscount").bootstrapMaterialDatePicker({
				 format: 'dddd DD MMMM YYYY',
			     clearButton: true,
			     weekStart: 1,
			     time: false,
				 minDate:new Date()
			});
		    
		    $("#toDateDiscount").bootstrapMaterialDatePicker({
				 format: 'dddd DD MMMM YYYY',
			     clearButton: true,
			     weekStart: 1,
			     time: false,
				 minDate:fromDate
			});
		
	});
	
	var abc = "";
	function showImagesEdit(imageName,imageId){
			abc = abc + "<div class=\"col-md-2 col-sm-6 col-xs-12 editImages\">"
			+"<div class=\"thumbnail\">"
			+"<img src=\"getImageRaw?id="+imageName+"\" class=\"img-responsive\" data-toggle=\"modal\" onclick=\"showModal('"+imageName+"','"+imageId+"')\"/>"
			+"<span class=\"label label-danger prdctName\">25 December 2015</span>"
		    +"</div>"
	        +"</div>";
		
	      $("#photographerImagesDiv").html(abc);
	}
	
	function showModal(imageName, imageId){
		modalImageId = imageId;
		if(!($("#allModals").children("#"+imageId).length > 0)){
			var abc ="<div class=\"modal fade\" id="+imageId+" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">"
			+"<div class=\"modal-dialog\" role=\"document\">"
			+"<div class=\"modal-content row singleImageEdit\">"
			+"<div class=\"col-md-4 col-xs-6 col-sm-12 thumbnail\" id=\"editImageDiv\">"
			+"<img src=\"getImageRaw?id="+imageName+"\" class=\"img-responsive\"/>"
			+"</div>"
			+"<div class=\"col-md-8 col-xs-6 col-sm-12 _photographerImages\">"
			+"<form action=\"#\" id=\'singleUpload"+imageId+"\' class=\"dropzone\" method=\"post\" enctype=\"multipart/form-data\">"
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
			$("#allModals").append(abc);
			createUserDropzone(imageId);
		}
		$("#"+imageId).modal({
			backdrop: 'static',
		    keyboard: false,
		    show:true
		});
		
	}
	//Upload and renaming the files being uploaded in dropzone.js
	 var modalImageId;
	function createUserDropzone(imageId){
		 var myDropzone = new Dropzone("#allModals #singleUpload"+imageId, {
				url : "singleUpload",
				init : function() {
					this.on("success", function(file, response) {
						if(defaultImageId === Number(1)){
							defaultImageId = "";
						}
						var a = this.element.classList+"";
						a = a.split("_");
						classPath = $("form." + "_" + a[1]).parent().attr("class");
						classPath = classPath.split("_");
						if(defaultImageId === ""){
							defaultImageId = "Photographer"+"_"+classPath[1]+"_"+dateTime+file.name+"_"+modalImageId;
						}else{
							defaultImageId = defaultImageId + ","+"Photographer"+"_"+classPath[1]+"_"+dateTime+file.name+"_"+modalImageId;
						}
		 			});
				},
				renameFilename : function(fileName) {
					var classpath = fileName;
					classpath = classpath.split("_");
					return "Photographer" + "_" + dateTime+classpath[0];
					
					}
					
				});
		}
	
	var cde = ""
	function showVideosEdit(videoName,videoId){
		modalVideoId = videoId;
		cde = cde + "<div class=\"col-md-6 col-sm-6 col-xs-12 editVideos\">"
			+"<div class=\"thumbnail\">"
			+"<div id = \"myDiv\"></div>"
			+"<span class=\"label label-danger prdctName\">25 December 2015</span>"
		    +"</div>"
	        +"</div>";
	      $("#photographerVideosDiv").html(cde);
	      videoPlayer(videoName);
	}
	function videoPlayer(videoName){
		jwplayer("myDiv").setup({
			 sources: [{
			        file: "resources/images/VID-20170226-WA0000.mp4",
			        label: "720p HD"
			      }],
		    	    height: 360,
		    	    width: 640,
		    	    skin: {
		    	       name: "roundster",
		    	       /*  active: "red", */
		    	       /* inactive: "white", */
		    	      /*  background: "black"  */
		    	    },
		    	    autostart: false,
		    	    controls: true,
		    	    width: "50%",
		    	    ratio: "16:10",
		    	    aspectratio: "16:10",
		    	    stretching: "fill",
		    	    fullscreen: false,
		    	    responsive: true,
		    	    preload: "metadata",
		    	    players: [
						{ type: "flash", src: "resources/js/jwplayer.flash.swf" },
						{ type: "html5" }
					]
		    	    
		    	   /*  type: "hls",
		            hlslabels: {
		            "415": "128p",
		            "515": "160p",
		            "650": "208p",
		            "881":"252p",
		            "1200":"332p",
		            "1600": "432p",
		            "2300": "560p",
		            "3200":"720p"
		            }  */
		    	    });
	}
	
	function fetchPhotographerById(photoId){
		$.ajax({
			type : "GET",
			url : "admin-fetchPhotographerById?id="+photoId,
			data : "",
			processData : false,
			contentType : "application/json",
			success : function(data) {
					if(data==="null" || data===null || data==="" || typeof data === "undefined")
					{
						alert("Error Page");
					}
					if(data.status){
						$("#photoDescription").val(data.sellerPhotographer.description);
						$("#noOfPhotosProvided").val(data.sellerPhotographer.noOfPhotosProvided);
						$("#videoDescription").val(data.sellerPhotographer.videoDescription);
						$("#videoLength").val(data.sellerPhotographer.videoLength);
						$("#advancePaymentPercentage").val(data.sellerPhotographer.advancePaymentPercentage);
						$("#freebie").val(data.sellerPhotographer.freebie);
						$("#photographerImagesDiv").html("");
						$("#photographerVideosDiv").html("");
						for(var i =0; i< data.listProductImagesVideos.length; i++){
							 if(data.listProductImagesVideos[i].photoVideo){
								showImagesEdit(data.listProductImagesVideos[i].productImageVideoUrl,data.listProductImagesVideos[i].id);
								defaultImageId = Number(1);
								if(i === Number(0)){
									modelId = data.listProductImagesVideos[i].id;
								}else{
									modelId = modelId +"," + data.listProductImagesVideos[i].id;
									
								}
							}else{
								showVideosEdit(data.listProductImagesVideos[i].productImageVideoUrl,data.listProductImagesVideos[i].id);
								defaultVideoId = Number(1);
								if(i === Number(0)){
									modelVideoId = data.listProductImagesVideos[i].id;
								}else{
									modelVideoId = modelVideoId +"," + data.listProductImagesVideos[i].id;
									
								}
							}
							
						}
						$("#showPreviousPrices").attr("style","display:block");
						var priceDataTable = "";
						$("#priceTable > tbody").html("");
						for(var i=0; i<data.listProductPricings.length; i++){
							var active;
							if(data.listProductPricings[i].status){
								active = "Yes";
							}else{
								active = "No";
							}
							var xyz = new Date(data.listProductPricings[i].priceFromDate);
							xyz = xyz.getFullYear()+"-"+ (xyz.getMonth() + 1 > 9 ? xyz.getMonth() + 1 : "0"+(xyz.getMonth()+1)) +"-"+(xyz.getDate() > 9 ? xyz.getDate() : "0"+(xyz.getDate())) ;
							
							var mno = new Date(data.listProductPricings[i].priceToDate);
							mno = mno.getFullYear()+"-"+(mno.getMonth() +1>9 ? mno.getMonth() +1 : "0"+(mno.getMonth()+1)) + "-"+(mno.getDate() > 9 ? mno.getDate() : "0"+(mno.getDate()));
							
							priceDataTable = priceDataTable + "<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
							+"<td class=\"text-center\">"+xyz+"</td>"
							+"<td class=\"text-center\">"+mno+"</td>"
							+"<td class=\"text-center\"><i class=\"fa fa-inr\" aria-hidden=\"true\">"+data.listProductPricings[i].price+"</i></td>"
							+"<td class=\"text-center\">"+active+"</td>"
						}
						$("#priceTable > tbody").html(priceDataTable);
						if(data.listSellerDiscount[0] !== null){
							$("#discountCheck").prop("checked",true);
							$("#discountDiv").attr("style","display:block");
							var discountDataTable = "";
							$("#discountTable > tbody").html("");
							$("#showDiscountDiv").attr("style","display:block");
							for(var i = 0; i< data.listSellerDiscount.length; i++){
								var active;
								if(data.listSellerDiscount[i].status){
									active = "Yes";
								}else{
									active = "No";
								}
								var discount;
								if(data.listSellerDiscount[i].flatDiscount){
									discount ="<i class=\"fa fa-inr\" aria-hidden=\"true\">"+data.listSellerDiscount[i].discount+"</i>";
								}else{
								discount = data.listSellerDiscount[i].discount+" "+"%";
								}
								var xyz = new Date(data.listSellerDiscount[i].fromDateDiscount);
								xyz = xyz.getFullYear()+"-"+ (xyz.getMonth() + 1 > 9 ? xyz.getMonth() + 1 : "0"+(xyz.getMonth()+1)) +"-"+(xyz.getDate() > 9 ? xyz.getDate() : "0"+(xyz.getDate()));
								
								var mno = new Date(data.listSellerDiscount[i].toDateDiscount);
								mno = mno.getFullYear()+"-"+(mno.getMonth() +1>9 ? mno.getMonth() +1 : "0"+(mno.getMonth()+1)) + "-"+(mno.getDate() > 9 ? mno.getDate() : "0"+(mno.getDate()));
								discountDataTable = discountDataTable +"<tr><td class=\"text-center\">"+Number(Number(i) + Number(1))+"</td>"
								+"<td class=\"text-center\">"+xyz+"</td>"
								+"<td class=\"text-center\">"+mno+"</td>"
								+"<td class=\"text-center\">"+discount+"</td>"
								+"<td class=\"text-center\">"+active+"</td>"
							}
							$("#discountTable > tbody").html(discountDataTable);
						}
						$("#productStatusDiv").attr("style","display:block");
						
						if(data.sellerPhotographer.active){
							productStatus("Active");
							$("#productStatus").val("Active");
						}else{
							productStatus("Inactive");
							$("#productStatus").val("Inactive")
						}
						if(data.sellerPhotographer.availability === "Yes"){
							productAvailability("Yes");
						}else{
							productAvailability("No");
						}
						$("#photographyTypeName").val(data.sellerPhotographer.photographyType.id);
						defaultPhotoType(false,Number(data.sellerPhotographer.photographyType.id),data.sellerPhotographer.photographyType.typeName);
						var occasionId = "";
						var occasionName = "";
						for(var i=0; i<data.listPhotographyOccasions.length;i++){
							if(Number(i) === Number(0)){
								occasionId = data.listPhotographyOccasions[i].photographyOccasion.id;
								occasionName = data.listPhotographyOccasions[i].photographyOccasion.occasionName;
							}else{
								occasionId = occasionId +","+data.listPhotographyOccasions[i].photographyOccasion.id;
								occasionName = occasionName +","+data.listPhotographyOccasions[i].photographyOccasion.occasionName;
							}
						}
						$("#productStatusHeader").removeClass("hideDiv");
						
						$("#photographyOccasionName").val(occasionId);
						title = occasionName;
						id = occasionId;
						lengthOccasions = data.listPhotographyOccasions.length;
						titleLength = "same";
						defaultPhotoOccasion(false,occasionId,occasionName);
						$("#productNameDiv").html("");
						var productNameDiv = "<div class=\"col-sm-6 col-xs-12\">"
						+"<div class=\"form-group\">"
						+"<div class=\"form-line\">"
						+"<input type=\"text\" class=\"form-control\" name=\"productName\" id =\"productName\" value="+data.sellerPhotographer.name+" placeholder=\"Product Name\">"
						+"</div>"
						+"</div>"
						+"</div>"
						+"<div class=\"col-sm-6 col-xs-12\">"
						+"<div class=\"form-group\">"
						+"<div class=\"form-line\">"
						+"<input type=\"text\" class=\"form-control\" name=\"productId\" id =\"productId\" value ="+data.sellerPhotographer.id+" readonly=\"readonly\" placeholder=\"Product Id\">"
						+"</div>"
					    +"</div>"
						+"</div>"
						$("#productNameDiv").html(productNameDiv);
						$("#editProductId").val(data.sellerPhotographer.id);
						$("#allProductId").val(data.sellerPhotographer.allProducts.id);
					}
			},error : function (data){
				alert("Error");
			}
		});
	}
	
	function productStatus(str,str3){
		$("#productStatus").val(str);
		if(str === "0" || str === undefined){
			str = "Product Status";
		}
		var mno ="<div class=\"form-group drop-custum\">"
			+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+str+"  --\"><span class=\"filter-option pull-left\">--"+str+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
			+"<ul class=\"dropdown-menu inner\" role=\"menu\" id=\"productStatusUl\">"
			+"<li data-original-index=\"0\" id=\"productStatusLi0\"class=\"selected\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"productStatus('Product Status','"+0+"')\"><span class=\"text\">Product Status</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			+"<li data-original-index=\"1\" id=\"productStatusLi1\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"productStatus('Active','"+1+"')\"><span class=\"text\">Active</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			+"<li data-original-index=\"2\" id=\"productStatusLi2\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"productStatus('Inactive','"+2+"')\"><span class=\"text\">Inactive</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
			+"</div>"
			
		$("#productStatusDiv").html(mno);	
		var lengthOfUl = $("#productStatusUl li").size();
		for(var i = 0;i<lengthOfUl; i++){
			var getdata = $("ul#productStatusUl li#productStatusLi"+Number(i)).find('span').text();
				if(str === getdata){
					$("#productStatusLi"+Number(i)).addClass("selected");
				}else{
					$("#productStatusLi"+Number(i)).removeClass("selected");
				}
		}
		
	}
	
	function productAvailability(str,str3){
		$("#productAvailability").val(str);
		if(str === "0" || str === undefined){
			str = "Availability";
		}
		var mno ="<div class=\"form-group drop-custum\">"
			+"<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" data-id=\"packageFor\" title=\--"+str+"  --\"><span class=\"filter-option pull-left\">--"+str+"--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\">"
			+"<ul class=\"dropdown-menu inner\" role=\"menu\" id=\"productAvailabilityUl\">"
			+"<li data-original-index=\"0\" id=\"productAvailabilityLi0\"class=\"selected\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick=\"productAvailability('Product Status','"+0+"')\"><span class=\"text\">Availability</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			+"<li data-original-index=\"1\" id=\"productAvailabilityLi1\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"productAvailability('Yes','"+1+"')\"><span class=\"text\">Yes</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			+"<li data-original-index=\"2\" id=\"productAvailabilityLi2\"><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick=\"productAvailability('No','"+2+"')\"><span class=\"text\">No</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li></ul></div>"
			+"</div>"
			
		$("#availabilityDiv").html(mno);	
		var lengthOfUl = $("#productAvailabilityUl li").size();
		for(var i = 0;i<lengthOfUl; i++){
			var getdata = $("ul#productAvailabilityUl li#productAvailabilityLi"+Number(i)).find('span').text();
				if(str === getdata){
					$("#productAvailabilityLi"+Number(i)).addClass("selected");
				}else{
					$("#productAvailabilityLi"+Number(i)).removeClass("selected");
				}
		}
		
	}
	function defaultPhotoType(isInComplete,typeId,typeName){
		// Removing the values from the photo type list
		var abc ="";
		if(isInComplete){
			 abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Photo Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Photo Type"
				+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulPhotoType0\">"
				 abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"photoTypeLi0\" onclick=\"clickPhotoTypeLi('"
					+ 0
					+ "','Photo Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">Photo Type</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		}else{
			abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=--"+typeName+"-- aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"+typeName
			+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
			+ "<li data-original-index=\"0\" id=\"photoTypeLi0\" onclick=\"clickPhotoTypeLi('"+ 0+ "','Photo Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Photo Type --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		}
		var cde = "";
		for (var i = 0; i < ary.length; i++) {
			var splittedArray = ary[i].split("_");
			var classSelected = ""
			if(!isInComplete){
				if(Number(splittedArray[0]) === Number(typeId)){
					classSelected = "class = selected";
				}
			}
				cde = cde
				+ "<li data-original-index='"
				+ Number(Number(i) + Number(1))+ "'id='photoTypeLi"+ Number(Number(i) + Number(1))+ "' "+classSelected+"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoTypeLi('"
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
		
		$("#photographyTypeDiv").html(abc + cde);
		
	}
	function defaultPhotoOccasion(isInComplete,occasionId,occasionName){
		// Removing the values from the photo type list
		var abc ="";
		if(isInComplete){
			 abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- Occasion --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- Occasion --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
				+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulPhotoOccasion0\">"
				+ "<li data-original-index=\"0\" class=\"selected\" id=\"photoOccasionLi0\" onclick=\"clickPhotoOccasionLi('"
				+ 0
				+ "','Occasion')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		}else{
			abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\--" +occasionName+ "--\ aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- "+occasionName+" --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
				+ "<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulPhotoOccasion0\">"
				+ "<li data-original-index=\"0\" class=\"\" id=\"photoOccasionLi0\" onclick=\"clickPhotoOccasionLi('"
				+ 0
				+ "','Occasion')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
		}
		var cde = "";
		var subOccasion = occasionId+"";
		if(subOccasion.length !== 1){
			subOccasion = occasionId.split(","); 
		}
		
		for (var i = 0; i < arry3.length; i++) {
			var splittedArray = arry3[i].split("_");
			var classSelected = ""
			if(!isInComplete){
				for(var j=0; j< subOccasion.length; j++){
					
					if(Number(splittedArray[0]) === Number(subOccasion[j])){
						classSelected = "class = selected";
					}
				}
				
			}
				cde = cde
				+ "<li data-original-index='"
				+ Number(Number(i) + Number(1))+ "'id='photoOccasionLi"+ Number(Number(i) + Number(1))+ "' "+classSelected+"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoOccasionLi('"
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
		cde = cde + "</ul></div>"
		
		$("#photographyOccasionDiv").html(abc + cde);
		
	}
	/*  $("#advancePaymentPercentage").on("keyup",function(){
		$("#advancePaymentPercentage").val(addZeroes($("#advancePaymentPercentage").val()));
	});
	function addZeroes( num ) {
		 var num = Number(num);
		   if (String(num).split(".")[0].length < 2){
		          num = num.toFixed(2);
		      }
		   return num;
		}  */
	
		$("#advancePaymentPercentage").on("keyup",function(){
			$("#advancePaymentPercentage").val(parseFloat(this.value).toFixed(2));
		});
		$("#videoLengthHH").on("keypress",function(){
			if(this.value.length === Number(1)){
				$("#videoLengthmm").prop("readonly",false);
			}
		});
		 $("#fromDate").mouseleave(function(){
				if( $("#fromDate").val() !== ""){
					$("#toDate").attr("disabled",false);
					$("#fromDate").attr("disabled",true);
				}
			 });
			 $("#toDate").mouseleave(function(){
				if($("#toDate").val() !==""){
					 var fromDate = moment($("#toDate").val(),"dddd DD MMMM YYYY");
					    fromDate = fromDate.add(1,'days');
					    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");
					    if($("#fromDate1").val() === ""){
					    	$("#fromDate1").val(fromDate);
					    }
					}	
			});
			 $("#price").click(function(){
				 if($("#toDate").val() !== ""){
					 $("#price").attr("readonly",false);
					 $("#toDate") .attr("disabled",true);
				 }
			 });
			 
			 $("#fromDate1").mouseleave(function(){
				 if( $("#fromDate1").val() !== ""){
						$("#toDate1").attr("disabled",false);
						$("#fromDate1").attr("disabled",true);
					}
			 });
			 $("#toDate1").mouseleave(function(){
					if($("#toDate1").val() !==""){
						var fromDate = moment($("#toDate1").val(),"dddd DD MMMM YYYY");
					    fromDate = fromDate.add(1,'days');
					    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");
					    if($("#fromDate2").val() === ""){
						    $("#fromDate2").val(fromDate);
					    }
					}	
			});
			 $("#price1").click(function(){
				 if($("#toDate1").val() !== ""){
					 $("#price1").attr("readonly",false);
					 $("#toDate1").attr("disabled",true); 
				 }
			 });
			 $("#fromDate2").mouseleave(function(){
				 if( $("#fromDate2").val() !== ""){
						$("#toDate2").attr("disabled",false);
					}
				 $("#fromDate2").attr("disabled",true);
			 });
			$("#price2").click(function(){
				if($("#toDate2").val() !== ""){
					 $("#price2").attr("readonly",false);
					 $("#toDate2").attr("disabled",true);
				 }
			});
			$("#clearPlusBtn,#clearPlusBtn1,#clearPlusBtn2").click(function(){
				if(this.id === "clearPlusBtn"){
					$("#fromDate").val("");
					$("#toDate").val("");
					$("#toDate").attr("disabled",true);
					$("#price").val("");
					$("#price").attr("readonly",true);
					$("#price").attr("disabled",false);
					$("#fromDate").attr("disabled",false);
					/* $("#toDate").attr("disabled",false);
					$("#price").attr("disabled",false); */
				}else if(this.id === "clearPlusBtn1"){
					var fromDate = moment($("#toDate").val(),"dddd DD MMMM YYYY");
				    fromDate = fromDate.add(1,'days');
				    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");
					$("#fromDate1").val(fromDate);
					$("#fromDate1").attr("disabled",false);
					$("#toDate1").val("");
					$("#toDate1").attr("disabled",true);
					$("#price1").val("");
					$("#price1").attr("readonly",true);
					$("#price").attr("disabled",false);
					/* $("#fromDate1").attr("disabled",false);
					$("#toDate1").attr("disabled",true);
					$("#price1").attr("disabled",true);  */
				}else {
					var fromDate = moment($("#toDate1").val(),"dddd DD MMMM YYYY");
				    fromDate = fromDate.add(1,'days');
				    fromDate = moment(fromDate).format("dddd DD MMMM YYYY");
				    
					$("#fromDate2").val(fromDate);
					$("#fromDate2").attr("disabled",false);
					$("#toDate2").val("");
					$("#toDate2").attr("disabled",true);
					$("#price2").val("");
					$("#price2").attr("readonly",true);
					$("#price").attr("disabled",false);
					/* $("#fromDate2").attr("disabled",false);
					$("#toDate2").attr("disabled",true);
					$("#price2").attr("disabled",true); */
				}
			}); 
			$("#price,#price1,#price2").click(function(){
				 var i = "";
				 if(this.id.indexOf("1")>=0){
					 i = 1;
				 }else if(this.id.indexOf("2")>=0){
					 i = 2;
				 }
				var fromDate =  moment($("#fromDate"+i).val(),"dddd DD MMMM YYYY");
				fromDate =moment(fromDate).format("YYYY-MM-DD");
				var toDate =  moment($("#toDate"+i).val(),"dddd DD MMMM YYYY");;
				toDate = moment(toDate).format("YYYY-MM-DD");
				
				if(moment(toDate).isBefore(moment(fromDate))){
					swal({
						  title : 'Warning!',
						  text: 'Ending Date Cannot Be Before Starting Date!!!',
						  type : 'warning',
						  confirmButtonText : 'OK',
						  allowEscapeKey : true,
						  confirmButtonClass : "btn btn-raised gradient-right",
						  animation : true
						});
					$("#toDate"+i).val("");
					$("#toDate"+i).attr("disabled",false);
					$("#price"+i).val("");
					$("#price"+i).attr("readonly",true);
				}else if(moment(fromDate).isSame(moment(toDate))){
					swal({
						  title : 'Warning!',
						  text: 'Ending Date Cannot Be Same As Starting Date!!!',
						  type : 'warning',
						  confirmButtonText : 'OK',
						  allowEscapeKey : true,
						  confirmButtonClass : "btn btn-raised gradient-right",
						  animation : true
						});
					$("#toDate"+i).val("");
					$("#toDate"+i).attr("disabled",false);
					$("#price"+i).val("");
					$("#price"+i).attr("readonly",true);
				}else if ($("#fromDate"+i).val() !== ""){
					if(i !== ""){
						if(i === Number(1)){
							if(($("#fromDate"+i).val() === $("#fromDate").val()) && ($("#toDate"+i).val() === $("#toDate").val())){
								swal({
									  title : 'Warning!',
									  text: 'You Have Already Entered Price Within The Same Range Of Dates!!!',
									  type : 'warning',
									  confirmButtonText : 'OK',
									  allowEscapeKey : true,
									  confirmButtonClass : "btn btn-raised gradient-right",
									  animation : true
									});
								$("#fromDate"+i).val("");
								$("#toDate"+i).val("");
								$("#toDate"+i).attr("disabled",false);
								$("#price"+i).val("");
								$("#price"+i).attr("readonly",true);
							}
						}else{
							if(($("#fromDate"+i).val() === $("#fromDate").val()) && ($("#toDate"+i).val() === $("#toDate").val())){
								swal({
									  title : 'Warning!',
									  text: 'You Have Already Entered Price Within The Same Range Of Dates!!!',
									  type : 'warning',
									  confirmButtonText : 'OK',
									  allowEscapeKey : true,
									  confirmButtonClass : "btn btn-raised gradient-right",
									  animation : true
									});
								$("#fromDate"+i).val("");
								$("#toDate"+i).val("");
								$("#toDate"+i).attr("disabled",false);
								$("#price"+i).val("");
								$("#price"+i).attr("readonly",true);
							}else{
								if(($("#fromDate"+i).val() === $("#fromDate"+Number(Number(i) - Number(1))).val()) && ($("#toDate"+i).val() === $("#toDate"+ Number(Number(i) - Number(1))).val())){
									swal({
										  title : 'Warning!',
										  text: 'You Have Already Entered Price Within The Same Range Of Dates!!!',
										  type : 'warning',
										  confirmButtonText : 'OK',
										  allowEscapeKey : true,
										  confirmButtonClass : "btn btn-raised gradient-right",
										  animation : true
										});
									$("#fromDate"+i).val("");
									$("#toDate"+i).val("");
									$("#toDate"+i).attr("disabled",false);
									$("#price"+i).val("");
									$("#price"+i).attr("readonly",true);
								}
							}
						}
					}
					
				}
				
			});		
	</script>
    <div class="color-bg"></div>
    <!-- Jquery Js --> 
    <%@ include file="admin-includeFooter.jsp" %>
</body>
</html>