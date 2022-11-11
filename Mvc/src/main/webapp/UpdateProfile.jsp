<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile | Update</title>

<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	<link href="css/footer.css" rel="stylesheet" media="all">
	

<link rel="stylesheet" href="css/style.css">
<style>

input[type=text],[type=password],[type=email] {
  border: 1px solid skyblue;
  border-radius: 4px;
}
</style>




</head>
<body>

	<%	String Update = (String) request.getAttribute("update");	%>


	<script>
	var ob1 = '<%=Update%>';

		if (ob1 != null && ob1 != "null") {

			alert("Profile Suucessfully Updated");

		}
	</script>



	<%
//String id = request.getParameter("id");
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




	<div style="text-align: right">
		<a href="LogoutServlet">Logout</a>
	</div>



<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <div class="container px-4">
                <a class="navbar-brand" href="#page-top"></a>
                <img src="Images/Last.png" Style="width:55px;">
                <h3 style="color:white;margin-left:10px;">Auto Care</h3>
                
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto" style="margin-left:15px;">
                        <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
                       
                    </ul>
                </div>
            
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=email%></a></li>
                            <li><a href="LogoutServlet" style="margin-left:15px;"><span class="glyphicon glyphicon-user"> Logout</span> </a></li>
                        </ul>
            
            </div>
            
            
            
            
        </nav>


	<section class="ftco-section" style="margin-top:-5%;">
		<div class="container">
			
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrap d-md-flex">
						<div class="text-wrap p-4 p-lg-5 d-flex img" style="background-image: url('https://www.xtrafondos.com/en/descargar.php?id=8471&vertical=1');">
							<div class="text w-100">
								<h2 class="mb-4">Welcome to Profile Update</h2>
								
							</div>
			      </div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="row justify-content-center py-md-5">
			      		<div class="col-lg-9">
			      	<h3 class="mb-3 text-center">Update your profile</h3>
									<form action="update" method="post" class="signup-form">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
							      			<label class="label" for="name">First Name</label>
							      			<input type="text" style="font-size:13px;" id="typeText" name="fname" value="<%=fname %>" class="form-control">
							      		</div>
							      		

							      		
							      		
											</div>
											<div class="col-md-6">
												<div class="form-group">
							      			<label class="label" for="name">Last Name</label>
							      			<input type="text" name="lname" value="<%=lname%>" class="form-control" style="font-size:13px;">
							      		</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
							      			<label class="label" for="name">Age</label>
							      			<input type="text" name="age" value="<%=age%>" class="form-control" style="font-size:13px;">
							      		</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
							      			<label class="label" for="name">Gender</label>
							      			<input type="text" name="gender" value="<%=gender%>" placeholder ="Male/Female"class="form-control" style="font-size:13px;">
							      		</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
							      			<label class="label" for="email">City</label>
							      			<input type="text" name="city" value="<%=city%>" class="form-control" style="font-size:13px;">
							      		</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
							      			<label class="label" for="email">Address</label>
							      			<input type="text" name="address" value="<%=address%>" class="form-control" style="font-size:13px;">
							      		</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
							      			<label class="label" for="email">Tel</label>
							      			<input type="text" name="tel" value="<%=tel%>" class="form-control" maxlength="10" minlength="10" style="font-size:13px;">
							      		</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
							      			<label class="label" for="email"  >Email Address</label>
							      			<input type="email" name="email" value="<%=email%>" class="form-control" readonly style="font-size:13px;">
							      		</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
						            	<label class="label" for="password">Password</label>
						              <input type ="password" name="password" id="password" value="<%=password%>" class="form-control" style="font-size:13px;">
						            </div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
						            	<label class="label" for="password">Confirm Password</label>
						              <input type ="password" name="password" id="confirm_password" value="<%=password%>" class="form-control" style="font-size:13px;">
						            </div>
											</div>
											
											<div class="col-md-12">
												<div class="form-group">
						            	<button type="submit"  name ="submit" class="btn btn-primary submit p-3">Update account</button>
						            </div>
											</div>
										</div>

				          </form>
				          
			      		</div>
			      	</div>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>



		<footer class="footer-07">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-12 text-center">
						<h2 class="footer-heading" ><a href="#" class="logo">Auto Care</a></h2>
						<p class="menu">
							<a href="#">Home</a>
							<a href="#">Agent</a>
							<a href="#">About</a>
							<a href="#">Listing</a>
							<a href="#">Blog</a>
							<a href="#">Contact</a>
						</p>
						<ul class="ftco-footer-social p-0">
              <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><span class="fa fa-facebook"></span></a></li>
              <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><span class="fa fa-twitter"></span></a></li>
              <li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><span class="fa fa-instagram"></span></a></li>
            </ul>
					</div>
				</div>
			</div>
		</footer>

<script type="text/javascript">

var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
  
  </script>




	<!-- 
	<form>
First Name <input type="text" name="fname" value="<%=fname %>"><br><br>

Last Name <input type="text" name="lname" value="<%=lname%>"><br><br>

Age <input type="text" name="age" value="<%=age%>"><br><br>

Gender <input type="text" name="gender" value="<%=gender%>"><br><br>

City <input type="text" name="city" value="<%=city%>"><br><br>

Address <input type="text" name="address" value="<%=address%>"><br><br>

Tell  <input type="text" name="tel" value="<%=tel%>"><br><br>

Email  <input type="email" name="email" value="<%=email%>"><br><br>

Password  <input type ="password" name="password" value="<%=password%>"><br><br>



<input type="submit" name ="submit" value="Update Entries">


	
	
	
	
	</form>
	 -->
</body>
</html>