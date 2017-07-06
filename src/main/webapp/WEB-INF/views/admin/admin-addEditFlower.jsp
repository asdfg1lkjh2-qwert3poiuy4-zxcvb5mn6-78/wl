<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Flower</title>
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

        <%@ include file = "admin-includeRightBar.jsp" %>

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
                                    <div class="col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Flower Name">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Flower ID">
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
                                        <div class="form-group drop-custum" id="flowerTypeDiv">
                                            <select class="form-control show-tick">
                                                <option value="">-- Flower Type --</option>
                                                <option value="10">XXX</option>
                                                <option value="20">XXXX</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-8 col-xs-12">
                                        <div class="form-group">
                                            <label for="comment">Flower Description</label>
                                            <textarea class="form-control textarea-add" rows="5"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <label for="comment">Occasion</label>
                                            <div class="div-center hundred-width new-brdr added"  id="occasionDiv">
                                                <select name="langOpt2[]" class="selectHeader add-padding-hide" multiple id="langOpt2">
                                                    <!-- <option value="Flower">Flower</option>
                                                    <option value="Grocery">Grocery</option>
                                                    <option value="Priest">Priest</option>
                                                    <option value="Wedding">Wedding Cards</option>
                                                    <option value="Transport">Transport</option>
                                                    <option value="Photographer">Photographer</option>
                                                    <option value="Cook">Cook</option>
                                                    <option value="Catering">Catering</option> -->
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix"></div>
                                <div class="header margin-left-right-zero marginb15">
                                    <h2>Flower Details </h2>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-4 col-xs-12">
                                        <div class="form-group drop-custum">
                                            <select class="form-control show-tick">
                                                <option value="">-- Color --</option>
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
                                                <input type="text" class="form-control" placeholder="Freebie">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-sm-8 col-xs-12">
                                        <label for="comment">Flower Images</label>
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
                                    <div class="col-sm-4 col-xs-12 flowerday-hr">
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
                                    </div>
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
    <%@ include file="admin-includeFooter.jsp" %>
    <!-- Jquery Js --> 
    
    <script type="text/javascript">
    
    $(document).ready(function(){
		fetchAllFlowerType();
	});
    
    var typeArr = new Array();
    
    function fetchAllFlowerType() {
		$.ajax({
				type : "GET",
				url : "admin-fetchAllFlowerType",
				data : "",
				contentType : "application/json",
				processData : false,
				success : function(data) {
					$("#flowerTypeDiv").html("");
					if (data.status) {
						var abc = "<div class=\"btn-group bootstrap-select form-control show-tick\"><button type=\"button\" id=\"selectTab\" class=\"btn dropdown-toggle btn-default\" data-toggle=\"dropdown\" title=\"-- State Name --\" aria-expanded=\"false\"><span class=\"filter-option pull-left\">--State Name--</span>&nbsp;<span class=\"bs-caret\"><span class=\"caret\"></span></span></button><div class=\"dropdown-menu open\" style=\"max-height: 267px; overflow: hidden; min-height: 0px;\">"
								+"<ul class=\"dropdown-menu inner\" role=\"menu\" style=\"max-height: 257px; overflow-y: auto; min-height: 0px;\">"
								+"<li data-original-index=\"0\" class=\"selected\" id=\"li0\" onclick=\"clickLi('"+0+"','State Name')\"><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\"><span class=\"text\">-- State Name --</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
						var cde = "";		
								for(var i = 0; i<data.listAllStates.length; i++){	
									cde = cde + "<li data-original-index='"+Number(Number(i)+Number(1))+"' id='li"+Number(Number(i)+Number(1))+"'><a tabindex=\"0\" class=\"\" style=\"\" data-tokens=\"null\" onclick =\"clickLi('"+Number(Number(i)+Number(1))+"','"+data.listAllStates[i].stateName+"','"+data.listAllStates[i].id+"')\"><span class=\"text\">"+data.listAllStates[i].stateName+"</span><span class=\"glyphicon glyphicon-ok check-mark\"></span></a></li>"
									var arValue = data.listAllStates[i].id+"_"+data.listAllStates[i].stateName;
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
				}
			});
	}
    
    </script>
    
</body>
</html>


















