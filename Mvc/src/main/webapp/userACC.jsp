<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  background-image: url("https://images.pexels.com/photos/1592384/pexels-photo-1592384.jpeg");
  background-image:width:50%;
  height:10%;
}
</style>

</head>
<body>


Welcome
	<%=request.getAttribute("userName")%>
	
	
	
	<div style="text-align: right">
		<a href="LogoutServlet">Logout</a>
	</div>
	
	
	
	<table size="3">
		<c:forEach var="ce" items="${us}">

			
			<c:set var="lname" value="${ce.lname}" />
			<c:set var="fname" value="${ce.fname}" />
			<c:set var="age" value="${ce.age}" />
			<c:set var="gender" value="${ce.gender}" />
			<c:set var="city" value="${ce.city}" />
			<c:set var="address" value="${ce.address}" />
			<c:set var="tel" value="${ce.tel}" />
			<c:set var="email" value="${ce.email}" />
			<c:set var="password" value="${ce.password}" />
			

 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <div class="container px-4">
                <a class="navbar-brand" href="#page-top"></a>
                <img src="Images/Last.png" Style="width:55px;">
                <h3 style="color:white;margin-left:10px;">Auto Care</h3>
               
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive" >
                    <ul class="navbar-nav ms-auto" style="margin-left:15px;">
                        <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                    </ul>
                </div>
            
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=request.getAttribute("userName")%></a></li>
                            <li><a href="LogoutServlet"  style="margin-left:15px;"><span class="glyphicon glyphicon-user"> Logout</span> </a></li>
                            
                               
                        </ul>
            
            </div>
            
            
            
            
        </nav>

 <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                <div
    class="p-5 text-center bg-image"
    style="
      background-image: url('https://img.freepik.com/premium-vector/circuit-board-technology-background-purple-blue-light-bannerelectronic-system-concept_268461-169.jpg');
      height: 40px;
    "
  >
    <div class="mask" style="bacground-color: rgba(0, 0, 0, 0.6);">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-white">
          <h2 class="title">User Profile</h2>
        
        </div>
      </div>
    </div>
  </div>
                    
                    
                </div>
                <div class="card-body">
                    <form method="POST">
                        <div class="form-row m-b-55">
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5"  value="${ce.fname}" disabled name="fname">
                                            <label class="label--desc">first name</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" value="${ce.lname}" disabled name="lname">
                                            <label class="label--desc">last name</label>
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
                                            <input class="input--style-5"  value="${ce.age}" disabled name="fname">
                                            <label class="label--desc">Age</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" value="${ce.gender}" disabled name="lname">
                                            <label class="label--desc">Gender</label>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        
                        
                        
                        <div class="form-row">
                            <div class="name">City</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" value="${ce.city}" disabled name="city">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" value="${ce.address}" disabled name="address">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" value="${ce.email}" disabled name="email">
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Phone</div>
                            <div class="value">
                                <div class="row row-refine">
                                   
                                    <div class="col-9">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" value="${ce.tel}" disabled name="tel">
                                            <label class="label--desc"></label>
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
                                            <input class="input--style-5" value="${ce.password}" disabled name="tel">
                                            <label class="label--desc"></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <c:url value="UpdateProfile.jsp" var="userUPDATE">

		<c:param name="id" value="${id}" />
		<c:param name="fname" value="${fname}" />
		<c:param name="lname" value="${lname}" />
		<c:param name="age" value="${age}" />
		<c:param name="gender" value="${gender}" />
		<c:param name="city" value="${city}" />
		<c:param name="address" value="${address}" />
		<c:param name="tel" value="${tel}" />
		<c:param name="email" value="${email}" />
		<c:param name="password" value="${password}" />
		

	</c:url><br>	<br>
	
	
	 <c:url value="deleteAcc.jsp" var="userDelete">

		<c:param name="id" value="${id}" />
		<c:param name="fname" value="${fname}" />
		<c:param name="lname" value="${lname}" />
		<c:param name="age" value="${age}" />
		<c:param name="gender" value="${gender}" />
		<c:param name="city" value="${city}" />
		<c:param name="address" value="${address}" />
		<c:param name="email" value="${email}" />
		<c:param name="password" value="${password}" />
		<c:param name="tel" value="${tel}" />

	</c:url>
                        
                    
                        <div>
                        
  
                           <a href="${userUPDATE}"><input type="button" type="button" class="btn btn-primary btn-rounded" class="btn btn--radius-2 btn--blue" name ="update" value="Update Account" style="width:x;"></a><br><br><br>
                           <a href="${userDelete}"><input type="button" type="button" class="btn btn-warning btn-rounded"class="btn btn--radius-2 btn--red"name ="delete" value="Delete Account"></a>
                        </div>
                        
                        <div>
                            
                           
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>




<footer class="footer-07">
			<div class="container">
				<div class="row justify-content-center" style="background-color:#660033;">
					<div class="col-md-12 text-center">
						<h2 class="footer-heading" ><a href="#" class="logo" style="color: white;">Auto Care</a></h2>
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












<!-- 


			<tr>
				<td>User ID</td>
				<td>${ce.id}</td>
			</tr>
			<tr>
				<td>User First Name</td>
				<td>${ce.fname}</td>
			</tr>
			<tr>
				<td>User Last Name</td>
				<td>${ce.lname}</td>
			</tr>
			<tr>
				<td>Age</td>
				<td>${ce.age}</td>
			</tr>
			<tr>
				<td>Gender</td>
				<td>${ce.gender}</td>
			</tr>
			<tr>
				<td>City</td>
				<td>${ce.city}</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>${ce.address}</td>
			</tr>
			<tr>
				<td>Tel</td>
				<td>${ce.tel}</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>${ce.email}</td>
			</tr>
			<tr>
				<td>Password</td>
				<td>${ce.password}</td>
			</tr>
			

		</c:forEach>


	</table>

	<c:url value="UpdateProfile.jsp" var="userUPDATE">

		<c:param name="id" value="${id}" />
		<c:param name="fname" value="${fname}" />
		<c:param name="lname" value="${lname}" />
		<c:param name="age" value="${age}" />
		<c:param name="gender" value="${gender}" />
		<c:param name="city" value="${city}" />
		<c:param name="address" value="${address}" />
		<c:param name="tel" value="${tel}" />
		<c:param name="email" value="${email}" />
		<c:param name="password" value="${password}" />
		

	</c:url><br>	<br>

	<a href="${userUPDATE}">
	 <input type="button" name ="update" value="Update">
	</a>
	
	<br>	<br>	
	
	
	 <c:url value="deleteAcc.jsp" var="userDelete">

		<c:param name="id" value="${id}" />
		<c:param name="fname" value="${fname}" />
		<c:param name="lname" value="${lname}" />
		<c:param name="age" value="${age}" />
		<c:param name="gender" value="${gender}" />
		<c:param name="city" value="${city}" />
		<c:param name="address" value="${address}" />
		<c:param name="email" value="${email}" />
		<c:param name="password" value="${password}" />
		<c:param name="tel" value="${tel}" />

	</c:url>
	 
	<a href="${userDelete}">
	  <input type="button" name ="delete" value="Delete Account">
	</a>
	 --> 
	 
	 
</body>
</html>