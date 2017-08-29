<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Home</title>
<%@ include file="admin-includeHeader.jsp" %>
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css">
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
                    <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar1.jpg" alt=""/>
                        <h3>Sara Soueidan</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar4.jpg" alt=""/>
                        <h3>Rachel Smith</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar3.jpg" alt=""/>
                        <h3>Peter Finlan</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar6.jpg" alt=""/>
                        <h3>Patrick Cox</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar5.jpg" alt=""/>
                        <h3>Tim Holman</h3>
                    </a></div>
                <div class="dummy-column">
                    <h2>Popular</h2>
                    <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar1.jpg" alt=""/>
                        <h3>Sara Soueidan</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar4.jpg" alt=""/>
                        <h3>Rachel Smith</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar3.jpg" alt=""/>
                        <h3>Peter Finlan</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar6.jpg" alt=""/>
                        <h3>Patrick Cox</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar5.jpg" alt=""/>
                        <h3>Tim Holman</h3>
                    </a> </div>
                <div class="dummy-column">
                    <h2>Recent</h2>
                    <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar1.jpg" alt=""/>
                        <h3>Sara Soueidan</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar4.jpg" alt=""/>
                        <h3>Rachel Smith</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar3.jpg" alt=""/>
                        <h3>Peter Finlan</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar6.jpg" alt=""/>
                        <h3>Patrick Cox</h3>
                    </a> <a class="dummy-media-object" href="#"> <img class="round" src="resources/images/random-avatar5.jpg" alt=""/>
                        <h3>Tim Holman</h3>
                    </a></div>
            </div>
            <!-- /morphsearch-content --> 
            <span class="morphsearch-close"></span> </div>

        <!-- Top Bar -->
        <nav class="navbar clearHeader">
            <div class="container-fluid">
                <div class="navbar-header"> <a href="javascript:void(0);" class="bars"></a> <a class="navbar-brand" href="index.html">Wedlock</a> </div>
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
                                    <div class="media"> <a class="pull-left" role="button" tabindex="0"> <img class="media-object " src="resources/images/random-avatar4.jpg" alt=""> </a>
                                        <div class="media-body"> <span class="name">Claire Sassu</span> <span class="message">Can you share the...</span> <span class="badge badge-outline status"></span> </div>
                                    </div>
                                </li>
                                <li class="online">
                                    <div class="media"> <a class="pull-left" role="button" tabindex="0"> <img class="media-object " src="resources/images/random-avatar5.jpg" alt=""> </a>
                                        <div class="media-body">
                                            <div class="media-body"> <span class="name">Maggie jackson</span> <span class="message">Can you share the...</span> <span class="badge badge-outline status"></span> </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="online">
                                    <div class="media"> <a class="pull-left" role="button" tabindex="0"> <img class="media-object " src="resources/images/random-avatar3.jpg" alt=""> </a>
                                        <div class="media-body">
                                            <div class="media-body"> <span class="name">Joel King</span> <span class="message">Ready for the meeti...</span> <span class="badge badge-outline status"></span> </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <h6>Contacts</h6>
                            <ul>
                                <li class="offline">
                                    <div class="media"> <a class="pull-left" role="button" tabindex="0"> <img class="media-object " src="resources/images/random-avatar4.jpg" alt=""> </a>
                                        <div class="media-body">
                                            <div class="media-body"> <span class="name">Joel King</span> <span class="badge badge-outline status"></span> </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="online">
                                    <div class="media"> <a class="pull-left" role="button" tabindex="0"> <img class="media-object " src="resources/images/random-avatar5.jpg" alt=""> </a>
                                        <div class="media-body">
                                            <div class="media-body"> <span class="name">Joel King</span> <span class="badge badge-outline status"></span> </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="offline">
                                    <div class="media"> <a class="pull-left " role="button" tabindex="0"> <img class="media-object " src="resources/images/random-avatar6.jpg" alt=""> </a>
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
        <section class="content home">
            <div class="container-fluid">
                <div class="block-header">
                    <h2>Dashboard</h2>
                    <small class="text-muted">Welcome to Swift application</small>
                </div>

                <div class="row clearfix top-report">
                    <div class="col-lg-3 col-sm-6 col-md-6 col-xs-12">
                        <div class="card">
                            <div class="panel-body">
                                <h3>1,100</h3>
                                <p class="text-muted">New Admission</p>
                                <div class="progressbar-xs progress-rounded progress-striped progress ng-isolate-scope">
                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100" style="width: 68%;"></div>
                                </div>
                                <span class="text-small">10% higher than last month</span> </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-md-6 col-xs-12">
                        <div class="card">
                            <div class="panel-body">
                                <h3>60,800</h3>
                                <p class="text-muted">Total Students</p>
                                <div class="progressbar-xs progress-rounded progress-striped progress ng-isolate-scope">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100" style="width: 68%;"></div>
                                </div>
                                <span class="text-small">4% higher than last month</span> </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-md-6 col-xs-12">
                        <div class="card">
                            <div class="panel-body">
                                <h3>12,521</h3>
                                <p class="text-muted">Master</p>
                                <div class="progressbar-xs progress-rounded progress-striped progress ng-isolate-scope">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100" style="width: 68%;"></div>
                                </div>
                                <span class="text-small">4% higher than last month</span> </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-md-6 col-xs-12">
                        <div class="card">
                            <div class="panel-body">
                                <h3>$ 24,500</h3>
                                <p class="text-muted">Total Earnings(Years)</p>
                                <div class="progressbar-xs progress-rounded progress-striped progress ng-isolate-scope">
                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100" style="width: 68%;"></div>
                                </div>
                                <span class="text-small">15% higher than last month</span> </div>
                        </div>
                    </div>            
                </div>                
                <div class="row clearfix">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2>University Earnings</h2>
                                <ul class="header-dropdown m-r--5">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="javascript:void(0);">Action</a></li>
                                            <li><a href="javascript:void(0);">Another action</a></li>
                                            <li><a href="javascript:void(0);">Something else here</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="body">
                                <canvas id="line_chart" height="150"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2>Student Passing</h2>
                                <ul class="header-dropdown m-r--5">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"> <i class="material-icons">more_vert</i> </a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="javascript:void(0);">Action</a></li>
                                            <li><a href="javascript:void(0);">Another action</a></li>
                                            <li><a href="javascript:void(0);">Something else here</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="body">
                                <canvas id="bar_chart" height="150"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">                    
                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                        <div class="card">
                            <div class="header">
                                <h2>Science<small >All Earnings are in million $</small></h2>
                                <ul class="header-dropdown m-r--5">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="javascript:void(0);">Action</a></li>
                                            <li><a href="javascript:void(0);">Another action</a></li>
                                            <li><a href="javascript:void(0);">Something else here</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="body">
                                <div class="stats-report">
                                    <div class="stat-item">
                                        <h5>Overall</h5>
                                        <b class="col-indigo">7,000</b></div>
                                    <div class="stat-item">
                                        <h5>2016</h5>
                                        <b class="col-indigo">2,000</b></div>
                                    <div class="stat-item">
                                        <h5>2017</h5>
                                        <b class="col-indigo">5,000</b></div>
                                </div>
                                <div class="sparkline" data-type="line" data-spot-Radius="3" data-highlight-Spot-Color="rgb(63, 81, 181)" data-highlight-Line-Color="#222"
                                     data-min-Spot-Color="rgb(233, 30, 99)" data-max-Spot-Color="rgb(63, 81, 181)" data-spot-Color="rgb(63, 81, 181, 0.7)"
                                     data-offset="90" data-width="100%" data-height="150px" data-line-Width="1" data-line-Color="rgb(63, 81, 181, 0.7)"
                                     data-fill-Color="rgba(63, 81, 181, 0.3)"> 6,1,3,3,6,3,2,2,8,2 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                        <div class="card">
                            <div class="header">
                                <h2>Income Analysis <small>18% High then last month</small></h2>
                                <ul class="header-dropdown m-r--5">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="javascript:void(0);">Action</a></li>
                                            <li><a href="javascript:void(0);">Another action</a></li>
                                            <li><a href="javascript:void(0);">Something else here</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="body">
                                <div class="stats-report">
                                    <div class="stat-item">
                                        <h5>Overall</h5>
                                        <b class="col-blue-grey">80.40%</b></div>
                                    <div class="stat-item">
                                        <h5>Montly</h5>
                                        <b class="col-blue-grey">13.00%</b></div>
                                    <div class="stat-item">
                                        <h5>Day</h5>
                                        <b class="col-blue-grey">9.50%</b></div>
                                </div>
                                <div class="sparkline" data-type="bar" data-width="97%" data-height="150px" data-bar-Width="16" data-bar-Spacing="7" data-bar-Color="rgb(96, 125, 139)"> 6,7,8,9,10,5,13,18,21,7,9,11,12,5 </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                        <div class="card">
                            <div class="header">
                                <h2>Income Analysis <small>18% High then last month</small></h2>
                                <ul class="header-dropdown m-r--5">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="javascript:void(0);">Action</a></li>
                                            <li><a href="javascript:void(0);">Another action</a></li>
                                            <li><a href="javascript:void(0);">Something else here</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="body">
                                <div class="stats-report">
                                    <div class="stat-item">
                                        <h5>Overall</h5>
                                        <b class="col-black">84.60%</b></div>
                                    <div class="stat-item">
                                        <h5>Montly</h5>
                                        <b class="col-black">15.40%</b></div>
                                    <div class="stat-item">
                                        <h5>Day</h5>
                                        <b class="col-black">5.10%</b></div>
                                </div>
                                <div class="sparkline-pie text-center">6,4,8</div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row clearfix"> 
                    <!-- Task Info -->
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="card">
                            <div class="header">
                                <h2>TASK INFOS</h2>
                                <ul class="header-dropdown m-r--5">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="javascript:void(0);">Action</a></li>
                                            <li><a href="javascript:void(0);">Another action</a></li>
                                            <li><a href="javascript:void(0);">Something else here</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="body">
                                <div class="table-responsive">
                                    <table class="table table-hover dashboard-task-infos">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Task</th>
                                                <th>Status</th>
                                                <th>Professors</th>
                                                <th>Progress</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Task A</td>
                                                <td><span class="label bg-green">Doing</span></td>
                                                <td>John Doe</td>
                                                <td><div class="progress m-b-0">
                                                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100" style="width: 62%"></div>
                                                    </div></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Task B</td>
                                                <td><span class="label bg-blue">To Do</span></td>
                                                <td>John Doe</td>
                                                <td><div class="progress m-b-0">
                                                        <div class="progress-bar bg-blue" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"></div>
                                                    </div></td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Task C</td>
                                                <td><span class="label bg-light-blue">On Hold</span></td>
                                                <td>John Doe</td>
                                                <td><div class="progress m-b-0">
                                                        <div class="progress-bar bg-light-blue" role="progressbar" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100" style="width: 72%"></div>
                                                    </div></td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Task D</td>
                                                <td><span class="label bg-orange">Wait Approvel</span></td>
                                                <td>John Doe</td>
                                                <td><div class="progress m-b-0">
                                                        <div class="progress-bar bg-orange" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width: 95%"></div>
                                                    </div></td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Task E</td>
                                                <td><span class="label bg-red">Suspended</span></td>
                                                <td>John Doe</td>
                                                <td><div class="progress m-b-0">
                                                        <div class="progress-bar bg-red" role="progressbar" aria-valuenow="87" aria-valuemin="0" aria-valuemax="100" style="width: 87%"></div>
                                                    </div></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- #END# Task Info --> 
                </div>
                <div class="row clearfix">
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="thumbnail card"> <img src="resources/images/puppy-2.jpg" alt=" /">
                            <div class="caption">
                                <h3>UI UX Design Course</h3>
                                <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
                                    text ever since the 1500s </p>
                                <p> <a href="javascript:void(0);" class="btn btn-raised waves-effect btn-sm" role="button">Read more</a> </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="thumbnail card"> <img src="resources/images/puppy-3.jpg" alt="">
                            <div class="caption">
                                <h3>Magento Programmer Course</h3>
                                <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
                                    text ever since the 1500s </p>
                                <p> <a href="javascript:void(0);" class="btn btn-raised waves-effect btn-sm" role="button">Read more</a> </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="thumbnail card"> <img src="resources/images/puppy-1.jpg" alt="">
                            <div class="caption">
                                <h3>iOS Application Course <span class="label label-info">New</span></h3>
                                <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
                                    text ever since the 1500s </p>
                                <p> <a href="javascript:void(0);" class="btn btn-raised g-bg-blush2 waves-effect btn-sm" role="button">Read more</a> </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="thumbnail card"> <img src="resources/images/puppy-3.jpg" alt="">
                            <div class="caption">
                                <h3>Java Course</h3>
                                <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
                                    text ever since the 1500s </p>
                                <p> <a href="javascript:void(0);" class="btn btn-raised waves-effect btn-sm" role="button">Read more</a> </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2>Exam Toppers</h2>
                                <ul class="header-dropdown m-r--5">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="javascript:void(0);">Action</a></li>
                                            <li><a href="javascript:void(0);">Another action</a></li>
                                            <li><a href="javascript:void(0);">Something else here</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="body">
                                <table class="table table-hover table-responsive">
                                    <thead>
                                        <tr>
                                            <th>First Name</th>
                                            <th>Charts</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Dean Otto</td>
                                            <td>
                                                <span class="sparkbar">5,8,6,3,5,9,2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>K. Thornton</td>
                                            <td>
                                                <span class="sparkbar">10,8,9,3,5,8,5</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Kane D.</td>
                                            <td>
                                                <span class="sparkbar">7,5,9,3,5,2,5</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Jack Bird</td>
                                            <td>
                                                <span class="sparkbar">10,8,1,3,3,8,7</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Hughe L.</td>
                                            <td>
                                                <span class="sparkbar">2,8,9,8,5,1,5</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Jack Bird</td>
                                            <td>
                                                <span class="sparkbar">1,8,2,3,9,8,5</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Hughe L.</td>
                                            <td>
                                                <span class="sparkbar">10,8,1,3,2,8,5</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- Acivites -->
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="card activities">
                            <div class="header">
                                <h2>Activities</h2>
                                <ul class="header-dropdown m-r--5">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"> <i class="zmdi zmdi-more-vert"></i> </a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="javascript:void(0);" class=" waves-effect waves-block">Action</a></li>
                                            <li><a href="javascript:void(0);" class=" waves-effect waves-block">Another action</a></li>
                                            <li><a href="javascript:void(0);" class=" waves-effect waves-block">Something else here</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="body">
                                <div class="streamline b-l b-accent">
                                    <div class="sl-item">
                                        <div class="sl-content">
                                            <div class="text-muted-dk">Just now</div>
                                            <p>Finished task <a href="#" class="text-info">#features 4</a>.</p>
                                        </div>
                                    </div>
                                    <div class="sl-item b-info">
                                        <div class="sl-content">
                                            <div class="text-muted-dk">11:30</div>
                                            <p><a href="#">@Jessi</a> retwit your post</p>
                                        </div>
                                    </div>
                                    <div class="sl-item b-primary b-l">
                                        <div class="sl-content">
                                            <div class="text-muted-dk">10:30</div>
                                            <p>Call to customer <a href="#" class="text-info">Jacob</a> and discuss the detail.</p>
                                        </div>
                                    </div>
                                    <div class="sl-item b-warning">
                                        <div class="sl-content">
                                            <div class="text-muted-dk">3 days ago</div>
                                            <p><a href="#" class="text-info">Jessi</a> commented your post.</p>
                                        </div>
                                    </div>
                                    <div class="sl-item b-primary b-l">
                                        <div class="sl-content">
                                            <div class="text-muted-dk">10:30</div>
                                            <p>Call to customer <a href="#" class="text-info">Jacob</a> and discuss the detail.</p>
                                        </div>
                                    </div>
                                    <div class="sl-item b-warning">
                                        <div class="sl-content">
                                            <div class="text-muted-dk">3 days ago</div>
                                            <p><a href="#" class="text-info">Jessi</a> commented your post.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- #END# Acivites -->   
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2>Attendance</h2>
                                <ul class="header-dropdown m-r--5">
                                    <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"><i class="zmdi zmdi-more-vert"></i></a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="javascript:void(0);" class=" waves-effect waves-block">Action</a></li>
                                            <li><a href="javascript:void(0);" class=" waves-effect waves-block">Another action</a></li>
                                            <li><a href="javascript:void(0);" class=" waves-effect waves-block">Something else here</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="body">
                                <ul class="basic-list">
                                    <li>Mark Otto <span class="pull-right label-danger label">21%</span></li>
                                    <li>Jacob Thornton <span class="pull-right label-purple label">50%</span></li>
                                    <li>Jacob Thornton<span class="pull-right label-success label">90%</span></li>
                                    <li>M. Arthur <span class="pull-right label-info label">75%</span></li>
                                    <li>Jacob Thornton <span class="pull-right label-warning label">60%</span></li>
                                    <li>M. Arthur <span class="pull-right label-success label">91%</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- main content -->
		<script src="resources/js/jquery-2.1.3.min.js"></script>
		<script src="resources/js/sweetalert.min.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			
			if(sessionStorage.getItem("mssgStatus") !== null && (sessionStorage.getItem("mssgStatus") !== "")){
				swal({
					title : 'Warning!',
					text : sessionStorage.getItem("mssgStatus")+"!!!",
					type : 'warning',
					confirmButtonText : 'OK',
					allowEscapeKey : true,
					confirmButtonClass : "btn btn-raised gradient-right",
					animation : true
				});
			}
			
			sessionStorage.removeItem("mssgStatus");
		});
		</script>
		<%@include file="admin-includeDynamicSideNavBarFromSession.jsp" %>
        <div class="color-bg"></div>
       
        <%@ include file="admin-includeFooter.jsp" %>
    </body>
</html>