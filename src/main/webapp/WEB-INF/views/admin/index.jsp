<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock | Login Admin</title>
<%@include file="admin-includeHeader.jsp"%>
</head>
<body class="login-page authentication">

	<div class="container">
		<div class="card-top"></div>
		<div class="card">
			<h1 class="title">
				<span>Wedlock Application</span>Login
				<span class="msg">Sign in to start your session</span>
			</h1>
			<div class="col-md-12" id="loginDiv">
				<form id="sign_in" method="POST">

					<div class="input-group">
						<span class="input-group-addon"> <i
							class="zmdi zmdi-account"></i>
						</span>
						<div class="form-line">
							<input type="text" class="form-control" name="sellerEmailId" id="sellerEmailId"
								placeholder="EmailId/Phone No.">
						</div>
					</div>
					<div class="input-group">
						<span class="input-group-addon"> <i class="zmdi zmdi-lock"></i>
						</span>
						<div class="form-line">
							<input type="password" class="form-control" name="sellerPassword" id="sellerPassword"
								placeholder="Password">
						</div>
					</div>
					 <div class="input-group">
						<span class="input-group-addon"> <i class="zmdi zmdi-lock"></i>
						</span> 
						<div class="form-group drop-custum">
							<select class="form-control show-tick" name="loginAs" id="loginAs">
								<option value="">Login As</option>
								<option value="Admin">Admin</option>
								<option value="Seller">Seller</option>
							</select>
						</div>
					</div>
					<!-- <div class="form-group drop-custum">
						<select class="form-control show-tick" name="packageFor"
							id="packageFor">
							<option value="">Login As</option>
							<option value="HalfYearly">Admin</option>
							<option value="Yearly">Seller</option>
						</select>
					</div> -->
					<div>
						<div class="">
							<input type="checkbox" name="rememberme" id="rememberme"
								class="filled-in chk-col-pink"> <label for="rememberme">Remember
								Me</label>
						</div>
						<div class="text-center">
							<a href="#"
								class="btn btn-raised waves-effect g-bg-blush2" type="submit" id="signIn">SIGN
								IN</a> <a href="sign-up.html" class="btn btn-raised waves-effect"
								type="submit">SIGN UP</a>
						</div>
						<div class="text-center">
							<a href="forgot-password.html">Forgot Password?</a>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-12 hideDiv" id="otpDiv">
			<div class="col-md-12">
			<img src="resources/images/otp_Verify.jpg" class="img-responsive" style="width:80px; height:80px;margin:0 auto;">
			<h2 class="text-center">Authenticate Yourself</h2>
            <p class="text-center">Please enter 4 digits passcode sent to your registered mobile number for your first time login.</p>
        <br>
			</div>
			<div class="input-group">
			<div class = "row">
			<div class="col-md-1"></div>
			<div class="col-md-1">
						<span class="input-group-addon"> <i class="fa fa-unlock-alt fa-lg" aria-hidden="true"></i>
						</span>
						</div>
						<div class="col-md-2">
						<div class="form-line">
							<input type="number" class="form-control" name="firstDigit" id="firstDigit"
							 placeholder="2">
						</div>
						</div>
						<div class="col-md-2">
						<div class="form-line">
							<input type="number" min="1" max="1" class="form-control" name="secondDigit" id="secondDigit"
							readonly="readonly"	placeholder="3">
						</div>
						</div>
						<div class="col-md-2">
						<div class="form-line">
							<input type="number" min="1" max="1" class="form-control" name="thirdDigit" id="thirdDigit"
							readonly="readonly"	placeholder="4">
						</div>
						</div>
						<div class="col-md-2">
						<div class="form-line">
							<input type="number" min="1" max="1" class="form-control" name="fourthDigit" id="fourthDigit"
							readonly="readonly"	placeholder="6">
						</div>
						</div>
						
						<div class="col-md-2"></div>
						
					</div>
				</div>
				<div class="col-md-12">
				<div class="text-center">
							<a href="#"
								class="btn btn-raised waves-effect g-bg-blush2 linkDisable" type="submit" id="verifyMe" >Verify Me</a> 
						</div>
						<div class="text-center">
							<a href="forgot-password.html">Forgot Password?</a>
						</div>
				</div>
			</div>
		</div>
	</div>
	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$
		.ajax({
			type : "POST",
			url : "admin-addEditAdminDetails",
			data : "",
			contentType :false,
			processData : false,
			success : function(data) {
				if(data){
					
				}
			},
			error : function(e) {
				alert("Error");
				
			}
		});
		if(location.href.match(/inActive/)){
			idForFetch = location.search.split("?");
			idForFetch = idForFetch[1].split("=");
			idForFetch = idForFetch[1];
			
			var job = {};
			job["sellerEmailId"] = idForFetch
			alert(JSON.stringify(job));
			$
			.ajax({
				type : "POST",
				url : "admin-sellerSendMailByEmailId",
				data : JSON.stringify(job),
				contentType :"application/json",
				processData : false,
				success : function(data) {
					if(data){
						alert("Success");
					}
				},
				error : function(e) {
					alert("Error");
					
				}
			});
		}
		
	});
	
	$("#signIn").click(function (event){
		event.preventDefault();
		
		$("#submit").prop("disabled", true);
		
		if($("#loginAs").val() === "Admin"){
			var data = $("#sign_in")[0];
			var formData = new FormData(data);
			$
			.ajax({
				type : "POST",
				url : "admin-loginCredentials",
				data : formData,
				contentType :false,
				processData : false,
				success : function(data) {
					alert(JSON.stringify(data));
					if(data){
						sessionStorage.clear();
						window.location="admin-dashboard";
					}else{
						alert("Your username or password is incorrect");
					}
					$("#submit").prop("disabled", false);
				},
				error : function(e) {
					alert("Error");
					$("#submit").prop("disabled", false);
				}
			});
		}else{
			var job={};
			job["sellerEmailId"] = $("#sellerEmailId").val();
			job["sellerPassword"] = $("#sellerPassword").val();
			alert(JSON.stringify(job));
			$
			.ajax({
				type : "POST",
				url : "seller-loginCredentials",
				data : JSON.stringify(job),
				contentType :"application/json",
				processData : false,
				success : function(data) {
					alert(JSON.stringify(data));
					if(data.status){
						sessionStorage.clear();
						sessionStorage.setItem("mssgStatus",data.mssgStatus);
						window.location="admin-dashboard";
					}else{
						if(data.mssgStatus.includes("Verfiy Your Mobile")){
							alert(data.mssgStatus);
							$("#otpDiv").removeClass("hideDiv");
							$("#loginDiv").addClass("hideDiv");
						}else {
							alert(data.mssgStatus);
						}
							
					}
					$("#submit").prop("disabled", false);
				},
				error : function(e) {
					alert("Error");
					$("#submit").prop("disabled", false);
				}
			});
		}
		
		
	});
	
	
		$("#firstDigit,#secondDigit,#thirdDigit,#fourthDigit").on("keyup keydown",function(e){
			if(this.value.length > 0){
				$(this).val(this.value[0]);
				 if(this.id === "firstDigit"){
					$("#"+this.id).blur();
					$("#secondDigit").focus();
					$("#secondDigit").prop("readonly",false);
					$("#secondDigit").closest("div").addClass("focused");
					$("#firstDigit").closest("div").removeClass("focused");
				}else if(this.id === "secondDigit"){
					$("#"+this.id).blur();
					$("#thirdDigit").focus();
					$("#thirdDigit").prop("readonly",false);
					$("#thirdDigit").closest("div").addClass("focused");
					$("#secondDigit").closest("div").removeClass("focused");
				}else if(this.id === "thirdDigit"){
					$("#"+this.id).blur();
					$("#fourthDigit").focus();
					$("#fourthDigit").prop("readonly",false);
					$("#fourthDigit").closest("div").addClass("focused");
					$("thirdDigit").closest("div").removeClass("focused");
				} 
			}
			 if(e.keyCode === Number(8)){
				 $(this).val("");
				 $("#"+this.id).focus();
				 $("#"+this.id).closest("div").addClass("focused");
			 }
			 
			 if(($("#firstDigit").val() && $("#secondDigit").val() && $("#thirdDigit").val() && $("#fourthDigit").val()) !== ""){
				 $("#verifyMe").removeClass("linkDisable");
			 }
		});
		var count = 0;
		$("#verifyMe").click(function(){
			var job = {};
			job["otp"] = $("#firstDigit").val()+$("#secondDigit").val()+$("#thirdDigit").val()+$("#fourthDigit").val();
			job["emailId"] = $("#sellerEmailId").val();
			job["password"] = $("#sellerPassword").val();
			
			$
			.ajax({
				type : "POST",
				url : "seller-checkOtp",
				data : JSON.stringify(job),
				contentType :"application/json",
				processData : false,
				success : function(data) {
					alert(JSON.stringify(data));
					if(data.status){
						sessionStorage.clear();
						window.location="admin-dashboard";
					}else{
						alert(count);
						if(Number(count) < Number(2)){
							var attempts = Number(2) - Number(count);
							var str = (attempts > 1) ? "attempts left" : "attempt left";
							$("#firstDigit").val("");
							$("#secondDigit").val("");
							$("#thirdDigit").val("");
							$("#fourthDigit").val("")
							alert("You have entered wrong passcode. Please try again. "+attempts+ " "+str);
							count = Number(count) + Number(1);
						}else{
							$("#otpDiv").addClass("hideDiv");
							$("#loginDiv").removeClass("hideDiv");
							count = Number(0);
						}
					}
					$("#submit").prop("disabled", false);
				},
				error : function(e) {
					alert("Error");
					$("#submit").prop("disabled", false);
				}
			});
		});
	</script>
	<%@include file="admin-includeFooter.jsp"%>
	<div class="theme-bg"></div>
	
</body>
</html>