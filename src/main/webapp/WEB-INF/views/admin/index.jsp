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
				<span>Swift University</span>Login
				<span class="msg">Sign in to start your session</span>
			</h1>
			<div class="col-md-12">
				<form id="sign_in" method="POST">

					<div class="input-group">
						<span class="input-group-addon"> <i
							class="zmdi zmdi-account"></i>
						</span>
						<div class="form-line">
							<input type="text" class="form-control" name="username"
								placeholder="Username">
						</div>
					</div>
					<div class="input-group">
						<span class="input-group-addon"> <i class="zmdi zmdi-lock"></i>
						</span>
						<div class="form-line">
							<input type="password" class="form-control" name="password"
								placeholder="Password">
						</div>
					</div>
					 <div class="input-group">
						<span class="input-group-addon"> <i class="zmdi zmdi-lock"></i>
						</span> 
						<div class="form-group drop-custum">
							<select class="form-control show-tick">
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
							<a href="index.html"
								class="btn btn-raised waves-effect g-bg-blush2" type="submit">SIGN
								IN</a> <a href="sign-up.html" class="btn btn-raised waves-effect"
								type="submit">SIGN UP</a>
						</div>
						<div class="text-center">
							<a href="forgot-password.html">Forgot Password?</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="resources/js/jquery-2.1.3.min.js"></script>
	<%@include file="admin-includeFooter.jsp"%>
	<div class="theme-bg"></div>
	
</body>
</html>