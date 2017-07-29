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
	<div id="myDiv">This text will be replaced with a player.</div>
		<div id="imageFile">
		</div>
	
<script src="resources/js/jquery-2.1.3.min.js"></script>
<script src="resources/js/sweetalert.min.js"></script>
 <script src="resources/js/jwplayer.js"></script> 
<script>jwplayer.key="5ZvM0G/PeHL2Q+mOm6ysDiHoWSpMMo3CSiYc7Q==";</script> 
<!-- <script src="//content.jwplatform.com/libraries/uyah3efE.js"></script> -->

                

<!-- Dropzone Plugin Js -->
<script type="text/javascript">
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

</script>

 </body>
</html>