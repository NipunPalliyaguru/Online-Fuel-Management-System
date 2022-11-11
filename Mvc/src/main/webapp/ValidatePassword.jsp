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
<link href="css/mainReset.css" rel="stylesheet" media="all">
<link href="css/util.css" rel="stylesheet" media="all">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet">

</head>
<body>





	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1"> Reset Password<br><br> </span>
					<h5 style="color:white;"><%=request.getAttribute("Email2")%></h5>
				</div>

				<form action="validate" method="post" class="login100-form validate-form">
				
				<input type="text" hidden="hidden" name="email"  value="<%=request.getAttribute("Email2")%>" >
				
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Username is required">
						<span class="label-input100">Password</span> <input class="input100"
							type="password" name="password" id="password" required="required"
							> <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">Confirm Password</span> <input class="input100"
						type="password" name="password" id="confirm_password" required="required"
							> <span
							class="focus-input100"></span>
					</div>



					<div class="flex-sb-m w-full p-b-30"></div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Update Password</button>
					</div>
				</form>
			</div>
		</div>
	</div>


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