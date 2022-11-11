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
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	
<link href="css/footer.css" rel="stylesheet" media="all">

<link href="css/main.css" rel="stylesheet" media="all">

<link rel="stylesheet" href="css/ionicons.min.css">


<style>
.divider:after, .divider:before {
	content: "";
	flex: 1;
	height: 1px;
	background: #eee;
}

.h-custom {
	height: calc(100% - 73px);
}

@media ( max-width : 450px) {
	.h-custom {
		height: 100%;
	}
}
</style>


</head>
<body>

<% String message = (String)request.getAttribute("delete");%>

<% String message2 = (String)request.getAttribute("validate");%>

<% String message3 = (String)request.getAttribute("create");%>

<script>

var extnReason = '<%=message%>';



if(extnReason != null && extnReason != "null"){
	
	
	alert("Account Successfully Deleted");
		
	
}


var validate = '<%=message2%>';



if(validate != null && validate != "null"){
	
	
	alert("Password Successfully Updated");


}

var Create = '<%=message3%>';



if(Create != null && Create != "null"){
	
	
	alert("Profile Created Suucessfully");
		
	
}


</script>








	<div style="text-align: center"></div>
	<br>

<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <div class="container px-4">
                <a class="navbar-brand" href="#page-top"></a>
                <img src="Images/Last.png" Style="width:55px;">
                <h3 style="color:white;margin-left:10px;">Car Clinic</h3>
                
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                    </ul>
                </div>
            
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="userInsert.jsp"><span class="glyphicon glyphicon-user"></span> Register</a></li>
                            <li><a href="Login.jsp" style="margin-left:11px;"  ><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
                                
                           
                        </ul>
            
            </div>
            
            
            
            
        </nav>
        <!-- Header-->
       
        <!-- About section-->
       

		<section class="vh-100">
			<div class="container-fluid h-custom">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-md-9 col-lg-6 col-xl-5">
						<img
							
							src="https://img.freepik.com/free-vector/sign-page-abstract-concept-illustration_335657-3875.jpg?w=2000"
							class="img-fluid" alt="Sample image">
					</div>
					<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
					
						<form name="form" action="LoginServlet" method="post"onsubmit="return validate()">
						
							

							<div class="form-outline mb-4">
								<input type="email" name="username" id="form3Example3" required="required"
									class="form-control form-control-lg"
									placeholder="Enter a valid email address" style=" border-radius: 15px; weight=30px;"/> <label
									class="form-label" for="form3Example3">Email address</label>
							</div>

							
							<div class="form-outline mb-3">
								<input type="password" name="password" id="form3Example4" required="required"
									class="form-control form-control-lg"
									placeholder="Enter password" style=" border-radius: 15px; weight=30px;"/> <label class="form-label"
									for="form3Example4">Password</label>
							</div>

							<div class="d-flex justify-content-between align-items-center">
							
								<div class="form-check mb-0">
									<input class="form-check-input me-2" type="checkbox" value=""
										id="form2Example3" /> <label class="form-check-label"
										for="form2Example3"> Remember me </label>
								</div>
								<a href="ResetPassword.jsp" class="text-body">Forgot password?</a>
							</div>

							<div class="text-center text-lg-start mt-4 pt-2">
								<input type="submit"  name="submit" value="Login" class="btn btn-primary btn-lg" style="padding-left: 2.5rem; padding-right: 2.5rem;">
								<p class="small fw-bold mt-2 pt-1 mb-0">
									Don't have an account? <a href="userInsert.jsp" class="link-danger">Register</a>
								</p>
							</div>

						</form>
					</div>
				</div>
			</div>
			
			
			
		</section>
		
		
		<footer class="footer-07">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-12 text-center">
						<h2 class="footer-heading"><a href="#" class="logo">Auto Care</a></h2>
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
</body>
</html>