<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Photographer</title>
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert2.css">
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
                                <div class="row clearfix">
                                    <div class="col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Product Name">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-sm-6 col-xs-12 hideDiv">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Product ID">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Seller ID">
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
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
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
                                    <h2>Image Particulars </h2>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-8 col-xs-12">
                                        <div class="form-group">
                                            <textarea class="form-control textarea-add" rows="5"  placeholder="Photo Description"></textarea>
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="No. of Photo Provided">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                              
                               <div class="row clearfix">
								<div class="header marginb15 margin-bottom10">
									<h2>Photographer Video Files</h2>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 _sellerImage">
									<form action="#" id="" class="dropzone"
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
							
							<div class="row clearfix">
								<div class="header marginb15 margin-bottom10">
									<h2>Video particulars</h2>
								</div>
								<div class="col-sm-8 col-xs-12">
                                        <div class="form-group">
                                            <textarea class="form-control textarea-add" rows="5"  placeholder="Video Description"></textarea>
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Video Length">
                                            </div>
                                        </div>
                                    </div>
							</div>
                                <div class="row clearfix">
                                    <div class="header marginb15">
                                        <h2>Photographer Pricing </h2>
                                    </div>
                                </div>
							<div class="photographerPricingDiv">
								<div class="row clearfix">
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="datepicker form-control"
													name="fromDate" id="fromDate" placeholder="From Date">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="datepicker form-control"
													name="toDate" id="toDate" placeholder="To Date">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="price" id="price" placeholder="Price">
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
								<div class="row clearfix hideDiv" id="photographerPricing2">
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="datepicker form-control"
													name="fromDate" id="fromDate" placeholder="From Date">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="datepicker form-control"
													name="toDate" id="toDate" placeholder="To Date">
											</div>
										</div>
									</div>
									<div class="col-sm-3 col-xs-12">
										<div class="form-group">
											<div class="form-line">
												<input type="text" class="form-control" name="price" id="price" placeholder="Price">
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
							</div>
							<div class="row clearfix">
                                    <div class="header marginb15">
                                        <h2>Advance Payment / Discount / Availability Details</h2>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Advance Payment percentage">
                                            </div>
                                        </div>
                                    </div> 
                                     <div class="col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Discount">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-xs-12">
                                        <div class="form-group drop-custum">
                                            <select class="form-control show-tick">
                                                <option value="">-- Availability  --</option>
                                                <option value="10">XXX</option>
                                                <option value="20">XXXX</option>
                                            </select>
                                        </div>
                                    </div>
                                     <div class="col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Freebie">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="header marginb15">
                                        <h2>Delivery Details</h2>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    
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
                                    <input type = "hidden" name = "photographyTypeName" value = "photographyTypeName" value = "">
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
    <script src="resources/js/dropzone.js"></script>
    <script src="resources/js/rsvp.js"></script>
    <script src="resources/js/frame-grab.js"></script>
	<!-- Dropzone Plugin Js  -->
	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script src="resources/js/sweetalert2.min.js"></script>
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
	<script type="text/javascript">
	
	$(document).ready(function (){
		fetchAllPhotographerType();
		fetchAllPhotographerOccasion();
	});
	
	
	//Upload and renaming the files being uploaded in dropzone.js
	Dropzone.options.multipleUpload = {
		url : "#",
		acceptedFiles: ".mp4,.mkv,.avi,.wmv",
		previewTemplate : "<div class=\"dz-preview dz-file-preview\">"
		+"<div class=\"dz-image\"><img data-dz-thumbnail /></div>"
		+"<div class=\"dz-details\"><img src = \"resources/images/videoIcon.png\" height = \"60\" width = \"60\" />"
		+"<div class=\"dz-size\"><span data-dz-size></span></div>"  
		+"<div class=\"dz-filename\"><span data-dz-name></span></div>"
		+"</div><div class=\"dz-progress\"><span class=\"dz-upload\" data-dz-uploadprogress></span></div>"
		+"<div class=\"dz-error-message\"><span data-dz-errormessage></span></div>"
		+"<div class=\"dz-success-mark\"><svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Check</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <path d=\"M23.5,31.8431458 L17.5852419,25.9283877 C16.0248253,24.3679711 13.4910294,24.366835 11.9289322,25.9289322 C10.3700136,27.4878508 10.3665912,30.0234455 11.9283877,31.5852419 L20.4147581,40.0716123 C20.5133999,40.1702541 20.6159315,40.2626649 20.7218615,40.3488435 C22.2835669,41.8725651 24.794234,41.8626202 26.3461564,40.3106978 L43.3106978,23.3461564 C44.8771021,21.7797521 44.8758057,19.2483887 43.3137085,17.6862915 C41.7547899,16.1273729 39.2176035,16.1255422 37.6538436,17.6893022 L23.5,31.8431458 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" stroke-opacity=\"0.198794158\" stroke=\"#747474\" fill-opacity=\"0.816519475\" fill=\"#FFFFFF\" sketch:type=\"MSShapeGroup\"></path>\n      </g>\n    </svg>\</div>"
		+"<div class=\"dz-error-mark\"><svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Error</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <g id=\"Check-+-Oval-2\" sketch:type=\"MSLayerGroup\" stroke=\"#747474\" stroke-opacity=\"0.198794158\" fill=\"#FFFFFF\" fill-opacity=\"0.816519475\">\n          <path d=\"M32.6568542,29 L38.3106978,23.3461564 C39.8771021,21.7797521 39.8758057,19.2483887 38.3137085,17.6862915 C36.7547899,16.1273729 34.2176035,16.1255422 32.6538436,17.6893022 L27,23.3431458 L21.3461564,17.6893022 C19.7823965,16.1255422 17.2452101,16.1273729 15.6862915,17.6862915 C14.1241943,19.2483887 14.1228979,21.7797521 15.6893022,23.3461564 L21.3431458,29 L15.6893022,34.6538436 C14.1228979,36.2202479 14.1241943,38.7516113 15.6862915,40.3137085 C17.2452101,41.8726271 19.7823965,41.8744578 21.3461564,40.3106978 L27,34.6568542 L32.6538436,40.3106978 C34.2176035,41.8744578 36.7547899,41.8726271 38.3137085,40.3137085 C39.8758057,38.7516113 39.8771021,36.2202479 38.3106978,34.6538436 L32.6568542,29 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" sketch:type=\"MSShapeGroup\"></path></g></g></svg></div></div></div>",
		init:function(){
			self = this;
			// for video files, use frame-grab to generate a preview.
			this.on("addedfile", function(file) {

			    // check file extension, see:
			    // http://stackoverflow.com/questions/190852/how-can-i-get-file-extensions-with-javascript
			    var comps = file.name.split(".");
			    if (comps.length === 1 || (comps[0] === "" && comps.length === 2)) {
			        return;
			    }
			    var ext = comps.pop().toLowerCase();
			    if (ext == 'mov' || ext == 'mpeg' || ext == 'mp4' || ext == 'wmv') {

			        // create a hidden <video> element with video file.
			        FrameGrab.blob_to_video(file).then(
			            function videoRendered(videoEl) {

			                // extract video frame at 1 sec into a 160px image and
			                // set to the <img> element.
			                var frameGrab = new FrameGrab({video: videoEl});
			                frameGrab.grab('img', 1, 160).then(
			                    function frameGrabbed(itemEntry) {
			                    	alert(itemEntry.container.src);
			                        self.emit('thumbnail', file, itemEntry.container.src);
			                    },
			                    function frameFailedToGrab(reason) {
			                        console.log("Can't grab the video frame from file: " +
			                            file.name + ". Reason: " + reason);
			                    }
			                );
			            },
			            function videoFailedToRender(reason) {
			                console.log("Can't convert the file to a video element: " +
			                    file.name + ". Reason: " + reason);
			            }
			        );
			    }
			});
		}
	};
	var ary = new Array ();  
	var arry3 = new Array();
	function fetchAllPhotographerType(){
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
					while(ary.length > 0){
						ary.pop();
					}
					var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--Photo Type--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--Photo Type--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
							+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulPhotoType0\">"
							+"<li data-original-index=\"0\" class=\"selected\" id=\"photoTypeLi0\" onclick=\"clickPhotoTypeLi('"+0+"','Photo Type')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Photo Type --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
					var cde = "";		
							for(var i = 0; i < data.listAllPhotographyTypes.length; i++){	
								cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' id='photoTypeLi"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoTypeLi('"+Number(Number(i)+Number(1))+"','"+data.listAllPhotographyTypes[i].typeName+"','"+data.listAllPhotographyTypes[i].id+"')\"><span class=\"text\">"+data.listAllPhotographyTypes[i].typeName+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
								arValue = data.listAllPhotographyTypes[i].id+"_"+data.listAllPhotographyTypes[i].typeName;
								ary.push(arValue);
							}
						cde = cde +"</ul></div>"
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
	
	
	var previousLi; 			// For previous li id to remove the class selected
	//On click of each li in Photography Type list 
	 function clickPhotoTypeLi(liId,title1,photographyTypeId){
		$("#photographyTypeName").val(photographyTypeId);			//Hidden field to store the Photography Type Id
		var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--"+title1+ "--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"
		+ title1
		+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulPhotoType0\">"
		
		if(Number(liId) > Number(0)){
			 var selectedId = $(".selected").attr("id");
				previouLi = liId;
				

			abc = abc + "<li data-original-index=\"0\" class=\"\" id=\"photoTypeLi0\" onclick=\"clickPhotoTypeLi('"
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
							+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoTypeLi('"+Number(Number(i) + Number(1))+"','"+splittedArray[1]+"','"+splittedArray[0]+"')\"><span class=\"text\">"
							+ splittedArray[1]
							+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				} else {
					
					cde = cde
							+ "<li data-original-index='"
							+ Number(Number(i) + Number(1))
							+ "' class=\"\" id='photoTypeLi"
							+ Number(Number(i) + Number(1))
							+ "'><a tabindex=\"0\"  style=\"\" data-tokens=\"null\" onclick =\"clickPhotoTypeLi('"+Number(Number(i) + Number(1))+"','"+splittedArray[1]+"','"+splittedArray[0]+"')\"><span class=\"text\">"
							+ splittedArray[1]
							+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				}

			}
			cde = cde + "</ul></div>"
			
			$("#photographyTypeDiv").html(abc + cde);

		} else {
			$("#photoTypeLi" + previousLi).removeClass("selected");
			$("#photoTypeLi0").addClass("selected");
			
			 abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"photoTypeLi0\" onclick=\"clickLi('"
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
						while(arry3.length > 0){
							arry3.pop();
						}
						var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- Occasion --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">-- Occasion --</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
								+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulPhotoOccasion0\">"
								+"<li data-original-index=\"0\" class=\"selected\" id=\"photoOccasionLi0\" onclick=\"clickPhotoOccasionLi('"+0+"','Occasion')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						var cde = "";		
								for(var i = 0; i < data.listAllPhotographyOccasions.length; i++){	
									cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' id='photoOccasionLi"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoOccasionLi('"+Number(Number(i)+Number(1))+"','"+data.listAllPhotographyOccasions[i].occasionName+"','"+data.listAllPhotographyOccasions[i].id+"')\"><span class=\"text\">"+data.listAllPhotographyOccasions[i].occasionName+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
									arValue = data.listAllPhotographyOccasions[i].id+"_"+data.listAllPhotographyOccasions[i].occasionName;
									arry3.push(arValue);
								}
							cde = cde +"</ul></div>"
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

	//On click of each li in Photography Occasion list 
	 function clickPhotoOccasionLi(liId,title1,photographyOccasionId,classSelected){
		 if(classSelected === undefined || classSelected === ""){
				if(title === "" || title1 === "Occasion"){
					title = title1;
				}else{
					title = title + "," + title1;
				}
			}else{
				var a  = title.split(",");
				title = "";
				for(var i =0; i< a.length; i++){
					if(a[i] === title1){
						a[i] = "";
					}else{
						if(title === ""){
							title = a[i];
						}else{
							title = title + "," +a[i];
						}
					}
				}
				if(title === "" && (classSelected !== undefined || classSelected !== "")){
					alert("In if");
					title = "Occasion";
				}
			}
		$("#photographyOccasionName").val(photographyOccasionId);			//Hidden field to store the Photography Occasion Id
		var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"--"+title+ "--\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--"
		+ title
		+ "--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\"><ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\" id=\"ulPhotoOccasion0\">"

		if(Number(liId) > Number(0)){
			 var selectedId = $(".selected").attr("id");
				previouLi = liId;

			abc = abc + "<li data-original-index=\"0\" class=\"\" id=\"photoOccasionLi0\" onclick=\"clickPhotoOccasionLi('"
					+ 0
					+ "','Occasion')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
			var cde = "";
			for (var i = 0; i < arry3.length; i++) {
				var splittedArray = arry3[i].split("_");

				if (Number(i) === Number(Number(liId) - Number(1))) {
					var classSelected = "";
					if(!($("#photoOccasionLi"+ Number(liId)).hasClass("selected"))){
						classSelected = "class = selected";
					}
					cde = cde
							+ "<li data-original-index='"
							+ Number(Number(i) + Number(1))
							+ "' "+classSelected+" id='photoOccasionLi"
							+ Number(Number(i) + Number(1))
							+ "'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoOccasionLi('"+Number(Number(i) + Number(1))+"','"+splittedArray[1]+"','"+splittedArray[0]+"','"+classSelected+"')\"><span class=\"text\">"
							+ splittedArray[1]
							+ "</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
				} else {
					var classSelected = "";
					if($("#photoOccasionLi"+Number(Number(i) + Number(1))).hasClass("selected")){
						classSelected = "class = selected";
					}
					cde = cde
							+ "<li data-original-index='"
							+ Number(Number(i) + Number(1))
							+ "' "+classSelected+" id='photoOccasionLi"
							+ Number(Number(i) + Number(1))
							+ "'><a tabindex=\"0\" style=\"\" data-tokens=\"null\" onclick =\"clickPhotoOccasionLi('"+Number(Number(i) + Number(1))+"','"+splittedArray[1]+"','"+splittedArray[0]+"','"+classSelected+"')\"><span class=\"text\">"
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
			 abc = abc +"<li data-original-index=\"0\" class=\"selected\" id=\"photoOccasionLi0\" onclick=\"clickPhotoOccasionLi('"
			+ 0
			+ "','Occasion','"+classSelected+"')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- Occasion --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
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
	
	 var i = Number(0); 			//Variable to  know number of times the new div has been added
		
		//On click of Add button
		$("#plusbtn").click(function() {
			addDiv();
		});
		
		 //For Adding new div
		function addDiv() {
			if ($("#fromDate" + i).val() === ""
					|| $("#fromDate").val() === "") {
				swal({
					title : 'Warning!',
					text : 'Please Enter Starting Date of Price!!!',
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			
			}else if($("#toDate" + i).val() === ""
				|| $("#toDate").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Ending Date of Price!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			} else if($("#price" + i).val() === ""
				|| $("#price").val() === ""){
				swal({
					  title: 'Warning!',
					  text: 'Please Enter Price of Product!!!',
					  type: 'warning',
					  confirmButtonText: 'OK',
					  allowEscapeKey:true,
					  confirmButtonClass:"btn btn-raised gradient-right",
					  animation:true
					});
			}else {
				if(Number(i) < Number(2)){
					i = Number(Number(i) + Number(1));
					$(".photographerPricingDiv")
							.append("<div class=\"row clearfix\">"
									+"<div class=\"col-sm-3 col-xs-12\">"
									+"<div class=\"form-group\">"
									+"<div class=\"form-line\">"
									+"<input type=\"text\" class=\"datepicker form-control\" name=\"fromDate\" id=\"fromDate1\" data-dtp=\"dtp_TDJwF\" placeholder=\"From Date\">"
								    +"</div>"
									+"</div>"
									+"</div></div>")
				}else{
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
		}
 
 	/* 	function addDiv(){
	 $("#photographerPricing2").attr("style","display:block");
 } */
		// For removing present div
		function removePhotographyPricingDiv(removeId) {
			$("#photographerPricingDiv" + removeId).remove();
		}
	</script>
    <div class="color-bg"></div>
    <!-- Jquery Js --> 
    <%@ include file="admin-includeFooter.jsp" %>
</body>
</html>