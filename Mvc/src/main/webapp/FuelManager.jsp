<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fuel Manger</title>
</head>
<body>


 <center><h2>Fuel Manager Page</h2></center>
 
 Welcome <%=request.getAttribute("userName") %> 
 
 <div style="text-align: right"><a href="LogoutServlet">Logout</a></div>

</body>
</html>