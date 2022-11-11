<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<link href="css/main.css" rel="stylesheet" media="all">



<style>
body {
	background-image:
		url("https://images.pexels.com/photos/1592384/pexels-photo-1592384.jpeg");
	background-image: width:50%;
	height: 50%;
}
</style>

</head>
<body>

	<%
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String age = request.getParameter("age");
String gender = request.getParameter("gender");
String city = request.getParameter("city");
String address = request.getParameter("address");
String tel = request.getParameter("tel");
String email = request.getParameter("email");
String password = request.getParameter("password");
	%>


	Welcome
	<%=email%>



	<div style="text-align: right">
		<a href="LogoutServlet">Logout</a>
	</div>




	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav">
		<div class="container px-4">
			<a class="navbar-brand" href="#page-top"></a> <img
				src="Images/Last.png" Style="width: 55px;">
			<h3 style="color: white; margin-left: 10px;">Auto Care</h3>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto" style="margin-left: 15px;">
					<li class="nav-item"><a class="nav-link" href="#about">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
					<li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
				</ul>
			</div>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						<%=email%></a></li>
				<li><a href="LogoutServlet" style="margin-left: 15px;"><span
						class="glyphicon glyphicon-user"> Logout</span> </a></li>


			</ul>

		</div>




	</nav>


	<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
					<div class="p-5 text-center bg-image"
						style="background-image: url('https://static.vecteezy.com/system/resources/previews/002/082/563/original/black-and-red-overlapped-arrows-header-abstract-modern-banner-with-place-for-your-text-material-design-abstract-widescreen-background-vector.jpg'); height: 100px;">
						<div class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
							<div
								class="d-flex justify-content-center align-items-center h-100">
								<div class="text-white">
									<h2 class="title">User Profile</h2>

								</div>
							</div>
						</div>
					</div>


				</div>
				<div class="card-body">
					<form method="post" action="delete">
						<div class="form-row m-b-55">
							<div class="name">Name</div>
							<div class="value">
								<div class="row row-space">
									<div class="col-2">

										<div class="input-group-desc">
											<input class="input--style-5" value="<%=fname%>" readonly
												name="fname"> <label class="label--desc">first
												name</label>
										</div>
									</div>
									<div class="col-2">
										<div class="input-group-desc">
											<input class="input--style-5" value="<%=lname%>" readonly
												name="lname"> <label class="label--desc">last
												name</label>
										</div>
									</div>
								</div>

							</div>
						</div>



						<div class="form-row m-b-55">
							<div class="name">Personal Details</div>
							<div class="value">
								<div class="row row-space">
									<div class="col-2">
										<div class="input-group-desc">
											<input class="input--style-5" value="<%=age%>" readonly
												name="age"> <label class="label--desc">Age</label>
										</div>
									</div>
									<div class="col-2">
										<div class="input-group-desc">
											<input class="input--style-5" value="<%=gender%>" readonly
												name="gender"> <label class="label--desc">Gender</label>
										</div>
									</div>
								</div>

							</div>
						</div>



						<div class="form-row">
							<div class="name">City</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" value="<%=city%>" readonly
										name="city">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Address</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" value="<%=address%>" readonly
										name="address">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Email</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" value="<%=email%>" readonly
										name="email">
								</div>
							</div>
						</div>
						<div class="form-row m-b-55">
							<div class="name">Phone</div>
							<div class="value">
								<div class="row row-refine">

									<div class="col-9">
										<div class="input-group-desc">
											<input class="input--style-5" value="<%=tel%>" readonly
												name="tel"> <label class="label--desc">Phone
												Number</label>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="form-row m-b-55">
							<div class="name">Password</div>
							<div class="value">
								<div class="row row-refine">

									<div class="col-9">
										<div class="input-group-desc">
											<input class="input--style-5" value="<%=password%>" readonly
												name="password"> <label class="label--desc"></label>
										</div>
									</div>
								</div>
							</div>
						</div>




						<div>



							<input type="submit" name="delete" value="Delete  Account"
								title="Click here to remove your account from the system!"
								type="button" class="btn btn-warning btn-rounded"
								class="btn btn--radius-2 btn--red">
						</div>

						<div></div>
					</form>
				</div>
			</div>
		</div>
	</div>




	<footer class="footer-07">
		<div class="container">
			<div class="row justify-content-center"
				style="background-color: #660033;">
				<div class="col-md-12 text-center">
					<h2 class="footer-heading">
						<a href="#" class="logo" style="color: white;">Auto Care</a>
					</h2>
					<p class="menu">
						<a href="#">Home</a> <a href="#">Agent</a> <a href="#">About</a> <a
							href="#">Listing</a> <a href="#">Blog</a> <a href="#">Contact</a>
					</p>
					<ul class="ftco-footer-social p-0">
						<li class="ftco-animate"><a href="#" data-toggle="tooltip"
							data-placement="top" title="Facebook"><span
								class="fa fa-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#" data-toggle="tooltip"
							data-placement="top" title="Twitter"><span
								class="fa fa-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#" data-toggle="tooltip"
							data-placement="top" title="Instagram"><span
								class="fa fa-instagram"></span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>





	<!--  
	
	<form method="post" action="delete">
	
	
	
	
	

	
First Name <input type="text" name="fname" value="<%=fname %>"readonly><br><br>

Last Name <input type="text" name="lname" value="<%=lname%>"readonly><br><br>

Age <input type="text" name="age" value="<%=age%>"readonly><br><br>

Gender <input type="text" name="gender" value="<%=gender%>"readonly><br><br>

City <input type="text" name="city" value="<%=city%>"readonly><br><br>

Address  <input type="text" name="address" value="<%=address%>"readonly><br><br>

Tell  <input type="text" name="tel" value="<%=tel%>"readonly><br><br>


Email  <input type="email" name="email" value="<%=email%>"readonly><br><br>

Password  <input type ="password" name="password" value="<%=password%>"readonly><br><br>



<input type="submit" name ="delete" value="Delete  Account">


	
	
	
	
	</form>
-->
</body>
</html>