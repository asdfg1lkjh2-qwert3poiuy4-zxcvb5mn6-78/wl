<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock</title>
</head>

<body>
	<form method="post" enctype="multipart/form-data" id="fileUploadForm">
		<!-- Service Name:<input type="text" name="serviceName" id="serviceName">
Service Desc:<input type="text" name="serviceDesc" id="serviceDesc">
Registration Charge:<input type="text" name="registrationCharge" id="registrationCharge">
Package For:<select name="packageFor" id="packageFor">
<option value="">Select Package Here</option>
<option value="monthly">Monthly</option>
<option value="yearly">Yearly</option>
</select> -->
		File:<input type="file" name="iconFiles" id="iconFile"> <input
			type="submit" id="submit" value="Submit">
	</form>
</body>
<script src="resources/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		alert("Hello");
	});

	$("#submit").click(function(event) {

		//stop submit the form, we will post it manually.
		event.preventDefault();

		// Get form
		var form = $('#fileUploadForm')[0];

		// Create an FormData object
		var data = new FormData(form);

		// disabled the submit button
		$("#submit").prop("disabled", true);

		$.ajax({
			type : "POST",
			enctype : 'multipart/form-data',
			url : "testController",
			data : data,
			processData : false,
			contentType : false,
			cache : false,
			timeout : 600000,
			success : function(data) {

				alert("Success");
				$("#submit").prop("disabled", false);

			},
			error : function(e) {

				alert("Error");
				$("#submit").prop("disabled", false);

			}
		});

	});
</script>
</html>