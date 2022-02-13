<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Here</title>
<%@include file="all_components/all_css.jsp"%>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
%>
<style>
.btn-primary{
background-color: #234e9b;
}
.card {
/* 	border-radius: 50px 20px; */
	padding: 10px;
	/* border: 2px solid blue; */
}

.bg-img {
	background-image: url('img/images (8).jpeg');
	height: 93vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
body{
overflow: hidden;
}
</style>
</head>
<body>
	<%@include file="all_components/nav_bar.jsp"%>

		<div class="row">
		<div class="col-md-5">
			<div class="container-fluid bg-img">
			
			</div>
		 </div>
			<div class="col-md-7">
				<div class="container-fluid">
				<c:if test="${not empty succMsg }">
					<h4 class="text-center text-success">${succMsg }</h4>
					<c:remove var="succMsg" />
				</c:if>
				<c:if test="${not empty succMsg1 }">
					<h4 class="text-center alert alert-danger" role="alert">${succMsg1 }</h4>
					<c:remove var="succMsg1" />
				</c:if>
				<div class="text-center">
					<!-- 							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i> -->
					<h1 style="color: white">Login</h1>
					<br>
					<br>
				</div>
				<div class="row mt-5">
					<div class="col-md-6 offset-md-3">
<!-- 				<center>	<img alt="login here" src="img/download (1).jpeg"> </center> -->
						<div class="card border-0">
							<div class="card-body">

								<form action="login" method="post">
									<div class="form-group">
										<label>Username</label> <input type="text"
											required="required" class="form-control border-left-0 border-top-0 border-right-0 border-radius-0 border-color-"
											id="exampleInputEmail1" aria-describedby="emailHelp"
											name="email" autofocus="on">
									</div>

									<div class="form-group">

										<label for="exampleInput Password1">Password</label> <input
											required="required" type="password" class="form-control border-left-0 border-top-0 border-right-0"
											id="exampleInputPassword1" name="password">
											<br> <input
											type="checkbox" onclick="myFunction()"> &nbspShow Password
										<script>
											function myFunction() {
												var x = document
														.getElementById("exampleInputPassword1");
												if (x.type === "password") {
													x.type = "text";
												} else {
													x.type = "password";
												}
											}
										</script>
									</div>

									<button type="submit" href="admin.jsp"
										class="btn btn-primary"><h5>&nbsp&nbsp&nbspLogin&nbsp&nbsp&nbsp</h5></button>
								</form>
							</div>
							</div>
						</div>
					</div>
			
			</div>
		</div>
	</div>
</body>
</html>
