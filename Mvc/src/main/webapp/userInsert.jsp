<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>


<link href="css/footer.css" rel="stylesheet" media="all">
<link rel="stylesheet" href="css/ionicons.min.css">
<style>
.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 13px;
}
</style>

<title>Register</title>
</head>
<body>




 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <div class="container px-4">
                <a class="navbar-brand" href="#page-top"></a>
                <img src="Images/Last.png" Style="width:55px;">
                <h3 style="color:white;margin-left:10px;">Auto Care</h3>
                
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


 
<section class="h-100 bg-dark">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
             <img src="Images/kari-shea-vGgaESc2M1Y-unsplash.jpg" style="height:100%;"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">User registration form</h3>
    <form action="insert" method="post">
                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                     <label class="form-label" for="form3Example1m">First name</label>
                      <input type="text" name="fname1" id="form3Example1m" class="form-control form-control-lg" />
                     
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                    <label class="form-label" for="form3Example1n">Last name</label>
                      <input type="text" name="lname1" id="form3Example1n" class="form-control form-control-lg" />
                      
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                     <label class="form-label" for="form3Example1m1">Age</label>
                      <input type="text" name="age1" id="form3Example1m1" class="form-control form-control-lg" />
                     
                    </div>
                  </div>
                
                </div>
                
                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">Gender: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                  
                    <input class="form-check-input" type="radio" value="femeale"name="gender1" id="femaleGender"     />
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio"  value="male" name="gender1" id="maleGender"  />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  

                </div>
                 <h6 class="mb-0 me-4 inline">Select City: </h6>
                 <br>
                 
                  <div class="row">
                
                  <div class="col-md-6 mb-4">
  
                    <select class="form-select form-select-inline lg mb-2" aria-label=".form-select-lg example" name="city1">
                      <option value="city">City</option>
                      <option value="Colombo">Colombo</option>
                      <option value="Gampaha">Gampaha</option>
                      <option value="Kandy">Kandy</option>
                      <option value="Malabe">Malabe</option>
                      <option value="Galle">Galle</option>
                      
                    </select>

                  </div>
                </div>
                
                

                <div class="form-outline mb-4">
                 <label class="form-label" for="form3Example8">Address</label>
                  <input type="text"  name="address1" id="form3Example8" class="form-control form-control-lg" />
                 
                </div>

                

              

                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example9">Tel</label>
                  <input type="text" name="tel1" id="form3Example9" class="form-control form-control-lg" />
                  
                </div>

                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example90">Email</label>
                  <input type="email" name="email1" id="form3Example90" class="form-control form-control-lg" />
                  
                </div>

                <div class="form-outline mb-4">
                 <label class="form-label" for="form3Example99">Password</label>
                  <input type="password" name="password1" id="password" class="form-control form-control-lg" />
                 
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example97">confirm Password</label>
                  <input type="password" name="password1" id="confirm_password" class="form-control form-control-lg" />
                
                </div>

                <div class="d-flex justify-content-end pt-3">
                  <input type="reset" value="Reset" class="btn btn-light btn-lg">
                  <input  type="submit" value="submit" class="btn btn-warning btn-lg ms-2">
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

</body>
</html>