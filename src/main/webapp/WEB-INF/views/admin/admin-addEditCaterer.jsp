<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Caterer</title>
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
                    <h2>Add Catarer</h2>
                    <small class="text-muted">Welcome to Wedlock application</small>
                </div>
                <div class="row clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2>Catarer Basic Information</h2>
                            </div>
                            <div class="body">
                                <div class="row clearfix">
                                    <div class="col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Catarer Name/Company Name">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Catarer ID">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Seller ID">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group drop-custum">
                                            <select class="form-control show-tick">
                                                <option value="">-- Catarer Type --</option>
                                                <option value="10">XXX</option>
                                                <option value="20">XXXX</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-8 col-xs-12">
                                        <label for="comment">Photographers Images</label>
                                        <div class="col-md-12 padding-left">
                                            <form action="http://thememakker.com/" id="frmFileUpload" class="dropzone" method="post" enctype="multipart/form-data">
                                                <div class="dz-message">
                                                    <div class="drag-icon-cph"> <i class="material-icons">touch_app</i> </div>
                                                    <h3>Drop files here or click to upload.</h3>
                                                    <em>(This is just a demo dropzone. Selected files are <strong>not</strong> actually uploaded.)</em> </div>
                                                <div class="fallback">
                                                    <input name="file" type="file" multiple />
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <label for="comment">Occassion</label>
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
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix"></div>
                                <div class="header margin-left-right-zero marginb15">
                                    <h2>Address Info </h2>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Email">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Phone No.">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="form-group drop-custum">
                                            <select class="form-control show-tick">
                                                <option value="">-- State --</option>
                                                <option value="10">XXX</option>
                                                <option value="20">XXXX</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="form-group drop-custum">
                                            <select class="form-control show-tick">
                                                <option value="">-- City --</option>
                                                <option value="10">XXX</option>
                                                <option value="20">XXXX</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <textarea class="form-control textarea-add" rows="3"  placeholder="Address"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Zip Code">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row clearfix"></div>
                                <div class="header margin-left-right-zero marginb15">
                                    <h2>Detail Description </h2>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-8 col-xs-12">
                                        <div class="form-group">
                                            <textarea class="form-control textarea-add" rows="5"  placeholder="Caterer Description"></textarea>
                                        </div>
                                    </div>

                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="No. of Member Provided">
                                            </div>
                                        </div>
                                        <div class="form-group drop-custum paddingavaliblity-hide">
                                            <select class="form-control show-tick">
                                                <option value="">-- Is Related with Halls --</option>
                                                <option value="10">XXX</option>
                                                <option value="20">XXXX</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="header marginb15">
                                        <h2>Add Food</h2>
                                    </div>
                                </div>
                                <div class="row clearfix">                                   
                                    <div class="col-sm-8 col-xs-12">
                                        <div class="form-group drop-custum paddingavaliblity-hide">
                                            <select class="form-control show-tick">
                                                <option value="">-- Food Name --</option>
                                                <option value="10">XXX</option>
                                                <option value="20">XXXX</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group pull-right">
                                            <button type="button" class="pull-right">Pending Food Modal Open</button>
                                        </div>
                                    </div>                                   
                                </div>
                                <div class="row clearfix margin-top15">
                                    <div class="col-md-12">
                                        <button class="g-bg-blush2 pull-right add-new">
                                            <i class="fa fa-plus"></i> Add
                                        </button>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="header marginb15">
                                        <h2>Catarer Pricing </h2>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="From Date">
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="To Date">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Price">
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
                                    <div class="col-md-12">
                                        <button class="g-bg-blush2 pull-right add-new">
                                            <i class="fa fa-plus"></i> Add
                                        </button>
                                    </div>
                                </div>
                                <div class="row clearfix">                                   
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Advance Payment percentage">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group drop-custum">
                                            <select class="form-control show-tick">
                                                <option value="">-- Availabiliy  --</option>
                                                <option value="10">XXX</option>
                                                <option value="20">XXXX</option>
                                            </select>
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
                                        <button type="submit" class="btn btn-raised gradient-right">Submit</button>
                                        <button type="submit" class="btn btn-raised gradient-left">Cancel</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
    <div class="color-bg"></div>
    <!-- Jquery Js --> 
    <%@ include file="admin-includeFooter.jsp" %>
</body>
</html>