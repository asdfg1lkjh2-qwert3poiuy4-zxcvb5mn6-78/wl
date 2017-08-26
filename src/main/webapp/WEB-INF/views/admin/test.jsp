<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock</title>
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css">
<link rel="stylesheet" type="text/css" href="resources/css/roundster.css">
<link rel="stylesheet" href="resources/css/fullcalendar.min.css">
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
<section class="content page-calendar">
    <div class="container-fluid">
        <div class="row">
            <!-- <div class="col-md-3">
                <div class="card m-t-15">
                    <div class="body">
                        <div class="tcol"> 
                            left side header
                            <div class="bg-white">
                                <button type="button" class="btn btn-raised btn-primary btn-sm" data-toggle="modal" href="#cal-new-event"> <i class="zmdi zmdi-plus"></i> Events</button>
                            </div>
                            /left side header 
                            
                            left side body
                            <div id="external-events">
                                <div class="event-name b-greensea"> The Custom Event #1 <a class="pull-right text-muted event-remove"><i class="zmdi zmdi-delete"></i></a> </div>
                                <div class="event-name b-lightred"> The Custom Event #2 <a class="pull-right text-muted event-remove"><i class="zmdi zmdi-delete"></i></a> </div>
                                <div class="event-name b-amethyst"> The Custom Event #3 <a class="pull-right text-muted event-remove"><i class="zmdi zmdi-delete"></i></a> </div>
                                <div class="event-name b-amethyst"> The Custom Event #4 <a class="pull-right text-muted event-remove"><i class="zmdi zmdi-delete"></i></a> </div>
                                <div class="event-name b-success"> The Custom Event #5 <a class="pull-right text-muted event-remove"><i class="zmdi zmdi-delete"></i></a> </div>
                                <div class="event-name b-lightred"> The Custom Event #6 <a class="pull-right text-muted event-remove"><i class="zmdi zmdi-delete"></i></a> </div>
                                <div class="event-name b-greensea"> The Custom Event #7 <a class="pull-right text-muted event-remove"><i class="zmdi zmdi-delete"></i></a> </div>
                                <div class="event-name b-success"> The Custom Event #8 <a class="pull-right text-muted event-remove"><i class="zmdi zmdi-delete"></i></a> </div>
                                <div class="event-name b-success"> The Custom Event #9 <a class="pull-right text-muted event-remove"><i class="zmdi zmdi-delete"></i></a> </div>
                                <div class="event-name b-primary"> The Custom Event #10 <a class="pull-right text-muted event-remove"><i class="zmdi zmdi-delete"></i></a> </div>
                                <p class="m-t--15">
                                    <input type="checkbox" id="basic_checkbox_3" checked="" disabled="">
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
            <div class="col-md-6">
                <!-- <div class="card m-t-15">
                <div class="body">
                    <div class="row">
                        <div class="col-md-4 col-sm-3">
                            <h4 class="custom-font text-default m-0">Events Schedule</h4>
                        </div>
                        <div class="col-md-8 col-sm-9 text-right">
                            <div class="btn-group">
                                <button class="btn btn-raised btn-success btn-sm" id="change-view-today">today</button>
                                <button class="btn btn-raised btn-default btn-sm" id="change-view-day" >Day</button>
                                <button class="btn btn-raised btn-default btn-sm" id="change-view-week">Week</button>
                                <button class="btn btn-raised btn-default btn-sm" id="change-view-month">Month</button>
                            </div>
                        </div>
                    </div>
                </div>
                </div> -->
                <div class="card">
                <div class="body">
                    <div class="tcol">                       
                        <div id="calendar"></div>                       
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- main content -->

<script src="resources/js/dropzone.js"></script>
<script src="resources/js/jquery-2.1.3.min.js"></script>
<script src="resources/js/jscolor.js"></script>   
<script src="resources/js/sweetalert.min.js"></script>
 <script src="resources/js/jwplayer.js"></script> 
<script>jwplayer.key="5ZvM0G/PeHL2Q+mOm6ysDiHoWSpMMo3CSiYc7Q==";</script> 
<%@ include file = "admin-includeDynamicSideNavBarFromSession.jsp" %>
<%@ include file="admin-includeFooter.jsp" %>
<script src="resources/js/fullcalendarscripts.bundle.js"></script>
<script src="resources/js/date.format.js"></script>
<script src="resources/js/calendar.js"></script>


 </body>
</html>