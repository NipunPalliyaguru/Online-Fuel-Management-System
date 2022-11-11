<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
</head>
<body>
	<center>
		<h2>Home Page</h2>
	</center>
	Welcome
	<%=request.getAttribute("userName")%>
	<div style="text-align: right">
		<a href="LogoutServlet">Logout</a>
	</div>


	<table>
		<c:forEach var="ce" items="${us}">

			<c:set var="id" value="${ce.id}" />
			<c:set var="lname" value="${ce.lname}" />
			<c:set var="fname" value="${ce.fname}" />
			<c:set var="age" value="${ce.age}" />
			<c:set var="city" value="${ce.city}" />

			<c:set var="email" value="${ce.email}" />
			<c:set var="password" value="${ce.password}" />
			<c:set var="phone" value="${ce.tel}" />


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
				<td>City</td>
				<td>${ce.city}</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>${ce.email}</td>
			</tr>
			<tr>
				<td>Password</td>
				<td>${ce.password}</td>
			</tr>
			<tr>
				<td>Tel</td>
				<td>${ce.tel}</td>
			</tr>

		</c:forEach>


	</table>


</body>
</html>