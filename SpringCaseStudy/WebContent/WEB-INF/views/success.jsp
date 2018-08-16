<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All data of users</title>
</head>
<body bgcolor="#39fe04">
<h1> List of users </h1>
<table>
<tr>
<th> UserId </th>
<th> Password </th>
<th> DOB </th>
<th> Mobile </th>
</tr>

<c:forEach items="${userList}" var="ab" >
<tr>
	<td>${ab.userName}</td>
	<td>${ab.password}</td>
	<td>${ab.dob}</td>
	<td>${ab.mobile}</td>
	<td><a href="delete/${ab.userName}"> Delete</a></td>
	<td><a href="update/${ab.userName}"> Update</a></td>
</tr>
</c:forEach>
</table>
<h3><a href="addUser"> Ye dil maange more </a></h3>
<h3><a href="display/{id}"> Display detail by ID</a></h3>
<%-- <h2> UserName: ${ab.userName}</h2>
<h2> Password: ${ab.password}</h2>
<h2> DOB : ${ab.dob}</h2>
<h2> Mobile : ${ab.mobile}</h2> --%>
</body>
</html>