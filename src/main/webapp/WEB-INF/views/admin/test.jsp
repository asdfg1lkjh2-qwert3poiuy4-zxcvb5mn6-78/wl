<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock</title>
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css">
<link rel="stylesheet" type="text/css" href="resources/css/roundster.css">
<%@ include file="admin-includeHeader.jsp"%>
</head>

<body>
	<!-- <div id="myDiv">This text will be replaced with a player.</div>
		<div id="imageFile">
		</div> -->

<!-- Test Modal -->
	<!-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content row singleImageEdit">
				<div class="col-md-4 col-xs-6 col-sm-12 thumbnail" id="editImageDiv">
					<img src="resources/images/camera-icon.png" class="img-responsive"/>
				</div>
				<div class="dynamic" id="dynamicDiv">
				
				</div>
				<div class="col-md-8 col-xs-6 col-sm-12 _photographerImages">
					  <form action="#" id="singleUpload" class="dropzone" method="post"
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
				<div class ="row">
				<div class="modal-footer col-md-12 col-sm-12 col-xs-12 footerModal">
					<button type="button" class="btn btn-secondary btn-raised"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-raised gradient-right">Save changes</button>
				</div>
				</div>
				
			</div>
		</div>
	</div> 
	<div class="row">
	<div class="col-md-6">
	<button type="button" id="1" data-toggle="modal" data-target="#myModal">First</button>
	</div>
	<div class="col-md-6">
	<button type="button" id="2" data-toggle="modal" data-target="#myModal">Second</button>
	</div>
	
	</div> -->
	
	<!-- Color Picker -->
	<button id="showColor">Show Picker</button>

<button id="hideColor">Hide Picker</button>

<p><input id="foo" class="jscolor" value="cc4499"></p>

<!-- <video controls preload=metadata width=1280 height=720>
<source src='resources/images/VID-20170226-WA0000.mp4' type='video/mp4'>
</video> -->
	
<script src="resources/js/dropzone.js"></script>
<script src="resources/js/jquery-2.1.3.min.js"></script>
<script src="resources/js/jscolor.js"></script>   
<script src="resources/js/sweetalert.min.js"></script>
 <script src="resources/js/jwplayer.js"></script> 
<script>jwplayer.key="5ZvM0G/PeHL2Q+mOm6ysDiHoWSpMMo3CSiYc7Q==";</script> 
<!-- <script src="//content.jwplatform.com/libraries/uyah3efE.js"></script> -->

                

<script type="text/javascript">


/* Color Picker */

$("#showColor").click(function(){
	$("#foo")[0].jscolor.show();
});

$("#hideColor").click(function(){
	$("#foo")[0].jscolor.hide();
});















/* var i = Number(0);
$("#1,#2").click(function(){
	$("myModal").modal("show");
	var abc = "";
	
	if(this.id === "1"){
		i = Number(i) + Number(1);
		abc = "<form action=\"#\" id=\"singleUpload\" class=\"dropzone dz-clickable\" method=\"post\" enctype=\"multipart/form-data\">"
		+"<div class=\"dz-message\">"
		+"<div class=\"drag-icon-cph\">"
		+"<i class=\"material-icons\">touch_app</i>"
		+"</div>"
		+"<h3>Drop files here or click to upload.</h3>"
		+"<em>(This is just a demo dropzone. Selected files are <strong>not</strong> actually uploaded.)</em>"
		+"</div>"
	    +"</form>"
	    i = 1;
	}else{
		abc = "<div id=\"Drop_2\"></div>"
	}
	
	$("#dynamicDiv").html(abc);
	if(i === Number(0)){
		var myDropzone = new Dropzone(".dynamic #singleUpload", { url: "#"});
	}
	
	var id = $("#dynamicDiv > div").attr("id");
	
	
	/* 	
		alert(myDropzone.autoDiscover);
	 */
	
	/*  }) */

/* $(document).ready(function (){ */
	
	/* $
	.ajax({
		url : "admin-fetchAllCategoryAvailble",
		type : "GET",
		data : "",
		contentType : false,
		success : function(data) {
			if(data.status){
				var abc = "";
				for(var i =0; i< data.categoryAvailables.length; i++){
					 var url =data.categoryAvailables[i].iconFile;
					abc = abc + "<img src = \"getImageSocial\" alt=\"\" height=\"60\" width=\"60\">";

					}	
					$("#imageFile").html(abc);
				}
		
		},
		error : function (data){
			alert("error");
		}
		
	}); */
	/* swal({
		  title: "Are you sure?",
		  text: "You will not be able to recover this imaginary filesss!",
		  type: "warning",
		  showCancelButton: true,
		  confirmButtonColor: "#DD6B55",
		  confirmButtonText: "Yes, delete it!",
		  closeOnConfirm: false
		},
		function(isConfirm){
			if(isConfirm){
				swal("Deleted!", "Your imaginary file has been deleted.", "success");
			}
		});
}); */
/* jwplayer("myDiv").setup({
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
    	  /*   },
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
			] */
    	    
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
    	    /* }); */

    	    
</script>
 <%@ include file="admin-includeFooter.jsp" %>
 </body>
</html>